
    create table BATCH_STEP_EXECUTION (
        STEP_EXECUTION_ID bigint not null,
        VERSION bigint not null,
        STEP_NAME varchar(255) not null,
        JOB_EXECUTION_ID bigint,
        START_TIME timestamp not null,
        END_TIME timestamp,
        STATUS varchar(255),
        COMMIT_COUNT bigint,
        READ_COUNT bigint,
        FILTER_COUNT bigint,
        WRITE_COUNT bigint,
        READ_SKIP_COUNT bigint,
        WRITE_SKIP_COUNT bigint,
        PROCESS_SKIP_COUNT bigint,
        ROLLBACK_COUNT bigint,
        EXIT_CODE varchar(255),
        EXIT_MESSAGE varchar(255),
        LAST_UPDATED timestamp,
        primary key (STEP_EXECUTION_ID)
    );
