
    create table "jfcprtcpnt_sttng$participants" (
        "id" integer not null,
        "participantsjshid" integer not null,
        "layer_id" varchar(255),
        "node_type" varchar(255),
        "node_name" varchar(255),
        primary key ("id", "participantsjshid")
    );
