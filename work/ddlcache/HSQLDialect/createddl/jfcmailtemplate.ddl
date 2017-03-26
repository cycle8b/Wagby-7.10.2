
    create table "jfcmailtemplate$bcc" (
        "templateid" varchar(255) not null,
        "bccaddress" varchar(255),
        "bccaddressjshid" integer not null,
        primary key ("templateid", "bccaddressjshid")
    );

    create table "jfcmailtemplate$cc" (
        "templateid" varchar(255) not null,
        "ccaddress" varchar(255),
        "ccaddressjshid" integer not null,
        primary key ("templateid", "ccaddressjshid")
    );

    create table "jfcmailtemplate$mheader" (
        "templateid" varchar(255) not null,
        "mheaderjshid" integer not null,
        "name" varchar(255),
        "value" varchar(255),
        primary key ("templateid", "mheaderjshid")
    );

    create table "jfcmailtemplate$to" (
        "templateid" varchar(255) not null,
        "toaddress" varchar(255) not null,
        "toaddressjshid" integer not null,
        primary key ("templateid", "toaddressjshid")
    );

    create table "jfcmailtemplate" (
        "templateid" varchar(255) not null,
        "createtype" integer not null,
        "targetmodel" varchar(255),
        "description" varchar(255) not null,
        "mailhost" varchar(255),
        "protocol" integer,
        "auth" integer,
        "auth_user" varchar(255),
        "auth_password" varchar(255),
        "popauth_mailhost" varchar(255),
        "popauth_protocol" integer,
        "popauth_useapop" integer,
        "popauth_auth_user" varchar(255),
        "popauth_auth_password" varchar(255),
        "subject" varchar(255) not null,
        "fromaddress" varchar(255) not null,
        "individualSend" integer,
        "attachment" varchar(255),
        "attachment_max_size" integer,
        "mailtype" integer,
        "body" VARCHAR(4000),
        "htmlbodyrich" VARCHAR(4000),
        "htmlbodyplain" VARCHAR(4000),
        "emlfile" varchar(255),
        "emlfile_jshfilename" varchar(255),
        primary key ("templateid")
    );

    alter table "jfcmailtemplate$bcc" 
        add constraint FKCC9870F649DA8C7B 
        foreign key ("templateid") 
        references "jfcmailtemplate";

    alter table "jfcmailtemplate$cc" 
        add constraint FK171DB12C49DA8C7B 
        foreign key ("templateid") 
        references "jfcmailtemplate";

    alter table "jfcmailtemplate$mheader" 
        add constraint FK472197EE49DA8C7B 
        foreign key ("templateid") 
        references "jfcmailtemplate";

    alter table "jfcmailtemplate$to" 
        add constraint FK171DB34749DA8C7B 
        foreign key ("templateid") 
        references "jfcmailtemplate";
