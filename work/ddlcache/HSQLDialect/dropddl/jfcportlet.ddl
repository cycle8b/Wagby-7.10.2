
    alter table "jfcportlet$portletDisplayFlag" 
        drop constraint FK972507C51DD413CD;

    alter table "jfcportlet$portletParameter" 
        drop constraint FKCEDA11E01DD413CD;

    drop table "jfcportlet$portletDisplayFlag" if exists;

    drop table "jfcportlet$portletParameter" if exists;

    drop table "jfcportlet" if exists;
