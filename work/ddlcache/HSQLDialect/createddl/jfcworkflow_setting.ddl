
    create table "jfcworkflow_setting$endbutton_setting" (
        "id" integer not null,
        "endbutton_settingjshid" integer not null,
        "esbeginnode" integer,
        "escondition" VARCHAR(4000),
        primary key ("id", "endbutton_settingjshid")
    );

    create table "jfcworkflow_setting$eventScript_setting$esstype" (
        "id" integer not null,
        "eventScript_settingjshid" integer not null,
        "esstype" integer,
        "esstypejshid" integer not null,
        primary key ("id", "eventScript_settingjshid", "esstypejshid")
    );

    create table "jfcworkflow_setting$eventScript_setting" (
        "id" integer not null,
        "eventScript_settingjshid" integer not null,
        "essnode_id" integer,
        "essnode_participantsjshid" integer,
        "eventScript" CLOB,
        primary key ("id", "eventScript_settingjshid")
    );

    create table "jfcworkflow_setting$mail_setting$mstype" (
        "id" integer not null,
        "mail_settingjshid" integer not null,
        "mstype" integer,
        "mstypejshid" integer not null,
        primary key ("id", "mail_settingjshid", "mstypejshid")
    );

    create table "jfcworkflow_setting$mail_setting" (
        "id" integer not null,
        "mail_settingjshid" integer not null,
        "mnode_id" integer,
        "mnode_participantsjshid" integer,
        "mail_template" varchar(255),
        primary key ("id", "mail_settingjshid")
    );

    create table "jfcworkflow_setting$participants_cont" (
        "id" integer not null,
        "participants_contjshid" integer not null,
        primary key ("id", "participants_contjshid")
    );

    create table "jfcworkflow_setting$script_setting" (
        "id" integer not null,
        "script_settingjshid" integer not null,
        "beginnode" integer not null,
        "condition" VARCHAR(4000),
        "endnode" integer not null,
        primary key ("id", "script_settingjshid")
    );

    create table "jfcworkflow_setting" (
        "id" integer not null,
        "modelname" varchar(255) not null,
        "participants" integer not null,
        "remandType" integer,
        "selectableCode" VARCHAR(4000),
        primary key ("id")
    );

    alter table "jfcworkflow_setting$endbutton_setting" 
        add constraint FK6B477EF1D2E820D8 
        foreign key ("id") 
        references "jfcworkflow_setting";

    alter table "jfcworkflow_setting$eventScript_setting$esstype" 
        add constraint FK92DEE704E473069D 
        foreign key ("id", "eventScript_settingjshid") 
        references "jfcworkflow_setting$eventScript_setting";

    alter table "jfcworkflow_setting$eventScript_setting" 
        add constraint FKAFE74269D2E820D8 
        foreign key ("id") 
        references "jfcworkflow_setting";

    alter table "jfcworkflow_setting$mail_setting$mstype" 
        add constraint FK7DB6588FA524EC33 
        foreign key ("id", "mail_settingjshid") 
        references "jfcworkflow_setting$mail_setting";

    alter table "jfcworkflow_setting$mail_setting" 
        add constraint FK12862CD5D2E820D8 
        foreign key ("id") 
        references "jfcworkflow_setting";

    alter table "jfcworkflow_setting$participants_cont" 
        add constraint FKF19BBB84D2E820D8 
        foreign key ("id") 
        references "jfcworkflow_setting";

    alter table "jfcworkflow_setting$script_setting" 
        add constraint FK487494A9D2E820D8 
        foreign key ("id") 
        references "jfcworkflow_setting";
