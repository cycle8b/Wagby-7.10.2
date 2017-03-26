
    alter table "jfcstartworkstate$suspendparticipant_group" 
        drop constraint FKD3062116EEF2E2DB;

    alter table "jfcstartworkstate$suspendparticipant" 
        drop constraint FK34C3B016EEF2E2DB;

    drop table "jfcstartworkstate$suspendparticipant_group" if exists;

    drop table "jfcstartworkstate$suspendparticipant" if exists;

    drop table "jfcstartworkstate" if exists;
