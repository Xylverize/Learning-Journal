-- Active: 1656399497219@@127.0.0.1@3306
CREATE TABLE Cars
(
    id INT,
    name VARCHAR (50) NOT NULL,
    company VARCHAR (50) NOT NULL,
    power INT NOT NULL
);

INSERT INTO Cars (id, name, company, power)
VALUES (1,'Corolla', 'Toyota', 1800),
(2, 'City', 'Honda', 1500),
(3, 'C200', 'Mercedes', 2000),
(4, 'Vitz', 'Toyota', 1300),
(5, 'Baleno', 'Suzuki', 1500),
(6, 'C500', 'Mercedes', 5000),
(7, '800', 'BMW', 8000),
(8, 'Mustang', 'Ford', 5000),
(9, '208', 'Peugeot', 5400),
(10, 'Prius', 'Toyota', 3200),
(11, 'Atlas', 'Volkswagen', 5000),
(12, '110', 'Bugatti', 8000),
(13, 'LandCruiser', 'Toyota', 3000),
(14, 'Civic', 'Honda', 1000),
(15, 'Accord', 'Honda', 2000);

SELECT * FROM "Cars";

SELECT name, company, power,
RANK() OVER(PARTITION BY company ORDER BY power DESC) AS PowerRank
FROM cars;

SELECT name, company, power,
RANK() OVER (ORDER BY power DESC) AS [Rank],
DENSE_RANK() OVER(ORDER BY power DESC) AS [Dense Rank],
ROW_NUMBER() OVER(ORDER BY power DESC) AS [Row Number]
FROM Cars;

/*Hitung rata-rata kolom berdasarkan kolom company*/
SELECT CAST(AVG(power) as int) AS [Average Power], company
FROM Cars
GROUP BY company;
