
    create table BATCH_JOB_INSTANCE (
        JOB_INSTANCE_ID bigint not null,
        VERSION bigint,
        JOB_NAME varchar(255) not null,
        JOB_KEY varchar(255) not null,
        primary key (JOB_INSTANCE_ID)
    );
