
    alter table "jfcmailtemplate$bcc" 
        drop constraint FKCC9870F649DA8C7B;

    alter table "jfcmailtemplate$cc" 
        drop constraint FK171DB12C49DA8C7B;

    alter table "jfcmailtemplate$mheader" 
        drop constraint FK472197EE49DA8C7B;

    alter table "jfcmailtemplate$to" 
        drop constraint FK171DB34749DA8C7B;

    drop table "jfcmailtemplate$bcc" if exists;

    drop table "jfcmailtemplate$cc" if exists;

    drop table "jfcmailtemplate$mheader" if exists;

    drop table "jfcmailtemplate$to" if exists;

    drop table "jfcmailtemplate" if exists;
