--drop table films;
-- Création de la table Films
CREATE TABLE films (
    ID serial PRIMARY KEY,
    Titre VARCHAR(255),
    Année INT,
    Genre VARCHAR(50)
);
SELECT * FROM films;


--drop table acteurs;
-- Création de la table Acteurs
CREATE TABLE acteurs (
    ID serial PRIMARY KEY,
    Prénom VARCHAR(50),
    NomDeFamille VARCHAR(50),
    dob date
);
SELECT * FROM acteurs;


--drop table evaluations;
-- Création de la table Évaluations
CREATE TABLE evaluations (
    ID serial PRIMARY KEY,
    Film_ID INT,
    Note REAL NULL,
    FOREIGN KEY (Film_ID) REFERENCES Films(ID)
);
SELECT * FROM evaluations;


--drop table distribution;
-- Création de la table de liaison Distribution
CREATE TABLE distribution (
    Film_ID INT,
    Acteur_ID INT,
    PRIMARY KEY (Film_ID, Acteur_ID),
    FOREIGN KEY (Film_ID) REFERENCES Films(ID),
    FOREIGN KEY (Acteur_ID) REFERENCES Acteurs(ID)
);
select * from distribution;


-- Ajout des films, du genre, et de l'annee
INSERT INTO Films (Titre, Genre, Année)
VALUES
    ('The Great Gatsby', 'Drama/Romance', 2013),
    ('Shutter Island', 'Mystery/Thriller', 2010),
    ('La La Land', 'Drama/Musical', 2016),
    ('A Beautiful Mind', 'Biography/Drama', 2001),
    ('The Shape of Water', 'Adventure/Drama', 2017),
    ('Blade Runner 2049', 'Sci-Fi/Thriller', 2017),
    ('Jurassic Park', 'Adventure/Sci-Fi', 1993),
    ('Fight Club', 'Drama', 1999),
    ('The Matrix', 'Action/Sci-Fi', 1999),
    ('The Godfather', 'Crime/Drama', 1972),
    ('Pulp Fiction', 'Crime/Drama', 1994),
    ('The Dark Knight', 'Action/Crime', 2008),
    ('The Dark Knight Rises', 'Action/Crime', 2012),
    ('Forrest Gump', 'Drama/Romance', 1994),
    ('Goodfellas', 'Biography/Crime', 1990),
    ('Saving Private Ryan', 'Drama/War', 1998),
    ('Gladiator', 'Action/Adventure', 2000),
    ('Titanic', 'Drama/Romance', 1997),
    ('The Revenant', 'Action/Adventure', 2015),
    ('Spider-Man', 'Action/Sci-Fi', 2002),
    ('Dunkirk', 'Action/History', 2017),
    ('Inception', 'Action/Adventure', 2010),
    ('Wonder Woman', 'Action/Adventure', 2017);
SELECT * FROM films;


-- ajout des prenoms, noms, et dates de naissance des acteurs
INSERT INTO Acteurs (Prénom, NomDeFamille, dob)
VALUES
    ('Tobey', 'Maguire', NULL), -- Date de naissance non fournie
    ('Willem', 'Dafoe', NULL), -- Date de naissance non fournie
    ('Leonardo', 'DiCaprio', '1974-11-11'),
    ('Cillian', 'Murphy', '1976-05-25'),
    ('Kate', 'Winslet', '1975-10-05'),
    ('Russell', 'Crowe', '1964-04-07'),
    ('Tom', 'Hanks', '1956-07-09'),
    ('Matt', 'Damon', '1970-10-08'),
    ('Samuel L.', 'Jackson', '1948-12-21'),
    ('Robert', 'De Niro', '1943-08-17'),
    ('Gal', 'Gadot', '1985-04-30'),
    ('Christian', 'Bale', '1974-01-30'),
    ('Joseph Gordon-', 'Levitt', '1981-02-17'),
    ('Tom', 'Hardy', '1977-09-15'),
    ('John', 'Travolta', '1954-02-18'),
    ('Keanu', 'Reeves', '1964-09-02'),
    ('Laurence', 'Fishburne', '1961-07-30'),
    ('Brad', 'Pitt', '1963-12-18'),
    ('Ryan', 'Gosling', '1980-11-12'),
    ('Al', 'Pacino', '1940-04-25'),
    ('Robin', 'Wright', '1966-04-08');
SELECT * FROM acteurs;


-- ajout des evaluations des films
INSERT INTO evaluations VALUES 
	(DEFAULT, 1, 7.2), -- 1
	(DEFAULT, 2, NULL), -- 2
	(DEFAULT, 3, 8.0), -- 3
	(DEFAULT, 4, 8.2), -- 4
	(DEFAULT, 5, NULL), -- 5
	(DEFAULT, 6, NULL), -- 6
	(DEFAULT, 7, NULL), -- 7
	(DEFAULT, 8, 8.8), -- 8
	(DEFAULT, 9, 8.7), -- 9
	(DEFAULT, 10, 9.2), -- 10
	(DEFAULT, 11, 8.9), -- 11
	(DEFAULT, 12, 9.0), -- 12
	(DEFAULT, 13, 8.4), -- 13 
	(DEFAULT, 14, 8.8), -- 14
	(DEFAULT, 15, 8.7), -- 15
	(DEFAULT, 16, 8.6), -- 16
	(DEFAULT, 17, 8.5), -- 17
	(DEFAULT, 18, 7.8), -- 18
	(DEFAULT, 19, 8.0), -- 19
	(DEFAULT, 20, 7.4), -- 20
	(DEFAULT, 21, 7.8), -- 21
	(DEFAULT, 22, 8.8), -- 22
	(DEFAULT, 23, 7.4); -- 23
	
	
