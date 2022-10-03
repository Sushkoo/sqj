CREATE DATABASE barlangok CHARACTER SET utf8 COLLATE utf8_hungarian_ci;
USE barlangok;
CREATE TABLE barlang
(
    nev VARCHAR(50) PRIMARY KEY,
    hossz DOUBLE(6,1),
    kiterjedes DOUBLE(6,1),
    melyseg DOUBLE(6,1),
    magassag DOUBLE(6,1),
    telepules VARCHAR(50)
);

DELETE FROM barlang
where telepules="Tés";

INSERT INTO barlang values("Új barlang 1",200,10,30,10,"XYZ");

INSERT INTO barlang values("Új barlang",150,20,30,10,"");

UPDATE barlang
SET hossz=hossz+1
WHERE nev="Duó-zsomboly";

SELECT nev FROM barlang
WHERE telepules="Budapest";

SELECT NEV FROM barlang
WHERE hossz>=1000 AND magassag<50;

SELECT * FROM barlang
WHERE hossz<100 AND nev LIKE "%zsomboly%";

SELECT nev, melyseg, telepules FROM barlang
WHERE melyseg>=50 AND melyseg<=100;

SELECT nev from barlang
WHERE nev LIKE "%zsomboly%";
