
    alter table "jfcworkflow_setting$endbutton_setting" 
        drop constraint FK6B477EF1D2E820D8;

    alter table "jfcworkflow_setting$eventScript_setting$esstype" 
        drop constraint FK92DEE704E473069D;

    alter table "jfcworkflow_setting$eventScript_setting" 
        drop constraint FKAFE74269D2E820D8;

    alter table "jfcworkflow_setting$mail_setting$mstype" 
        drop constraint FK7DB6588FA524EC33;

    alter table "jfcworkflow_setting$mail_setting" 
        drop constraint FK12862CD5D2E820D8;

    alter table "jfcworkflow_setting$participants_cont" 
        drop constraint FKF19BBB84D2E820D8;

    alter table "jfcworkflow_setting$script_setting" 
        drop constraint FK487494A9D2E820D8;

    drop table "jfcworkflow_setting$endbutton_setting" if exists;

    drop table "jfcworkflow_setting$eventScript_setting$esstype" if exists;

    drop table "jfcworkflow_setting$eventScript_setting" if exists;

    drop table "jfcworkflow_setting$mail_setting$mstype" if exists;

    drop table "jfcworkflow_setting$mail_setting" if exists;

    drop table "jfcworkflow_setting$participants_cont" if exists;

    drop table "jfcworkflow_setting$script_setting" if exists;

    drop table "jfcworkflow_setting" if exists;
