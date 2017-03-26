
    alter table "jprincipal$jpermission_id" 
        drop constraint FK18E16301F3070020;

    drop table "jprincipal$jpermission_id" if exists;

    drop table "jprincipal" if exists;
