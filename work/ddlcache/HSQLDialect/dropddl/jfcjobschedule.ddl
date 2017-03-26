
    alter table "jfcjobschedule$enable" 
        drop constraint FKE1D2D1BAD6E90B0D;

    alter table "jfcjobschedule$jobparam" 
        drop constraint FKF726C567D6E90B0D;

    drop table "jfcjobschedule$enable" if exists;

    drop table "jfcjobschedule$jobparam" if exists;

    drop table "jfcjobschedule" if exists;
