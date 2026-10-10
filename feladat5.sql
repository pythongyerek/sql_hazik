-- 1. feladat

DROP DATABASE IF EXISTS muhely;
CREATE DATABASE muhely;
USE muhely;

CREATE TABLE szgk(
    id INT PRIMARY KEY AUTO_INCREMENT, 
    tipus VARCHAR(20) DEFAULT 'Toyota', 
    modell VARCHAR(20) NOT NULL, 
    rendszam VARCHAR(15) UNIQUE, 
    ajtok_szama INT CHECK (ajtok_szama < 6),
    gyartas_eve DATE
);

CREATE TABLE tulajdonosok(
    id INT PRIMARY KEY AUTO_INCREMENT,
    szgk_id INT,
    nev VARCHAR(50) NOT NULL,
    telefon VARCHAR(20),
    lakcim VARCHAR(100),
    FOREIGN KEY (szgk_id) REFERENCES szgk(id) ON DELETE CASCADE
);

INSERT INTO szgk (tipus, modell, rendszam, ajtok_szama, gyartas_eve)
VALUES
('Opel', 'Corsa C', 'AAA123', 5, '2002-10-03'),
('Tesla', 'Model Y', 'BBB222', 5, '2018-10-12');

INSERT INTO tulajdonosok (szgk_id, nev, telefon, lakcim)
VALUES
(1, 'Hakuna Matata', '+36-30-988-8444', '1055 Budapest, Kossuth Lajos tér 1-3'),
(2, 'Leinemann International', '+36-20-067-4209', '340 PARK AVENUE, NYC, NEW YORK, 10154');

-- 2. feladat

DROP DATABASE IF EXISTS kutyamenhely;
CREATE DATABASE kutyamenhely;
USE kutyamenhely;

CREATE TABLE IF NOT EXISTS kutyak(
    id INT PRIMARY KEY AUTO_INCREMENT,
    nev VARCHAR(30) NOT NULL,
    kor INT CHECK (kor < 30),
    nem VARCHAR(10) DEFAULT ("kan"),
    megjegyzes VARCHAR(500)
);

CREATE TABLE IF NOT EXISTS gazdak(
    id INT PRIMARY KEY AUTO_INCREMENT,
    nev VARCHAR(50) NOT NULL,
    telefonszam VARCHAR(20),
    cim VARCHAR(100),
    kutya_id INT,
    FOREIGN KEY (kutya_id) REFERENCES kutyak(id)
);

INSERT INTO kutyak (nev,kor,nem,megjegyzes) VALUES
('Bodri', 3, 'kan', 'Sokat szarik'),
('Gál Vivien', 24, 'szuka', 'Kanos es mar nem szuz');

INSERT INTO gazdak(nev,telefonszam,cim, kutya_id) VALUES
('Pócs János', '+3620 ha bekapod', 'Karmelita', 1),
('Lócaj Tanár úr', '0630696967', 'Sönhertz Kollégium', 2);
