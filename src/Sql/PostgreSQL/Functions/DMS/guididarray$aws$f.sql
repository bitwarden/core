CREATE OR REPLACE FUNCTION vault_dbo."guididarray$aws$f"(variable_name character varying)
 RETURNS void
 LANGUAGE plpgsql
AS $function$
BEGIN
    EXECUTE 'DROP TABLE IF EXISTS ' || variable_name;
    EXECUTE 'CREATE TEMPORARY TABLE ' || variable_name || ' of vault_dbo.guididarray$aws$t WITH OIDS;';
END;
$function$
;