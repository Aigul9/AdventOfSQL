DROP TABLE IF EXISTS misdelivered_presents;
DROP TABLE IF EXISTS deliveries;

CREATE TABLE deliveries (
    id INT PRIMARY KEY,
    child_name TEXT,
    delivery_location TEXT,
    gift_name TEXT,
    scheduled_at TIMESTAMP
);

CREATE TABLE misdelivered_presents (
    id INT PRIMARY KEY,
    child_name TEXT,
    delivery_location TEXT,
    gift_name TEXT,
    scheduled_at TIMESTAMP,
    flagged_at TIMESTAMP,
    reason TEXT
);

INSERT INTO deliveries (id, child_name, delivery_location, gift_name, scheduled_at) VALUES
    (1, 'Omar Q.', '45 Maple Street', 'storybook collection', '2025-12-24 21:09:00'),
    (2, 'Sofia K.', '77 Snowflake Road', 'plush reindeer', '2025-12-24 18:35:00'),
    (3, 'Mila N.', 'The Vibes', 'storybook collection', '2025-12-24 21:09:00'),
    (4, 'Elias M.', 'Frost Hollow Cabin', 'board game', '2025-12-24 20:31:00'),
    (5, 'Ravi P.', '45 Maple Street', 'wooden train set', '2025-12-24 18:23:00'),
    (6, 'Jonah W.', '77 Snowflake Road', 'plush reindeer', '2025-12-24 20:34:00'),
    (7, 'Ava J.', '123 Evergreen Lane', 'board game', '2025-12-24 21:03:00'),
    (8, 'Omar Q.', '77 Snowflake Road', 'board game', '2025-12-24 18:56:00'),
    (9, 'Nia G.', 'Frost Hollow Cabin', 'teddy bear', '2025-12-24 21:27:00'),
    (10, 'Zara S.', 'North Pole Annex', 'wooden train set', '2025-12-24 20:58:00'),
    (11, 'Ravi P.', 'Frost Hollow Cabin', 'puzzle box', '2025-12-24 18:39:00'),
    (12, 'Jonah W.', '123 Evergreen Lane', 'puzzle box', '2025-12-24 18:23:00'),
    (13, 'Ravi P.', 'North Pole Annex', 'storybook collection', '2025-12-24 21:36:00'),
    (14, 'Lena F.', 'North Pole Annex', 'teddy bear', '2025-12-24 21:26:00'),
    (15, 'Ava J.', 'North Pole Annex', 'snow globe', '2025-12-24 18:31:00');

