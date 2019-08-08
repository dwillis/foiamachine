
from django.http import HttpResponse
from apps.users.models import UserProfile

def index(request):
    return HttpResponse("Attachment search coming soon.")

def get_groups_and_usergroups(user):
    '''
    Return a list of groups a user can share a request with
    Each user has their own group that is the same as their username
    We want a request to be shared with any other user
    Or shared with any groups the user creates
    '''

    groups = Group.objects.all()
    users = User.objects.all()
    results = list()
    for group in groups:
        for usr in users:
            if usr.username == group.name and usr.username != 'AnonymousUser':
                results.append(group)
    return list(chain(user.groups.all(), results))
    
def show_pubprivate_form(wizard):
    try:
        up = UserProfile.objects.get(user=wizard.request.user)
        return up.is_pro
    except Exception as e:
        logger.exception(e)
    #public by default!
    return False
    
