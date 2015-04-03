CREATE OR REPLACE FUNCTION data2.pu_insert_object2(
    IN i_fld1 text,
    IN i_fld2 text
) RETURNS void AS $$
BEGIN

INSERT INTO data2.object2(fld1, fld2)
    VALUES (i_fld1, i_fld2);

END;
$$
LANGUAGE 'plpgsql' VOLATILE SECURITY DEFINER;