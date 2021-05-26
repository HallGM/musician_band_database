DROP TABLE IF EXISTS bands_musicians;
DROP TABLE IF EXISTS bands;
DROP TABLE IF EXISTS musicians;


CREATE TABLE musicians (
  id SERIAL PRIMARY KEY,
  first_name VARCHAR(255) NOT NULL,
  last_name VARCHAR(255),
  instrument VARCHAR(255),
  net_worth INT
);

CREATE TABLE bands (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) NOT NULL
);

CREATE TABLE bands_musicians (
  id SERIAL PRIMARY KEY,
  musician_id INT REFERENCES musicians(id) ON DELETE CASCADE,
  band_id INT REFERENCES bands(id) ON DELETE CASCADE
);


INSERT INTO musicians (first_name, last_name, instrument, net_worth) VALUES ('Eddie', 'Van Halen', 'Guitar', 1000000);
INSERT INTO musicians (first_name, last_name, instrument, net_worth) VALUES ('Wolfgang', 'Van Halen', 'Bass', 50000);
INSERT INTO musicians (first_name, last_name, instrument, net_worth) VALUES ('Alex', 'Van Halen', 'Drums', 50000);
INSERT INTO musicians (first_name, last_name, instrument, net_worth) VALUES ('Dave Lee', 'Roth', 'Vocals', 2000000);
INSERT INTO musicians (first_name, last_name, instrument, net_worth) VALUES ('George', 'Harrison', 'Guitar', 5000000);
INSERT INTO musicians (first_name, last_name, instrument, net_worth) VALUES ('Roy', 'Orbison', 'Vocals', 1000);
INSERT INTO musicians (first_name, last_name, instrument, net_worth) VALUES ('Dave', 'Grohl', 'Guitar/Drums', 250000);
INSERT INTO musicians (first_name, last_name, instrument, net_worth) VALUES ('Damon', 'Albarn', 'Vocals', 350000);
INSERT INTO musicians (first_name, last_name, instrument, net_worth) VALUES ('Johnny', 'Marr', 'Guitar', 240000);
INSERT INTO musicians (first_name, last_name, instrument, net_worth) VALUES ('Corey', 'Taylor', 'Vocals', 175000);
INSERT INTO musicians (first_name, last_name, instrument, net_worth) VALUES ('Slash', null, 'Guitar', 1350000);
INSERT INTO musicians (first_name, last_name, instrument, net_worth) VALUES ('KK', 'Downing', 'Guitar', 3000000);
INSERT INTO musicians (first_name, last_name, instrument, net_worth) VALUES ('Tiny', 'Weymouth', 'Guitar', 6000000);
INSERT INTO musicians (first_name, last_name, instrument, net_worth) VALUES ('Chris', 'Frantz', 'Guitar', 1000);

INSERT INTO musicians (first_name, last_name, instrument, net_worth) VALUES ('Justine', 'Frischmann', 'Vocals', 20000);
INSERT INTO musicians (first_name, last_name, instrument, net_worth) VALUES ('Justin', 'Welch', 'Drums', 1000);
INSERT INTO musicians (first_name, last_name, instrument, net_worth) VALUES ('Donna', 'Matthews', 'Guitar', 5000);
INSERT INTO musicians (first_name, last_name, instrument, net_worth) VALUES ('Annie', 'Holland', 'Bass', 5000);

INSERT INTO bands (name) VALUES ('Van Halen');
INSERT INTO bands (name) VALUES ('Dave Lee Roth Band');
INSERT INTO bands (name) VALUES ('The Beatles');
INSERT INTO bands (name) VALUES ('The Travelling Wilberrys');
INSERT INTO bands (name) VALUES ('Nirvana');
INSERT INTO bands (name) VALUES ('Foo Fighters');
INSERT INTO bands (name) VALUES ('Blur');
INSERT INTO bands (name) VALUES ('Gorillaz');
INSERT INTO bands (name) VALUES ('The Smiths');
INSERT INTO bands (name) VALUES ('Modest Mouse');
INSERT INTO bands (name) VALUES ('Slipnot');
INSERT INTO bands (name) VALUES ('Stone Sour');
INSERT INTO bands (name) VALUES ('Guns n Roses');
INSERT INTO bands (name) VALUES ('Road Crew');
INSERT INTO bands (name) VALUES ('Judas Priest');
INSERT INTO bands (name) VALUES ('King Diamond');
INSERT INTO bands (name) VALUES ('Talking Heads');
INSERT INTO bands (name) VALUES ('Tom Tom');
INSERT INTO bands (name) VALUES ('Elastica');

