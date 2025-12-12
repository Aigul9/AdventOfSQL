--
-- Advent of SQL - Day 1 Data
--
-- This file creates and populates the wish_list table
-- for day 1 of the Advent of SQL challenge by Database School.
--
-- Usage: Run this file in any SQL client (TablePlus, pgAdmin, etc.)
--

-- Clean up if tables exist (in correct order due to foreign key)
DROP TABLE IF EXISTS wish_list CASCADE;

--
-- wish_list table
--

CREATE TABLE wish_list (
   id          BIGSERIAL PRIMARY KEY,
   child_name  TEXT,
   raw_wish    TEXT
);

INSERT INTO wish_list (id, child_name, raw_wish) VALUES (1, 'James A.', ' BLUEY SUPERMARKET PLAY SET');
INSERT INTO wish_list (id, child_name, raw_wish) VALUES (2, 'Sade C.', 'lego star wars set ');
INSERT INTO wish_list (id, child_name, raw_wish) VALUES (3, 'Juan Q.', '   SCOOTER ');
INSERT INTO wish_list (id, child_name, raw_wish) VALUES (4, 'Samir S.', '   LEGO STAR WARS SET  ');
INSERT INTO wish_list (id, child_name, raw_wish) VALUES (5, 'Priya E.', 'shaved ice machine   ');
INSERT INTO wish_list (id, child_name, raw_wish) VALUES (6, 'Henry L.', '   mini brands fill the fridge');
INSERT INTO wish_list (id, child_name, raw_wish) VALUES (7, 'Ayumi C.', 'VR HEADSET');
INSERT INTO wish_list (id, child_name, raw_wish) VALUES (8, 'Juan Y.', 'BARBIE DREAMHOUSE   ');
INSERT INTO wish_list (id, child_name, raw_wish) VALUES (9, 'Priya O.', '  VR HEADSET  ');
INSERT INTO wish_list (id, child_name, raw_wish) VALUES (10, 'Lucia V.', ' LEGO CITY F1 CAR ');
INSERT INTO wish_list (id, child_name, raw_wish) VALUES (11, 'Nadia M.', '  SCOOTER');
INSERT INTO wish_list (id, child_name, raw_wish) VALUES (12, 'Juan B.', 'Pokemon Trainer Box ');
INSERT INTO wish_list (id, child_name, raw_wish) VALUES (13, 'Riley W.', ' heADphoNeS   ');
