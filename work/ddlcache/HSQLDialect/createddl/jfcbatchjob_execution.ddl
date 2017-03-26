
    create table BATCH_JOB_EXECUTION (
        JOB_EXECUTION_ID bigint not null,
        VERSION bigint,
        JOB_INSTANCE_ID bigint not null,
        CREATE_TIME timestamp not null,
        START_TIME timestamp,
        END_TIME timestamp,
        STATUS varchar(255),
        EXIT_CODE varchar(255),
        EXIT_MESSAGE varchar(255),
        LAST_UPDATED timestamp,
        primary key (JOB_EXECUTION_ID)
    );