INSERT INTO misdelivered_presents
(id, child_name, delivery_location, gift_name, scheduled_at, flagged_at, reason)
VALUES
    (601, 'Priya D.', 'The Vibes', 'plush reindeer', '2025-12-24 14:00:00', '2025-12-24 14:05:00', 'Invalid delivery location'),
    (602, 'Lena F.', 'Abandoned Lighthouse', 'board game', '2025-12-22 06:00:00', '2025-12-22 06:05:00', 'Invalid delivery location'),
    (603, 'Caleb O.', 'Drifting Igloo', 'board game', '2025-12-24 06:00:00', '2025-12-24 06:05:00', 'Invalid delivery location'),
    (604, 'Mateo C.', 'The Vibes', 'art supplies', '2025-12-22 04:00:00', '2025-12-22 04:05:00', 'Invalid delivery location'),
    (605, 'Hiro T.', 'The Vibes', 'robot toy', '2025-12-24 08:00:00', '2025-12-24 08:05:00', 'Invalid delivery location'),
    (606, 'Priya D.', 'Volcano Rim', 'puzzle box', '2025-12-22 08:00:00', '2025-12-22 08:05:00', 'Invalid delivery location'),
    (607, 'Nia G.', 'Abandoned Lighthouse', 'board game', '2025-12-24 01:00:00', '2025-12-24 01:05:00', 'Invalid delivery location'),
    (608, 'Elias M.', 'Drifting Igloo', 'board game', '2025-12-24 01:00:00', '2025-12-24 01:05:00', 'Invalid delivery location'),
    (609, 'Ravi P.', 'Volcano Rim', 'board game', '2025-12-24 02:00:00', '2025-12-24 02:05:00', 'Invalid delivery location'),
    (610, 'Hiro T.', 'Abandoned Lighthouse', 'science kit', '2025-12-23 20:00:00', '2025-12-23 20:05:00', 'Invalid delivery location'),
    (611, 'Priya D.', 'Drifting Igloo', 'puzzle box', '2025-12-22 21:00:00', '2025-12-22 21:05:00', 'Invalid delivery location'),
    (612, 'Hiro T.', 'Volcano Rim', 'art supplies', '2025-12-23 09:00:00', '2025-12-23 09:05:00', 'Invalid delivery location'),
    (613, 'Jonah W.', 'Abandoned Lighthouse', 'board game', '2025-12-24 01:00:00', '2025-12-24 01:05:00', 'Invalid delivery location'),
    (614, 'Omar Q.', 'Volcano Rim', 'art supplies', '2025-12-22 01:00:00', '2025-12-22 01:05:00', 'Invalid delivery location'),
    (615, 'Omar Q.', 'Drifting Igloo', 'science kit', '2025-12-23 20:00:00', '2025-12-23 20:05:00', 'Invalid delivery location'),
    (616, 'Omar Q.', 'Abandoned Lighthouse', 'teddy bear', '2025-12-24 12:00:00', '2025-12-24 12:05:00', 'Invalid delivery location'),
    (617, 'Zara S.', 'Volcano Rim', 'wooden train set', '2025-12-24 12:00:00', '2025-12-24 12:05:00', 'Invalid delivery location'),
    (618, 'Omar Q.', 'Abandoned Lighthouse', 'teddy bear', '2025-12-23 15:00:00', '2025-12-23 15:05:00', 'Invalid delivery location'),
    (619, 'Caleb O.', 'The Vibes', 'teddy bear', '2025-12-24 14:00:00', '2025-12-24 14:05:00', 'Invalid delivery location'),
    (620, 'Nia G.', 'Abandoned Lighthouse', 'board game', '2025-12-23 03:00:00', '2025-12-23 03:05:00', 'Invalid delivery location'),
    (621, 'Nia G.', 'The Vibes', 'plush reindeer', '2025-12-23 03:00:00', '2025-12-23 03:05:00', 'Invalid delivery location'),
    (622, 'Nia G.', 'Volcano Rim', 'storybook collection', '2025-12-23 21:00:00', '2025-12-23 21:05:00', 'Invalid delivery location'),
    (623, 'Nia G.', 'The Vibes', 'robot toy', '2025-12-22 06:00:00', '2025-12-22 06:05:00', 'Invalid delivery location'),
    (624, 'Jonah W.', 'Drifting Igloo', 'puzzle box', '2025-12-23 01:00:00', '2025-12-23 01:05:00', 'Invalid delivery location'),
    (625, 'Zara S.', 'Abandoned Lighthouse', 'puzzle box', '2025-12-22 14:00:00', '2025-12-22 14:05:00', 'Invalid delivery location'),
    (626, 'Priya D.', 'Volcano Rim', 'puzzle box', '2025-12-23 01:00:00', '2025-12-23 01:05:00', 'Invalid delivery location'),
    (627, 'Jonah W.', 'Volcano Rim', 'snow globe', '2025-12-23 07:00:00', '2025-12-23 07:05:00', 'Invalid delivery location'),
    (628, 'Nia G.', 'Drifting Igloo', 'plush reindeer', '2025-12-24 05:00:00', '2025-12-24 05:05:00', 'Invalid delivery location'),
    (629, 'Ava J.', 'The Vibes', 'art supplies', '2025-12-22 12:00:00', '2025-12-22 12:05:00', 'Invalid delivery location'),
    (630, 'Jonah W.', 'Abandoned Lighthouse', 'science kit', '2025-12-23 01:00:00', '2025-12-23 01:05:00', 'Invalid delivery location'),
    (631, 'Jonah W.', 'The Vibes', 'science kit', '2025-12-22 00:00:00', '2025-12-22 00:05:00', 'Invalid delivery location'),
    (632, 'Nia G.', 'Abandoned Lighthouse', 'snow globe', '2025-12-22 02:00:00', '2025-12-22 02:05:00', 'Invalid delivery location'),
    (633, 'Ava J.', 'The Vibes', 'storybook collection', '2025-12-22 01:00:00', '2025-12-22 01:05:00', 'Invalid delivery location'),
    (634, 'Nia G.', 'Drifting Igloo', 'plush reindeer', '2025-12-22 20:00:00', '2025-12-22 20:05:00', 'Invalid delivery location'),
    (635, 'Ava J.', 'Abandoned Lighthouse', 'wooden train set', '2025-12-22 02:00:00', '2025-12-22 02:05:00', 'Invalid delivery location'),
    (636, 'Layla B.', 'Abandoned Lighthouse', 'snow globe', '2025-12-21 21:00:00', '2025-12-21 21:05:00', 'Invalid delivery location'),
    (637, 'Ava J.', 'The Vibes', 'storybook collection', '2025-12-24 00:00:00', '2025-12-24 00:05:00', 'Invalid delivery location'),
    (638, 'Elias M.', 'Abandoned Lighthouse', 'art supplies', '2025-12-22 14:00:00', '2025-12-22 14:05:00', 'Invalid delivery location'),
    (639, 'Lena F.', 'The Vibes', 'wooden train set', '2025-12-24 11:00:00', '2025-12-24 11:05:00', 'Invalid delivery location'),
    (640, 'Layla B.', 'Drifting Igloo', 'board game', '2025-12-22 19:00:00', '2025-12-22 19:05:00', 'Invalid delivery location'),
    (641, 'Hiro T.', 'Volcano Rim', 'art supplies', '2025-12-22 16:00:00', '2025-12-22 16:05:00', 'Invalid delivery location'),
    (642, 'Hiro T.', 'Abandoned Lighthouse', 'snow globe', '2025-12-24 02:00:00', '2025-12-24 02:05:00', 'Invalid delivery location'),
    (643, 'Priya D.', 'The Vibes', 'storybook collection', '2025-12-22 18:00:00', '2025-12-22 18:05:00', 'Invalid delivery location'),
    (644, 'Caleb O.', 'Abandoned Lighthouse', 'puzzle box', '2025-12-23 23:00:00', '2025-12-23 23:05:00', 'Invalid delivery location'),
    (645, 'Jonah W.', 'The Vibes', 'teddy bear', '2025-12-22 01:00:00', '2025-12-22 01:05:00', 'Invalid delivery location'),
    (646, 'Ava J.', 'Volcano Rim', 'wooden train set', '2025-12-24 00:00:00', '2025-12-24 00:05:00', 'Invalid delivery location'),
    (647, 'Mila N.', 'The Vibes', 'puzzle box', '2025-12-21 23:00:00', '2025-12-21 23:05:00', 'Invalid delivery location'),
    (648, 'Nia G.', 'Drifting Igloo', 'science kit', '2025-12-23 00:00:00', '2025-12-23 00:05:00', 'Invalid delivery location'),
    (649, 'Elias M.', 'Abandoned Lighthouse', 'teddy bear', '2025-12-23 21:00:00', '2025-12-23 21:05:00', 'Invalid delivery location'),
    (650, 'Ravi P.', 'Abandoned Lighthouse', 'teddy bear', '2025-12-22 22:00:00', '2025-12-22 22:05:00', 'Invalid delivery location');
