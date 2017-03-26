
    create table "jholiday" (
        "id" integer not null,
        "hdate" date not null,
        "name" varchar(255) not null,
        "type" integer,
        "note" varchar(255),
        primary key ("id")
    );
