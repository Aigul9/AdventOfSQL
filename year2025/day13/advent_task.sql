DROP TABLE IF EXISTS official_shifts;
DROP TABLE IF EXISTS last_minute_signups;

CREATE TABLE official_shifts (
    id INT PRIMARY KEY,
    volunteer_name TEXT,
    role TEXT,
    shift_time TEXT,
    age_group TEXT,
    code TEXT
);

CREATE TABLE last_minute_signups (
    id INT PRIMARY KEY,
    volunteer_name TEXT,
    assigned_task TEXT,
    time_slot TEXT
);

INSERT INTO official_shifts (id, volunteer_name, role, shift_time, age_group, code) VALUES
    (1, 'Jude Thompson', 'choir_assistant', '12:00 PM', 'senior', NULL),
    (2, 'Mateo Cruz', 'choir_assistant', '12:00 PM', 'senior', NULL),
    (3, 'Olivia Dubois', 'choir_assistant', '2:00 PM', 'teen', 'A1'),
    (4, 'Jeff Bezos', 'choir_assistant', '10:00 AM', 'adult', 'X7'),
    (5, 'Kian Rahimi', 'stage_setup', '12:00 PM', 'adult', 'X7'),
    (6, 'Haruto Sato', 'cocoa_station', '10:00 AM', 'adult', 'X7'),
    (7, 'Uma Singh', 'parking_support', '10:00 AM', 'adult', NULL),
    (8, 'Owen Scott', 'parking_support', '10:00 AM', 'adult', 'X7'),
    (9, 'Adil Rahman', 'stage_setup', '2:00 PM', 'adult', 'A1'),
    (10, 'Aaron Diaz', 'choir_assistant', '2:00 PM', 'senior', 'X7'),
    (11, 'Carter Lewis', 'cocoa_station', '10:00 AM', 'senior', 'B2'),
    (12, 'Anya Pavlov', 'stage_setup', '10:00 AM', 'senior', 'OLD'),
    (13, 'Ethan Brown', 'stage_setup', '2:00 PM', 'adult', 'A1'),
    (14, 'Lucia Fernandez', 'choir_assistant', '12:00 PM', 'senior', 'X7'),
    (15, 'Casey Morgan', 'choir_assistant', '12:00 PM', 'teen', 'OLD');
