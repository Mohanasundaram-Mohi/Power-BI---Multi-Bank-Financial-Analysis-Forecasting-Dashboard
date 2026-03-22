

CREATE TABLE hsbc_data (
    year INT,
    bank_name TEXT,
    revenue NUMERIC,
    net_income NUMERIC,
    total_assets NUMERIC,
    deposits NUMERIC,
    roe NUMERIC,
    operating_expenses NUMERIC,
    loans NUMERIC,
    cet1_ratio NUMERIC,
    employees_global INT,
    net_interest_income NUMERIC,
    revenue_growth NUMERIC,
    profit_growth NUMERIC,
    asset_growth NUMERIC
);

ALTER TABLE hsbc_data ADD COLUMN id SERIAL PRIMARY KEY;

SELECT * FROM hsbc_data;

INSERT INTO hsbc_data (
    year, bank_name, revenue, net_income, total_assets, deposits, roe,
    operating_expenses, loans, cet1_ratio, employees_global,
    net_interest_income, revenue_growth, profit_growth, asset_growth
)
VALUES
(2015, 'HSBC', 59800, 13500, 2410000, 1300000, 10.5, 35000, 900000, 14.2, 250000, 30000, 5.2, 6.1, 4.8),
(2016, 'HSBC', 61000, 14000, 2500000, 1350000, 11.0, 36000, 920000, 14.5, 255000, 31000, 4.0, 3.7, 3.5),
(2017, 'HSBC', 65000, 15000, 2600000, 1400000, 12.0, 37000, 950000, 15.0, 260000, 33000, 6.5, 7.1, 4.0),
(2018, 'HSBC', 68000, 16000, 2700000, 1450000, 12.5, 38000, 980000, 15.2, 265000, 35000, 4.6, 6.6, 3.8),
(2019, 'HSBC', 70000, 17000, 2800000, 1500000, 13.0, 39000, 1000000, 15.5, 270000, 37000, 2.9, 6.2, 3.7),
(2020, 'HSBC', 65000, 12000, 2900000, 1550000, 9.5, 40000, 1020000, 15.0, 275000, 34000, -7.1, -29.4, 3.5),
(2021, 'HSBC', 72000, 18000, 3000000, 1600000, 13.5, 41000, 1050000, 15.8, 280000, 38000, 10.8, 50.0, 3.4),
(2022, 'HSBC', 75000, 19000, 3100000, 1650000, 14.0, 42000, 1080000, 16.0, 285000, 40000, 4.2, 5.5, 3.3),
(2023, 'HSBC', 80000, 21000, 3200000, 1700000, 15.0, 43000, 1100000, 16.5, 290000, 42000, 6.7, 10.5, 3.2),
(2024, 'HSBC', 85000, 23000, 3300000, 1750000, 16.0, 44000, 1150000, 17.0, 295000, 45000, 6.3, 9.5, 3.1);


SELECT * FROM hsbc_data ORDER BY year;