
    alter table "juser$jgroupid" 
        drop constraint FK71CD34BF2EE4ECB9;

    alter table "juser$jprincipal_id" 
        drop constraint FKF97C5D072EE4ECB9;

    alter table "juser$old_passwds" 
        drop constraint FK29A0A08E2EE4ECB9;

    alter table "juser$preference_item" 
        drop constraint FK884718882EE4ECB9;

    alter table "juser$rule" 
        drop constraint FK3765770B2EE4ECB9;

    drop table "juser$jgroupid" if exists;

    drop table "juser$jprincipal_id" if exists;

    drop table "juser$old_passwds" if exists;

    drop table "juser$preference_item" if exists;

    drop table "juser$rule" if exists;

    drop table "juser" if exists;
