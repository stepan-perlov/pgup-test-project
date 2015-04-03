CREATE OR REPLACE FUNCTION data1.pu_insert_object1(
    IN i_fld1 int,
    IN i_fld2 bigint
) RETURNS void AS $$
BEGIN

INSERT INTO data1.object1(fld1, fld2)
    VALUES (i_fld1, i_fld2);

END;
$$
LANGUAGE 'plpgsql' VOLATILE SECURITY DEFINER;