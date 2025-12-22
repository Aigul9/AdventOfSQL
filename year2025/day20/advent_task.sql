DROP TABLE IF EXISTS behavior_logs;

CREATE TABLE behavior_logs (
    id INT PRIMARY KEY,
    child_id INT,
    child_name TEXT,
    behavior_date DATE,
    score INT
);

INSERT INTO behavior_logs (id, child_id, child_name, behavior_date, score) VALUES
    (1, 1, 'Emma D.', '2025-12-01', 5),
    (2, 1, 'Emma D.', '2025-12-02', 1),
    (3, 1, 'Emma D.', '2025-12-03', 3),
    (4, 1, 'Emma D.', '2025-12-04', 5),
    (5, 1, 'Emma D.', '2025-12-05', 2),
    (6, 1, 'Emma D.', '2025-12-06', 2),
    (7, 1, 'Emma D.', '2025-12-07', 3),
    (8, 1, 'Emma D.', '2025-12-08', 5),
    (9, 1, 'Emma D.', '2025-12-09', 4),
    (10, 1, 'Emma D.', '2025-12-10', 5),
    (11, 1, 'Emma D.', '2025-12-11', 5),
    (12, 1, 'Emma D.', '2025-12-12', -1),
    (13, 1, 'Emma D.', '2025-12-13', 1),
    (14, 1, 'Emma D.', '2025-12-14', 1),
    (15, 1, 'Emma D.', '2025-12-15', -1);
