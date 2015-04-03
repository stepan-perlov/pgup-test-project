CREATE OR REPLACE FUNCTION public.get_articles(
    OUT o_id      int,
    OUT o_title   text,
    OUT o_article text
) RETURNS setof record AS $$
BEGIN

RETURN query
SELECT
    id,
    title,
    article
FROM public.articles;

END;
$$
LANGUAGE 'plpgsql' VOLATILE SECURITY DEFINER;