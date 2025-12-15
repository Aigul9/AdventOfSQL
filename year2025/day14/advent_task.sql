DROP TABLE IF EXISTS listening_logs;
CREATE TABLE listening_logs (
    id INTEGER PRIMARY KEY,
    user_name TEXT,
    artist TEXT,
    played_at TIMESTAMP,
    content_type TEXT
);

INSERT INTO listening_logs (id, user_name, artist, played_at, content_type) VALUES
    (1, 'Zoe Garcia', 'Arijit Singh', '2025-04-08 00:21:53', 'song'),
    (2, 'Zoe Garcia', 'Huberman Lab', '2025-11-10 19:18:47', 'podcast'),
    (3, 'Zoe Garcia', 'Huberman Lab', '2025-01-20 15:31:02', 'podcast'),
    (4, 'Zoe Garcia', 'Arijit Singh', '2025-01-06 17:33:11', 'song'),
    (5, 'Zoe Garcia', 'Candace', '2025-03-06 14:07:54', 'podcast'),
    (6, 'Zoe Garcia', 'Arijit Singh', '2025-06-05 17:57:59', 'song'),
    (7, 'Zoe Garcia', 'Huberman Lab', '2025-01-01 20:05:22', 'podcast'),
    (8, 'Zoe Garcia', 'Huberman Lab', '2025-11-01 12:04:03', 'podcast'),
    (9, 'Zoe Garcia', 'Arijit Singh', '2025-09-28 12:42:12', 'song'),
    (10, 'Zoe Garcia', 'The Ben Shapiro Show', '2025-09-15 01:05:15', 'podcast'),
    (11, 'Zoe Garcia', 'Arijit Singh', '2025-04-26 05:31:02', 'song'),
    (12, 'Zoe Garcia', 'Arijit Singh', '2025-10-13 17:34:03', 'song'),
    (13, 'Zoe Garcia', 'Mariah Carey', '2025-01-20 11:21:37', 'song'),
    (14, 'Zoe Garcia', 'Arijit Singh', '2025-11-28 03:55:31', 'song'),
    (15, 'Zoe Garcia', 'Arijit Singh', '2025-07-17 05:18:16', 'song');
