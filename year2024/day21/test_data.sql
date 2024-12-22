CREATE TABLE sales (
    id SERIAL PRIMARY KEY,
    sale_date DATE NOT NULL,
    amount DECIMAL(10, 2) NOT NULL
);

INSERT INTO sales (sale_date, amount) VALUES ('2024-01-10', 3500.25);
INSERT INTO sales (sale_date, amount) VALUES ('2023-01-15', 1500.50);
INSERT INTO sales (sale_date, amount) VALUES ('2023-04-20', 2000.00);
INSERT INTO sales (sale_date, amount) VALUES ('2023-07-12', 2500.75);
INSERT INTO sales (sale_date, amount) VALUES ('2023-10-25', 3000.00);