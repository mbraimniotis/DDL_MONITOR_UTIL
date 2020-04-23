create table DDL_MONITOR
(
  date_time         DATE default SYSDATE,
  ddl_event         VARCHAR2(2000),
  current_schema    VARCHAR2(256) default SYS_CONTEXT('USERENV','CURRENT_SCHEMA'),
  current_sql       VARCHAR2(256) default SYS_CONTEXT('USERENV','CURRENT_SQL'),
  current_user      VARCHAR2(256) default SYS_CONTEXT('USERENV','CURRENT_USER'),
  session_user      VARCHAR2(256) default SYS_CONTEXT('USERENV','SESSION_USER'),
  module            VARCHAR2(256) default SYS_CONTEXT('USERENV','MODULE'),
  action            VARCHAR2(256) default SYS_CONTEXT('USERENV','ACTION'),
  client_identifier VARCHAR2(256) default SYS_CONTEXT('USERENV','CLIENT_IDENTIFIER'),
  sid               VARCHAR2(256) default SYS_CONTEXT('USERENV','SID'),
  host              VARCHAR2(256) default SYS_CONTEXT('USERENV','HOST'),
  ip_address        VARCHAR2(256) default SYS_CONTEXT('USERENV','IP_ADDRESS'),
  os_user           VARCHAR2(256) default SYS_CONTEXT('USERENV','OS_USER'),
  server_host       VARCHAR2(256) default SYS_CONTEXT('USERENV','SERVER_HOST')
)