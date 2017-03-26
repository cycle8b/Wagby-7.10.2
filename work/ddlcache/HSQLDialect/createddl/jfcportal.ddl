
    create table "jfcportal$usePortal" (
        "id" integer not null,
        "usePortal" integer,
        "usePortaljshid" integer not null,
        primary key ("id", "usePortaljshid")
    );

    create table "jfcportal" (
        "id" integer not null,
        "portalTabName" varchar(255),
        "displayArea" integer not null,
        primary key ("id")
    );

    alter table "jfcportal$usePortal" 
        add constraint FKEAABFF42F8972B37 
        foreign key ("id") 
        references "jfcportal";
