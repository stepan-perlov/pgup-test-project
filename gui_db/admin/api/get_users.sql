CREATE OR REPLACE FUNCTION admin.get_users(
    OUT o_id    int,
    OUT o_name  text,
    OUT o_group int
) RETURNS setof record AS $$
BEGIN

RETURN query
SELECT
    id,
    name,
    group
FROM admin.users;

END;
$$
LANGUAGE 'plpgsql' VOLATILE SECURITY DEFINER;
