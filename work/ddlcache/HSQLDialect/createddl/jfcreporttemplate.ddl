
    create table "jfcreporttemplate$container" (
        "templateid" varchar(255) not null,
        "containerjshid" integer not null,
        "ctemplatefile" varchar(255),
        "ctemplatefile_jshfilename" varchar(255),
        primary key ("templateid", "containerjshid")
    );

    create table "jfcreporttemplate" (
        "templateid" varchar(255) not null,
        "targetmodel" varchar(255),
        "createtype" integer not null,
        "description" varchar(255),
        "templatefile" varchar(255),
        "templatefile_jshfilename" varchar(255),
        "dispositiontype" integer,
        "sheetname" varchar(255),
        "outputfilename" varchar(255),
        "outputfilename4batch" varchar(255),
        "outputfolder" varchar(255),
        primary key ("templateid")
    );

    alter table "jfcreporttemplate$container" 
        add constraint FK2330F6B2423CB435 
        foreign key ("templateid") 
        references "jfcreporttemplate";
