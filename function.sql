-- Функція, що видаляє всі подкастиБ країною походження яких є 'USA'

CREATE OR REPLACE FUNCTION clean() RETURNS void
LANGUAGE plpgsql
AS $$
BEGIN 
   DELETE FROM Podcasts 
   WHERE Podcasts.pod_id IN 
      (SELECT Podcasts.pod_id from Podcasts left join Countries using(country_id) where Countries.country_id = '003');
END;
$$; 

-- SELECT clean();

-- select * from Podcasts;

-- INSERT INTO Podcasts(pod_id, pod_name, pod_genre_id, country_id, author_id, pod_viewers_id, pod_rating_id)
-- VALUES('1000000001', 'Ecommerce Conversations', '2000001', '003', '11111', 'vq01', 'rt01'),
-- 	  ('1000000004', 'Sermons from Living Water Dayton', '2000004', '003', '11114', 'vq04', 'rt04'),
-- 	  ('1000000007', 'Open Roll with Jurgen Rudolph', '2000007', '003', '11117', 'vq07', 'rt07'),
-- 	  ('1000000010', 'Drum and Bass Electronic Trap Dubstep Music', '2000010', '003', '11110', 'vq10', 'r10');