INSERT INTO bands_musicians (musician_id, band_id) VALUES (1,1);
INSERT INTO bands_musicians (musician_id, band_id) VALUES (2,1);
INSERT INTO bands_musicians (musician_id, band_id) VALUES (3,1);
INSERT INTO bands_musicians (musician_id, band_id) VALUES (4,1);
INSERT INTO bands_musicians (musician_id, band_id) VALUES (4,2);
INSERT INTO bands_musicians (musician_id, band_id) VALUES (5,3);
INSERT INTO bands_musicians (musician_id, band_id) VALUES (5,4);
INSERT INTO bands_musicians (musician_id, band_id) VALUES (6,4);
INSERT INTO bands_musicians (musician_id, band_id) VALUES (7,5);
INSERT INTO bands_musicians (musician_id, band_id) VALUES (7,6);
INSERT INTO bands_musicians (musician_id, band_id) VALUES (8,7);
INSERT INTO bands_musicians (musician_id, band_id) VALUES (8,8);
INSERT INTO bands_musicians (musician_id, band_id) VALUES (9,9);
INSERT INTO bands_musicians (musician_id, band_id) VALUES (9,10);
INSERT INTO bands_musicians (musician_id, band_id) VALUES (10,11);
INSERT INTO bands_musicians (musician_id, band_id) VALUES (10,12);
INSERT INTO bands_musicians (musician_id, band_id) VALUES (11,13);
INSERT INTO bands_musicians (musician_id, band_id) VALUES (11,14);
INSERT INTO bands_musicians (musician_id, band_id) VALUES (12,15);
INSERT INTO bands_musicians (musician_id, band_id) VALUES (12,16);
INSERT INTO bands_musicians (musician_id, band_id) VALUES (13,17);
INSERT INTO bands_musicians (musician_id, band_id) VALUES (13,18);
INSERT INTO bands_musicians (musician_id, band_id) VALUES (14,17);
INSERT INTO bands_musicians (musician_id, band_id) VALUES (14,18);

INSERT INTO bands_musicians (musician_id, band_id) VALUES (15,19);
INSERT INTO bands_musicians (musician_id, band_id) VALUES (16,19);
INSERT INTO bands_musicians (musician_id, band_id) VALUES (17,19);
INSERT INTO bands_musicians (musician_id, band_id) VALUES (18,19);

-- 1.
-- SELECT first_name, last_name, bands.name AS band_name FROM musicians
-- INNER JOIN bands_musicians ON musicians.id = bands_musicians.musician_id
-- INNER JOIN bands ON bands_musicians.band_id = bands.id;

-- 2. 
-- SELECT first_name, last_name, bands.name AS band_name FROM musicians
-- INNER JOIN bands_musicians ON musicians.id = bands_musicians.musician_id
-- INNER JOIN bands ON bands_musicians.band_id = bands.id
-- WHERE bands.name = 'Elastica'
-- ORDER BY first_name ASC;

--3.
-- SELECT first_name, last_name, bands.name AS band_name FROM musicians
-- INNER JOIN bands_musicians ON musicians.id = bands_musicians.musician_id
-- INNER JOIN bands ON bands_musicians.band_id = bands.id
-- WHERE bands.name IN ('Talking Heads', 'Tom Tom')
-- ORDER BY band_name ASC;

-- 4.
-- SELECT bands.name AS band_name FROM musicians
-- INNER JOIN bands_musicians ON musicians.id = bands_musicians.musician_id
-- INNER JOIN bands ON bands_musicians.band_id = bands.id
-- WHERE musicians.first_name = 'Slash'
-- ORDER BY band_name DESC;

-- 5.
-- SELECT first_name, last_name, net_worth FROM musicians
-- WHERE net_worth >= 350000
-- ORDER BY net_worth DESC;

--6. 
-- SELECT first_name, last_name, net_worth FROM musicians
-- ORDER BY net_worth DESC
-- LIMIT 1 ;

--7. 
-- SELECT first_name, last_name, net_worth FROM musicians
-- WHERE net_worth BETWEEN 350000 AND 2000000
-- ORDER BY net_worth DESC;