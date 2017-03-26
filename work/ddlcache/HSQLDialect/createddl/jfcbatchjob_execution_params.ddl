
    create table BATCH_JOB_EXECUTION_PARAMS (
        JOB_EXECUTION_ID bigint not null,
        TYPE_CD varchar(255) not null,
        KEY_NAME varchar(255) not null,
        STRING_VAL varchar(255),
        DATE_VAL timestamp,
        LONG_VAL bigint,
        DOUBLE_VAL double,
        IDENTIFYING varchar(255) not null,
        primary key (JOB_EXECUTION_ID)
    );
