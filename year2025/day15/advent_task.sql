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
