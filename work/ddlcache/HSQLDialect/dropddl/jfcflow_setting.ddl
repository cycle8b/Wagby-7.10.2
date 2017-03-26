
    alter table "jfcflow_setting$layer" 
        drop constraint FK1EE76793A1CDCEBA;

    drop table "jfcflow_setting$layer" if exists;

    drop table "jfcflow_setting" if exists;
