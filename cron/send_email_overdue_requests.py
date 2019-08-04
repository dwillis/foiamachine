#!/usr/bin/env python2

import mysql.connector
import re
import requests
import datetime
from foiamachine.settings import common

from mysql.connector import Error
from bs4 import BeautifulSoup

key = common.MAILGUN_KEY
domain = common.MG_DOMAIN
db_host = common.DB_HOST
db_db = common.DB_NAME
db_user = common.DB_USER
db_password = common.DB_PASSWD

try:
    connection = mysql.connector.connect(host=db_host,
                                         database=db_db,
                                         user=db_user,
                                         password=db_password)
    if connection.is_connected():

        cursor = connection.cursor(prepared=True)
        sql_select_query = """select distinct a.email from requests_request as r inner join auth_user as a on r.author_id = a.id inner join agency_agency as aa on aa.id=r.agency_id where due_date < now() and r.status='S'"""

        cursor.execute(sql_select_query)
        record = cursor.fetchall()
        for row in record:
            email = str(row[0])

            cursor = connection.cursor(prepared=True)
            sql_select_query = "select  r.id as request_id, r.title, aa.name, r.text, r.date_added, r.due_date, a.email from requests_request as r inner join auth_user as a on r.author_id = a.id inner join agency_agency as aa on aa.id=r.agency_id where due_date < now() and r.status='S' and a.email = '" + \
                email + "'"

            cursor.execute(sql_select_query)
            record = cursor.fetchall()

            email_body = "<html></body><h2>Here is a list of your overdue FOI requests:</h2>"

            for row in record:
                request_id = str(row[0])
                title = str(row[1])
                agency_name = str(row[2])
                text = str(row[3])
                date_added = row[4]
                due_date = row[5]
                email = str(row[6])

                # Make synopsis
                text = re.sub(
                    r'^.*I hereby request the following records:<\/p><p><\/p><p>', '', text)
                text = re.sub(r'<\/p><p><\/p><p>.*', '', text)
                soup = BeautifulSoup(text, 'html5lib')
                text = soup.get_text(separator="\n")
                text = text.split()[:40]
                text = ' '.join(text)
                text = text + "..."

                # Calculate date diff
                d1 = due_date.strftime("%Y-%m-%d")
                d2 = datetime.datetime.today().strftime('%Y-%m-%d')
                d1 = datetime.datetime.strptime(d1, '%Y-%m-%d')
                d2 = datetime.datetime.strptime(d2, '%Y-%m-%d')
                diff = (d2 - d1).total_seconds() / 60
                diff = abs((d2 - d1).days)

                # URL for request
                request_url = "https://" + domain + "/requests/" + request_id + "/"

                email_body = email_body + "<h3 style='margin-bottom: 0px'>" + title + "</h3><b>" + agency_name + ", due " + due_date.strftime(
                    '%m/%d/%Y') + " (" + str(diff) + "  days ago)</b><br><i>" + text + "</i><br><a href='" + request_url + "'>Go to request</a><br><br>"

                # Finish email
            email_body = email_body + "<br><br>Sincerely,<br>FOIA Machine</br></body></html>"
            from_address = 'alerts@' + domain
            mg_url = 'https://api.mailgun.net/v3/' + domain + '/messages'

            url = mg_url
            auth = ('api', key)
            data = {
                'from': from_address,
                'to': email,
                'subject': 'Overdue FOIA reminders',
                'html': email_body,
            }
            response = requests.post(url, auth=auth, data=data)
            response.raise_for_status()


except Error as e:
    print ("Error while connecting to MySQL", e)
finally:
    # closing database connection.
    if(connection.is_connected()):
        cursor.close()
        connection.close()
