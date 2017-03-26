
    create table "jfcmodel" (
        "name_en" varchar(255) not null,
        "name_jp" varchar(255),
        "kind" integer,
        "createtype" integer,
        "use_workflow" integer,
        "size2" integer,
        primary key ("name_en")
    );
