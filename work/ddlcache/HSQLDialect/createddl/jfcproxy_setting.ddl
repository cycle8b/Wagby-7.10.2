
    create table "jfcproxy_setting$jgroupidjshparam" (
        "id" integer not null,
        "jgroupidjshparam" integer,
        "jgroupidjshparamjshid" integer not null,
        primary key ("id", "jgroupidjshparamjshid")
    );

    create table "jfcproxy_setting" (
        "id" integer not null,
        "modelname" varchar(255),
        "userid" varchar(255) not null,
        "proxy_userid" varchar(255),
        "proxy_groupid" integer,
        "createuser" varchar(255),
        "useridjshparam" varchar(255),
        primary key ("id")
    );

    alter table "jfcproxy_setting$jgroupidjshparam" 
        add constraint FK202520CAE73E92A 
        foreign key ("id") 
        references "jfcproxy_setting";
