
    create table "jnews" (
        "jnewsid" integer not null,
        "jnewsdate" date,
        "limitdate" date not null,
        "title" varchar(255) not null,
        "report" VARCHAR(4000),
        "createuser" varchar(255),
        primary key ("jnewsid")
    );
