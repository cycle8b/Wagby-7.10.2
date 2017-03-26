
    create table "jfcportlet$portletDisplayFlag" (
        "id" integer not null,
        "portletDisplayFlag" integer,
        "portletDisplayFlagjshid" integer not null,
        primary key ("id", "portletDisplayFlagjshid")
    );

    create table "jfcportlet$portletParameter" (
        "id" integer not null,
        "portletParameterjshid" integer not null,
        "pparamName" varchar(255),
        "pvalue" varchar(255),
        primary key ("id", "portletParameterjshid")
    );

    create table "jfcportlet" (
        "id" integer not null,
        "portletId" varchar(255) not null,
        "portletContentType" integer,
        "portletTitle" varchar(255),
        "portletHeight" integer not null,
        "portletWidth" integer not null,
        "portletDisplayOrder" integer,
        "portletDisplayArea" integer not null,
        "graphType" varchar(255),
        "graphColor" varchar(255),
        "totalViewNum" integer,
        "graphXAxisUnit" varchar(255),
        "graphYAxisUnit" varchar(255),
        "portletReferenceModelType" integer,
        "portletReferenceModel" varchar(255),
        "portletContent" CLOB,
        "portletScript" CLOB,
        primary key ("id")
    );

    alter table "jfcportlet$portletDisplayFlag" 
        add constraint FK972507C51DD413CD 
        foreign key ("id") 
        references "jfcportlet";

    alter table "jfcportlet$portletParameter" 
        add constraint FKCEDA11E01DD413CD 
        foreign key ("id") 
        references "jfcportlet";

    alter table "jfcportlet" 
        add constraint jfcuk_jfcportlet_portletid unique ("portletId");
