
    create table "jfcgraphsetting$jgroupidjshparam" (
        "id" integer not null,
        "jgroupidjshparam" integer,
        "jgroupidjshparamjshid" integer not null,
        primary key ("id", "jgroupidjshparamjshid")
    );

    create table "jfcgraphsetting" (
        "id" integer not null,
        "screenid" varchar(255),
        "userid" varchar(255),
        "allsetting" varchar(255),
        "plotTypeAxis" CLOB,
        "plotTypeGraph" CLOB,
        "plotTypeColor" CLOB,
        "graphType" varchar(255),
        "theme" varchar(255),
        "chartWidth" integer,
        "chartHeight" integer,
        "pieFontSize" integer,
        "pieLabelLength" integer,
        "graphFontSize" integer,
        "reverseDimension" varchar(255),
        "sortDimension" varchar(255),
        "useridjshparam" varchar(255),
        primary key ("id")
    );

    alter table "jfcgraphsetting$jgroupidjshparam" 
        add constraint FKD65275B9712210A3 
        foreign key ("id") 
        references "jfcgraphsetting";

    alter table "jfcgraphsetting" 
        add constraint jfcuk_jfcgraphsetting_sua unique ("screenid", "userid", "allsetting");
