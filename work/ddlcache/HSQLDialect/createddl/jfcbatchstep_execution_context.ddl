
    create table BATCH_STEP_EXECUTION_CONTEXT (
        STEP_EXECUTION_ID bigint not null,
        SHORT_CONTEXT varchar(255),
        SERIALIZED_CONTEXT varchar(255),
        primary key (STEP_EXECUTION_ID)
    );
