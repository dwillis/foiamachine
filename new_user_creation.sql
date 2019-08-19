
INSERT INTO `foiamachine`.`auth_user`(`username`, `first_name`, `last_name`, `email`, 
`password`, `is_staff`, `is_active`, `is_superuser`, `last_login`, `date_joined`) 
VALUES (
'USERNAME', 
'FIRST', 
'LAST', 
'EMAIL', 
'passwordtemp', 
1, 1, 1, 
NOW(), 
NOW());

SET @userid = (SELECT id from auth_user order by date_joined DESC limit 1);

INSERT INTO `foiamachine`.`users_userprofile`(`user_id`, `mailing_address`, 
`mailing_city`, `mailing_state`, `mailing_zip`, `phone`, `private_by_default`, 
`is_pro`, `is_verified`, `timezone`, `requests_per_week`, `default_request_creator_free`) 
VALUES (@userid, 
'Streetxxx', 
'Cityxxx', 
'Statexx', 
'zipxxx', 
'(202) xxx-xxxx' 
, 1, 1, 1, 'America/New_York', 1000, 1);

