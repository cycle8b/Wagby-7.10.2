
    create table BATCH_JOB_EXECUTION_CONTEXT (
        JOB_EXECUTION_ID bigint not null,
        SHORT_CONTEXT varchar(255) not null,
        SERIALIZED_CONTEXT varchar(255),
        primary key (JOB_EXECUTION_ID)
    );
