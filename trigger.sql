-- Тригер, який при додаванні нової позиції записує у назву id 

DROP TRIGGER podcast_country ON Podcasts;

CREATE TRIGGER podcast_country 
AFTER INSERT ON Podcasts
FOR EACH ROW EXECUTE FUNCTION podcasts_country()



CREATE OR REPLACE FUNCTION podcasts_country() RETURNS trigger AS
$$
     BEGIN
          UPDATE Podcasts 
          SET pod_name = pod_name || '('  || pod_id || ')' WHERE Podcasts.pod_id = NEW.pod_id; 
		  RETURN NULL; -- result is ignored since this is an AFTER trigger
     END;
$$ LANGUAGE 'plpgsql';

-- INSERT INTO Podcasts(pod_id, pod_name, pod_genre_id, country_id, author_id, pod_viewers_id, pod_rating_id)
-- VALUES('1000000001', 'Ecommerce Conversations', '2000001', '003', '11111', 'vq01', 'rt01');


-- DELETE FROM Podcasts where pod_id = '1000000001';

-- SELECT * FROM Podcasts





