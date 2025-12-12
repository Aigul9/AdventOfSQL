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

INSERT INTO snowball_inventory (id, batch_id, category_name, quantity, status) VALUES
    (1, 'BATCH-35443-J', 'frost-flight deluxe', 19, NULL),
    (2, 'BATCH-59767-M', 'frost-flight deluxe', 41, 'incomplete'),
    (3, 'BATCH-44795-B', 'frost-flight deluxe', 21, 'ready'),
    (4, 'BATCH-23396-C', 'north ridge compact', 0, 'incomplete'),
    (5, 'BATCH-88907-A', 'frost-flight deluxe', -2, 'incomplete'),
    (6, 'BATCH-42662-D', 'frost-flight deluxe', 47, 'needs review'),
    (7, 'BATCH-37460-V', 'north ridge compact', 43, 'ready'),
    (8, 'BATCH-21395-S', 'frost-flight deluxe', -2, 'ready'),
    (9, 'BATCH-36100-E', 'frost-flight deluxe', 46, 'ready'),
    (10, 'BATCH-64987-H', 'frost-flight deluxe', 43, NULL),
    (11, 'BATCH-57576-Z', 'melty deluxe', -5, 'ready'),
    (12, 'BATCH-56025-U', 'snowball v2', 11, 'ready'),
    (13, 'BATCH-86556-W', 'snowball v2', 12, 'ready');
