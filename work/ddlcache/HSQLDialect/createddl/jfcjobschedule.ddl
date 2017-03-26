
    create table "jfcjobschedule$enable" (
        "id" integer not null,
        "enable" integer,
        "enablejshid" integer not null,
        primary key ("id", "enablejshid")
    );

    create table "jfcjobschedule$jobparam" (
        "id" integer not null,
        "jobparamjshid" integer not null,
        "key2" varchar(255),
        "value" varchar(255),
        primary key ("id", "jobparamjshid")
    );

    create table "jfcjobschedule" (
        "id" integer not null,
        "jobname" varchar(255),
        "description" VARCHAR(4000),
        "second" varchar(255),
        "minute" varchar(255),
        "hour" varchar(255),
        "dayOfMonth" varchar(255),
        "month" varchar(255),
        "dayOfWeek" varchar(255),
        "year" varchar(255),
        "jusername" varchar(255) not null,
        primary key ("id")
    );

    alter table "jfcjobschedule$enable" 
        add constraint FKE1D2D1BAD6E90B0D 
        foreign key ("id") 
        references "jfcjobschedule";

    alter table "jfcjobschedule$jobparam" 
        add constraint FKF726C567D6E90B0D 
        foreign key ("id") 
        references "jfcjobschedule";
