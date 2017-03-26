
    create table "jfcflow_setting$layer" (
        "id" integer not null,
        "layerjshid" integer not null,
        "node_type" integer,
        "approval_num" integer,
        "node_name" varchar(255) not null,
        primary key ("id", "layerjshid")
    );

    create table "jfcflow_setting" (
        "id" integer not null,
        "name" varchar(255) not null,
        "description" varchar(255),
        primary key ("id")
    );

    alter table "jfcflow_setting$layer" 
        add constraint FK1EE76793A1CDCEBA 
        foreign key ("id") 
        references "jfcflow_setting";
