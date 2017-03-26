
    create table "jprincipal$jpermission_id" (
        "id" integer not null,
        "jpermission_id" integer,
        "cid" integer not null,
        primary key ("id", "cid")
    );

    create table "jprincipal" (
        "id" integer not null,
        "priority" integer,
        "valid" varchar(255),
        "name" varchar(255),
        "content" varchar(255),
        primary key ("id")
    );

    alter table "jprincipal$jpermission_id" 
        add constraint FK18E16301F3070020 
        foreign key ("id") 
        references "jprincipal";
