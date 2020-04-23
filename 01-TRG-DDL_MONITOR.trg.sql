CREATE OR REPLACE TRIGGER system.ddl_monitor AFTER CREATE OR DROP OR TRUNCATE OR ALTER ON database
declare
BEGIN
if ora_dict_obj_owner = 'FCC' and ora_dict_obj_type not in ('SEQUENCE')
then
insert into fcc.ddl_monitor("DDL_EVENT") values ('Username: (' || ora_login_user || ') ' || 'Action: (' || ora_sysevent || ')   ' ||
'Object: (' || ora_dict_obj_owner||'.'||ora_dict_obj_name || ') ' || 'Type: (' || ora_dict_obj_type || ')' );
end if;
EXCEPTION WHEN OTHERS THEN NULL;
END;
/