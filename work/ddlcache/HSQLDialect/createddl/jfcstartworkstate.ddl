
    create table "jfcstartworkstate$suspendparticipant_group" (
        "id" integer not null,
        "suspendparticipant_group" integer,
        "suspendparticipant_groupjshid" integer not null,
        primary key ("id", "suspendparticipant_groupjshid")
    );

    create table "jfcstartworkstate$suspendparticipant" (
        "id" integer not null,
        "suspendparticipant" varchar(255),
        "suspendparticipantjshid" integer not null,
        primary key ("id", "suspendparticipantjshid")
    );

    create table "jfcstartworkstate" (
        "id" integer not null,
        "flowid" varchar(255),
        "modelname" varchar(255),
        "showurl" varchar(255),
        "modelpkeyname" varchar(255),
        "modelpkey" varchar(255),
        "createuser" varchar(255) not null,
        primary key ("id")
    );

    alter table "jfcstartworkstate$suspendparticipant_group" 
        add constraint FKD3062116EEF2E2DB 
        foreign key ("id") 
        references "jfcstartworkstate";

    alter table "jfcstartworkstate$suspendparticipant" 
        add constraint FK34C3B016EEF2E2DB 
        foreign key ("id") 
        references "jfcstartworkstate";
