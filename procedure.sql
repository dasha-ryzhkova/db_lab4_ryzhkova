-- Процедура, що виводить подкасти, з обраною країною походження

DROP PROCEDURE pod_rating(f_pod_name VARCHAR(50));

CREATE OR REPLACE PROCEDURE pod_rating(f_country_name VARCHAR(50))
LANGUAGE plpgsql
AS $$ 
DECLARE sel_pod_name Podcasts.pod_name%TYPE;
BEGIN
  SELECT pod_name INTO sel_pod_name FROM Podcasts INNER JOIN Countries using(country_id) WHERE country_name = f_country_name;
  RAISE INFO 'Podcast name: %', TRIM(sel_pod_name);
END;
$$;

--CALL pod_rating('USA');

