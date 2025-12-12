-- Advent of SQL - Day 3 Inserts

DROP TABLE IF EXISTS hotline_messages;

CREATE TABLE hotline_messages (
    id INT PRIMARY KEY,
    caller_name TEXT,
    transcript TEXT,
    tag TEXT,
    status TEXT
);

INSERT INTO hotline_messages (id, caller_name, transcript, tag, status) VALUES
    (1, 'Saanvi A.', 'I just found a refrigerator portal that leads to a disco party hosted by dancing llamas—please send help!', 'possible dragon', 'spam'),
    (2, 'Fatima Q.', 'Hi Santa, I would love a magical unicorn that lights up at night!', 'wish list', NULL),
    (3, 'Lillian Z.', 'Hi Santa, I would love the magical fairy garden set, please!', 'wish list', 'approved'),
    (4, 'Carter Y.', 'Thank you, Santa, for making Christmas so special with your wonderful spirit!', 'thank you', 'approved'),
    (5, 'Omar R.', 'Hi Santa, I would love a rainbow unicorn plushie that has a glittery horn!', 'wish list', 'approved'),
    (6, 'Diego Y.', 'Hi Santa, I would love a magical unicorn plushie that glows in the dark!', 'wish list', NULL),
    (7, 'Layla X.', 'Thank you, Santa, for spreading joy and magic every Christmas!', 'thank you', NULL),
    (8, 'Sophia K.', 'Santa, my cat said she wants to visit the candy cane forest next week.', NULL, NULL),
    (9, 'Eli H.', 'Hi Santa, I would love the magical fairy castle with twinkling lights!', 'wish list', 'approved'),
    (10, 'Logan F.', 'Santa, I think the reindeer are starting a band with the garden gnomes.', 'needs clarification', NULL),
    (11, 'Carlos P.', 'Thank you, Santa, for making Christmas so special every year!', 'thank you', NULL),
    (12, 'Zain G.', 'Thank you, Santa, for bringing joy to all the children around the world!', 'thank you', NULL),
    (13, 'Haruto R.', 'Thank you, Santa, for spreading so much joy and magic every Christmas!', 'thank you', 'approved'),
    (14, 'Oliver L.', 'Thank you, Santa, for spreading joy and making Christmas extra special!', 'thank you', NULL),
    (15, 'Luca M.', 'Hi Santa, could I please have the super cool glow-in-the-dark rocket ship?', 'wish list', NULL);
