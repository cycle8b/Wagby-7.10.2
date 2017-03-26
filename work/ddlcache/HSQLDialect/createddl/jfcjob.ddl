
    create table "jfcjob" (
        "name" varchar(255) not null,
        "memo" varchar(255),
        "classname" varchar(255),
        "description" VARCHAR(4000),
        "level2" integer,
        "valid" varchar(255),
        primary key ("name")
    );
