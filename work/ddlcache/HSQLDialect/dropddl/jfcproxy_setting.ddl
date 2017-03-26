
    alter table "jfcproxy_setting$jgroupidjshparam" 
        drop constraint FK202520CAE73E92A;

    drop table "jfcproxy_setting$jgroupidjshparam" if exists;

    drop table "jfcproxy_setting" if exists;
