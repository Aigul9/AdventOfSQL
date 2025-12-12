DROP TABLE IF EXISTS snowball_categories;
DROP TABLE IF EXISTS snowball_inventory;

CREATE TABLE snowball_categories (
    id INT PRIMARY KEY,
    official_category TEXT
);

CREATE TABLE snowball_inventory (
    id INT PRIMARY KEY,
    batch_id TEXT,
    category_name TEXT,
    quantity INT,
    status TEXT
);

INSERT INTO snowball_categories (id, official_category) VALUES
    (1, 'frost-flight deluxe'),
    (2, 'north ridge compact'),
    (3, 'glacier sphere (xl)'),
    (4, 'polar precision microball'),
    (5, 'everfrost training round'),
    (6, 'arctic blast premium');
