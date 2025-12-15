DROP TABLE IF EXISTS families;
DROP TABLE IF EXISTS deliveries_assigned;

CREATE TABLE families (
    id INT PRIMARY KEY,
    family_name TEXT
);

CREATE TABLE deliveries_assigned (
    id INT PRIMARY KEY,
    family_id INT,
    gift_date DATE,
    gift_name TEXT
);

INSERT INTO families (id, family_name) VALUES
    (1, 'Isla Martinez'),
    (2, 'Nolan Garcia'),
    (3, 'Yara Chen'),
    (4, 'Tariq Nguyen'),
    (5, 'Mila Hernandez'),
    (6, 'Casey Kim'),
    (7, 'Mateo Hernandez'),
    (8, 'Keiko Petrov'),
    (9, 'Ethan Flores'),
    (10, 'Mateo Nakamura'),
    (11, 'Maya Fernandez'),
    (12, 'Mila Davis'),
    (13, 'Yara Rossi'),
    (14, 'Nolan Phillips'),
    (15, 'Amina Perez');

INSERT INTO deliveries_assigned (id, family_id, gift_date, gift_name) VALUES
    (1, 1, '2025-12-01', 'roasted cashews'),
    (2, 1, '2025-12-02', 'cookie decorating kit'),
    (3, 1, '2025-12-03', 'dark chocolate assortment'),
    (4, 1, '2025-12-04', 'white chocolate candies'),
    (5, 1, '2025-12-05', 'reindeer headband'),
    (6, 1, '2025-12-06', 'holiday brownie bites'),
    (7, 1, '2025-12-07', 'shortbread cookie tin'),
    (8, 1, '2025-12-08', 'chocolate chip cookies'),
    (9, 1, '2025-12-11', 'holiday jam trio'),
    (10, 1, '2025-12-12', 'white chocolate popcorn'),
    (11, 1, '2025-12-14', 'holiday jam trio'),
    (12, 1, '2025-12-15', 'fudge bites'),
    (13, 1, '2025-12-16', 'holiday sticker sheet'),
    (14, 1, '2025-12-18', 'hot cocoa bombs'),
    (15, 1, '2025-12-19', 'honey roasted nuts');
