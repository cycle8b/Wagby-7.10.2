
    create table "jfcsuspendworkstate$suspendparticipant_group" (
        "id" varchar(255) not null,
        "suspendparticipant_group" integer,
        "suspendparticipant_groupjshid" integer not null,
        primary key ("id", "suspendparticipant_groupjshid")
    );

    create table "jfcsuspendworkstate$suspendparticipant" (
        "id" varchar(255) not null,
        "suspendparticipant" varchar(255),
        "suspendparticipantjshid" integer not null,
        primary key ("id", "suspendparticipantjshid")
    );

    create table "jfcsuspendworkstate" (
        "id" varchar(255) not null,
        "flowid" varchar(255),
        "modelname" varchar(255),
        "showurl" varchar(255),
        "modelpkeyname" varchar(255),
        "modelpkey" varchar(255),
        "createuser" varchar(255) not null,
        primary key ("id")
    );

    alter table "jfcsuspendworkstate$suspendparticipant_group" 
        add constraint FK7C408C3044EFFF67 
        foreign key ("id") 
        references "jfcsuspendworkstate";

    alter table "jfcsuspendworkstate$suspendparticipant" 
        add constraint FK488AF6B044EFFF67 
        foreign key ("id") 
        references "jfcsuspendworkstate";
