
    alter table "jfcportal$usePortal" 
        drop constraint FKEAABFF42F8972B37;

    drop table "jfcportal$usePortal" if exists;

    drop table "jfcportal" if exists;