-- Correspondance entre les films et les acteurs
INSERT INTO distribution VALUES
	(1 , 1), (20 , 1),	-- Tobey Maguire: Spider-Man, The Great Gatsby
	(20 , 2),     -- Willem Dafoe: Spider-Man
	(1 , 3), (2 , 3), (18 , 3), (19 , 3), (22 , 3), 	-- Leonardo DiCaprio: The Great Gatsby, Shutter Island, Titanic, The Revenant, Inception
    (21 , 4), (12 , 4),	-- Cillian Murphy: Dunkirk, The Dark Knight
	(18 , 5),	-- Kate Winslet: Titanic
	(4 , 6), (17 , 6),	-- Russell Crowe: A Beautiful Mind, Gladiator
	(14 , 7), (16 , 7),	-- Tom Hanks: Forrest Gump, Saving Private Ryan
	(16 , 8),	-- Matt Damon: Saving Private Ryan
	(11 , 9), (15 , 9),	-- Samuel L. Jackson: Pulp Fiction, Goodfellas
	(15 , 10),	-- Robert De Niro: Goodfellas
	(23 , 11),	-- Gal Gadot: Wonder Woman
	(12 , 12), (13 , 12),	-- Christian Bale: The Dark Knight, The Dark Knight Rises
	(12 , 13),	-- Joseph Gordon-Levitt: The Dark Knight
	(21 , 14), (13 , 14), (19 , 14), (22 , 14),	-- Tom Hardy: Dunkirk, The Dark Knight Rises, The Revenant, Inception
	(11 , 15),	-- John Travolta: Pulp Fiction
	(9 , 16),	-- Keanu Reeves: The Matrix
	(9 , 17),	-- Laurence Fishburne: The Matrix,
	(8 , 18),	-- Brad Pitt: Fight Club
	(3 , 19), (6 , 19),	-- Ryan Gosling: La La Land, Blade Runner 2049
	(10 , 20),	-- Al Pacino: The Godfather
	(14 , 21), (23 , 21);	-- Robin Wright: Forrest Gump, Wonder Woman
select * from distribution;



--1.Liste des films par titre, puis par année :
SELECT * FROM Films
ORDER BY Titre, Année;


--2.Liste des films qui incluent le genre "Drama" dans leurs catégories :
SELECT * FROM Films
WHERE Genre LIKE '%Drama%';


--3.Liste des films qui incluent les genres "Action" et "Aventure" dans leurs catégories :
SELECT * FROM Films
WHERE Genre LIKE '%Action%' AND Genre LIKE '%Adventure%';


--4.Liste des films dont le titre commence par "The" :
SELECT * FROM Films
WHERE Titre LIKE 'The%';


--5.Les ID des 3 films les mieux notés :
SELECT ID FROM evaluations
ORDER BY Note DESC
LIMIT 3;


--6.Le film le plus ancien :
SELECT * FROM Films
ORDER BY Année
LIMIT 1;


--7.L'acteur le plus jeune :
SELECT * FROM Acteurs
ORDER BY dob DESC
LIMIT 1;


--8.Liste des films sortis dans les années 1990 :
SELECT * FROM Films
WHERE Année BETWEEN 1990 AND 1999;


--9.Les films sortis entre 2010 et 2015 :
SELECT * FROM Films
WHERE Année BETWEEN 2010 AND 2015;


--10.L'année la plus prolifique pour la réalisation de films :
SELECT Année, COUNT(*) AS Nombre_de_Films
FROM Films
GROUP BY Année
ORDER BY Nombre_de_Films DESC
LIMIT 1;


--11.Combien de films ont été réalisés avant l'année 2000 ?
SELECT COUNT(*) FROM Films
WHERE Année < 2000;


--12.Quel âge a chaque acteur ?
SELECT "prénom", nomdefamille , AGE(NOW() , dob) AS "Âge"
FROM Acteurs;


--13.L'âge moyen des acteurs :
SELECT AVG(EXTRACT(YEAR FROM AGE(NOW(), dob))) AS "Âge Moyen des Acteurs"
FROM Acteurs;


--14.Les âges minimum et maximum des acteurs :
SELECT MIN(EXTRACT(YEAR FROM AGE(NOW(), dob))) AS "Âge Minimum",
       MAX(EXTRACT(YEAR FROM AGE(NOW(), dob))) AS "Âge Maximum"
FROM Acteurs;


--15.Pour rappeler un film avec "2049" dans son titre :
SELECT * FROM Films
WHERE Titre LIKE '%2049%';

--16.Options pour regarder des films de crime et de biographie :
SELECT DISTINCT Genre FROM Films
WHERE Genre LIKE '%Crime%' OR Genre LIKE '%Biography%';


--17.Utilisation de CASE pour répertorier les entrées dans la table des notes :
SELECT film_id,titre,
    CASE
        WHEN Note >= 9 THEN 'Génial'
        WHEN Note > 8.5 THEN 'Très bien'
        WHEN Note >= 7 THEN 'Bien'
        WHEN Note <= 5 THEN 'Ennuyeux'
        ELSE 'Inconnu'
    END AS evaluation
FROM evaluations JOIN films ON films.id = evaluations.film_id ;


UPDATE evaluations
SET Note = 4.5
WHERE film_id = 17;






