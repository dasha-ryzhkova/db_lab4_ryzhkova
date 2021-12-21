-- Populate Genres table

INSERT INTO Genres(genre_id, genre_name) 
VALUES('2000000001', 'Technology'),
      ('2000000002', 'Business'),
	  ('2000000003', 'Management'),
	  ('2000000004', 'Politics'),
	  ('2000000005', 'Health'),
	  ('2000000006', 'Music'),
	  ('2000000007', 'Arts'),
	  ('2000000008', 'Comedy');

-- Populate Countries table

INSERT INTO Countries(country_id, country_name)
VALUES('001', 'United Kingdom'),
      ('002', 'Canada'),
	  ('003', 'USA'),
	  ('004', 'Denmark'),
	  ('005', 'Germany'),
	  ('006', 'France'),
	  ('007', 'Sweden'),
	  ('008', 'Spain'),
	  ('009', 'Netherlands');


-- Populate Authors table

INSERT INTO Authors(author_id, author_name)
VALUES('11111', 'Practical Ecommerce'),
      ('11112', 'Telerik'),
	  ('11113', 'Randy Andrews'),
	  ('11114', 'Brian Fanzo'),
	  ('11115', 'Daniel Newman'),
	  ('11116', 'Leo Laporte'),
	  ('11117', 'Ross Morrone'),
	  ('11118', 'Johnathan Mosen'),
	  ('11119', 'Dan Kendall'),
	  ('11110', 'George Jones'),
	  ('11121', 'Greg Ferro');
	  
-- Populate Quantity table

INSERT INTO Quantity(pod_viewers_id, pod_id, viewers_quantity, date_quantity)
VALUES('vq01', '1000000001', '1188', to_date('2017-12-30', 'yyyy-mm-dd')),
	  ('vq02', '1000000002', '1154', to_date('2017-12-30', 'yyyy-mm-dd')),
	  ('vq03', '1000000003', '12303', to_date('2017-12-30', 'yyyy-mm-dd')),
	  ('vq04', '1000000004', '1335', to_date('2017-12-30', 'yyyy-mm-dd')),
	  ('vq05', '1000000005', '44', to_date('2017-12-30', 'yyyy-mm-dd')),
	  ('vq06', '1000000006', '3434', to_date('2017-12-30', 'yyyy-mm-dd')),
	  ('vq07', '1000000007', '1050', to_date('2017-12-30', 'yyyy-mm-dd')),
	  ('vq08', '1000000008', '1131', to_date('2017-12-30', 'yyyy-mm-dd')),
	  ('vq09', '1000000009', '10105', to_date('2017-12-30', 'yyyy-mm-dd')),
	  ('vq10', '1000000010', '268', to_date('2017-12-30', 'yyyy-mm-dd')),
	  ('vq11', '1000000011', '1050', to_date('2017-12-30', 'yyyy-mm-dd'));
	  
-- Populate Rating table

INSERT INTO Rating(pod_rating_id, pod_id, rating, date_rating)
VALUES('rt01', '1000000001', '4.46133', to_date('2017-12-30', 'yyyy-mm-dd')),
	  ('rt02', '1000000002', '4.69982', to_date('2017-12-30', 'yyyy-mm-dd')),
	  ('rt03', '1000000003', '4.86932', to_date('2017-12-30', 'yyyy-mm-dd')),
	  ('rt04', '1000000004', '4.79551', to_date('2017-12-30', 'yyyy-mm-dd')),
	  ('rt05', '1000000005', '3.06818', to_date('2017-12-30', 'yyyy-mm-dd')),
	  ('rt06', '1000000006', '4.87653', to_date('2017-12-30', 'yyyy-mm-dd')),
	  ('rt07', '1000000007', '3.59259', to_date('2017-12-30', 'yyyy-mm-dd')),
	  ('rt08', '1000000008', '4.84084', to_date('2017-12-30', 'yyyy-mm-dd')),
	  ('rt09', '1000000009', '2.46153', to_date('2017-12-30', 'yyyy-mm-dd')),
	  ('rt10', '1000000010', '4.76492', to_date('2017-12-30', 'yyyy-mm-dd')),
	  ('rt11', '1000000011', '4.72095', to_date('2017-12-30', 'yyyy-mm-dd'));

-- Populate PodGenres table

INSERT INTO PodGenres(pod_genre_id, genre_name, pod_id) 
VALUES('2000001', 'Technology', '1000000001'),
	  ('2000002', 'Technology', '1000000002'),
	  ('2000003', 'Technology', '1000000003'),
	  ('2000004', 'Technology', '1000000004'),
	  ('2000005', 'Arts', '1000000005'),
	  ('2000006', 'Arts', '1000000006'),
	  ('2000007', 'Management', '1000000007'),
	  ('2000008', 'Comedy', '1000000008'),
	  ('2000009', 'Health', '1000000009'),
	  ('2000010', 'Music', '1000000010'),
	  ('2000011', 'Comedy', '1000000011');


-- Populate Podcasts table

INSERT INTO Podcasts(pod_id, pod_name, pod_genre_id, country_id, author_id, pod_viewers_id, pod_rating_id)
VALUES('1000000001', 'Ecommerce Conversations', '2000001', '003', '11111', 'vq01', 'rt01'),
	  ('1000000002', 'Eat Sleep Code Podcast', '2000002', '001', '11112', 'vq02', 'rt02'),
	  ('1000000003', 'SoundtrackAlley', '2000003', '002', '11113', 'vq03', 'rt03'),
	  ('1000000004', 'Sermons from Living Water Dayton', '2000004', '003', '11114', 'vq04', 'rt04'),
	  ('1000000005', 'Two Guys Talking Wine', '2000005', '004', '11115', 'vq05', 'rt05'),
	  ('1000000006', 'Two Ewes Fiber Adventures', '2000006', '006', '11116', 'vq06', 'rt06'),
	  ('1000000007', 'Open Roll with Jurgen Rudolph', '2000007', '003', '11117', 'vq07', 'rt07'),
	  ('1000000008', 'On The Record', '2000008', '008', '11118', 'vq08', 'rt08'),
	  ('1000000009', '902 BrewCast', '2000009', '005', '11119', 'vq09', 'rt09'),
	  ('1000000010', 'Drum and Bass Electronic Trap Dubstep Music', '2000010', '003', '11110', 'vq10', 'r10'),
	  ('1000000011', 'Fire in the Hole Podcast', '2000011', '009', '11121', 'vq11', 'rt11');
