
    alter table "jfcprtcpnt_sttng$participants" 
        drop constraint FKF4859BD96575714A;

    drop table "jfcprtcpnt_sttng$participants" if exists;

    drop table "jfcprtcpnt_sttng" if exists;
