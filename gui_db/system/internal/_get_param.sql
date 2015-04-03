CREATE OR REPLACE FUNCTION system._get_param(
    IN i_key text,
    OUT o_value text
) AS $$
BEGIN

SELECT value
INTO o_value
    FROM system.settings
    WHERE key = i_key;

END;
$$
LANGUAGE 'plpgsql' VOLATILE SECURITY DEFINER;