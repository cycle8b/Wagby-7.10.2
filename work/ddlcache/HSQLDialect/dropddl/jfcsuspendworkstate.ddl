
    alter table "jfcsuspendworkstate$suspendparticipant_group" 
        drop constraint FK7C408C3044EFFF67;

    alter table "jfcsuspendworkstate$suspendparticipant" 
        drop constraint FK488AF6B044EFFF67;

    drop table "jfcsuspendworkstate$suspendparticipant_group" if exists;

    drop table "jfcsuspendworkstate$suspendparticipant" if exists;

    drop table "jfcsuspendworkstate" if exists;
