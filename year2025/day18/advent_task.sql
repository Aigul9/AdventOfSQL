DROP TABLE IF EXISTS orders;

CREATE TABLE orders (
    id           INT PRIMARY KEY,
    customer_id  INT,
    created_at   TIMESTAMP,
    order_data   JSONB
);

INSERT INTO orders (id, customer_id, created_at, order_data) VALUES
    (1, 1, '2025-11-21 13:08:22', '{"shipping": {"method": "standard"}, "gift": {"wrapped": true}}'),
    (2, 1, '2025-11-21 18:42:58', '{"shipping": {"method": "overnight"}, "risk": {"flag": "high"}, "gift": {"wrapped": false}}'),
    (3, 1, '2025-11-21 21:01:46', '{"shipping": {"method": "standard"}, "gift": {"wrapped": false}}'),
    (4, 1, '2025-11-24 13:17:27', '{"shipping": {"method": "standard"}, "gift": {"wrapped": true}}'),
    (5, 1, '2025-11-24 21:09:46', '{"shipping": {"method": "overnight"}, "gift": {"wrapped": false}}'),
    (6, 1, '2025-11-25 07:24:55', '{"shipping": {"method": "standard"}, "risk": {"flag": "medium"}, "gift": {"wrapped": true}}'),
    (7, 1, '2025-11-25 17:42:36', '{"shipping": {"method": "standard"}, "gift": {"wrapped": false}}'),
    (8, 1, '2025-11-27 02:34:24', '{"shipping": {"method": "express"}, "gift": {"wrapped": true}}'),
    (9, 1, '2025-11-30 22:43:54', '{"shipping": {"method": "overnight"}, "gift": {"wrapped": true}}'),
    (10, 1, '2025-12-01 04:03:33', '{"shipping": {"method": "express"}, "risk": {"flag": "medium"}, "gift": {"wrapped": false}}'),
    (11, 1, '2025-12-02 05:19:10', '{"shipping": {"method": "overnight"}, "risk": {"flag": "low"}, "gift": {"wrapped": true}}'),
    (12, 1, '2025-12-03 16:25:56', '{"shipping": {"method": "overnight"}, "risk": {"flag": "medium"}, "gift": {"wrapped": true}}'),
    (13, 1, '2025-12-10 19:34:28', '{"shipping": {"method": "standard"}, "gift": {"wrapped": false}}'),
    (14, 1, '2025-12-16 19:23:53', '{"shipping": {"method": "express"}, "gift": {"wrapped": false}}'),
    (15, 2, '2025-11-23 19:11:23', '{"shipping": {"method": "overnight"}, "gift": {"wrapped": true}}');
