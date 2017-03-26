
    create table "jfcprtcpnt_sttng$participants" (
        "id" integer not null,
        "participantsjshid" integer not null,
        "layer_id" varchar(255),
        "node_type" varchar(255),
        "node_name" varchar(255),
        "participant_name" varchar(255),
        "participant_groupid" integer,
        "participant_script" CLOB,
        primary key ("id", "participantsjshid")
    );

    create table "jfcprtcpnt_sttng" (
        "id" integer not null,
        "name" varchar(255) not null,
        "description" varchar(255),
        "flow_name" integer not null,
        primary key ("id")
    );

    alter table "jfcprtcpnt_sttng$participants" 
        add constraint FKF4859BD96575714A 
        foreign key ("id") 
        references "jfcprtcpnt_sttng";
