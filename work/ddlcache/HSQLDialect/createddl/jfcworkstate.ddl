
    create table "jfcworkstate" (
        "id" integer not null,
        "flowid" integer,
        "modelname" varchar(255),
        "modelpkey" varchar(255),
        "participant" varchar(255),
        "username" varchar(255),
        "participantid" varchar(255),
        "processed_layerid" varchar(255),
        "wait_layerid" varchar(255),
        "event" varchar(255),
        "comment2" VARCHAR(4000),
        "insert_date" timestamp,
        "update_date" timestamp,
        primary key ("id")
    );
