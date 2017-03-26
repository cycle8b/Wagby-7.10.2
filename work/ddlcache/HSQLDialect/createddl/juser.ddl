
    create table "juser$jgroupid" (
        "userid" varchar(255) not null,
        "jgroupid" integer,
        "jgroupidjshid" integer not null,
        primary key ("userid", "jgroupidjshid")
    );

    create table "juser$jprincipal_id" (
        "userid" varchar(255) not null,
        "jprincipal_id" integer,
        "cid" integer not null,
        primary key ("userid", "cid")
    );

    create table "juser$old_passwds" (
        "userid" varchar(255) not null,
        "old_passwds" varchar(255),
        "cid" integer not null,
        primary key ("userid", "cid")
    );

    create table "juser$preference_item" (
        "userid" varchar(255) not null,
        "key2" varchar(255),
        "content" varchar(255),
        "cid" integer not null,
        primary key ("userid", "cid")
    );

    create table "juser$rule" (
        "userid" varchar(255) not null,
        "rulejshid" integer not null,
        "ipaddress" varchar(255) not null,
        primary key ("userid", "rulejshid")
    );

    create table "juser" (
        "userid" varchar(255) not null,
        "passwd" varchar(255),
        "name" varchar(255),
        "valid" varchar(255),
        "level2" integer,
        "passwd_change_date" timestamp,
        "passwd_change_flag" varchar(255),
        "passwd_err_count" integer,
        "lastLogonDate" timestamp,
        primary key ("userid")
    );

    alter table "juser$jgroupid" 
        add constraint FK71CD34BF2EE4ECB9 
        foreign key ("userid") 
        references "juser";

    alter table "juser$jprincipal_id" 
        add constraint FKF97C5D072EE4ECB9 
        foreign key ("userid") 
        references "juser";

    alter table "juser$old_passwds" 
        add constraint FK29A0A08E2EE4ECB9 
        foreign key ("userid") 
        references "juser";

    alter table "juser$preference_item" 
        add constraint FK884718882EE4ECB9 
        foreign key ("userid") 
        references "juser";

    alter table "juser$rule" 
        add constraint FK3765770B2EE4ECB9 
        foreign key ("userid") 
        references "juser";
