# TP2_requete_SQL

## Partie 1

### Énoncé du Problème :

Vous êtes chargé de concevoir un schéma entité-relation (ERD) pour une base de données qui stocke des informations sur les films, les acteurs qui y ont joué, ainsi que les évaluations de ces films. La base de données doit permettre de suivre divers détails sur les films, tels que leur titre, année de sortie et genre. De plus, elle doit stocker des informations sur les acteurs, notamment leur prénom, nom de famille et âge.

Votre tâche consiste à créer un ERD qui modélise efficacement les relations entre les films et les acteurs, tout en permettant la récupération efficace de données concernant la distribution de chaque film et les évaluations attribuées à ces films.

Votre ERD doit :

Représenter clairement les entités et leurs attributs, notamment, mais sans s'y limiter :

Films avec des attributs tels que "titre" (titre du film), "année" (année de sortie) et "genre".
Acteurs avec des attributs tels que "prénom", "nom de famille" et "âge".
Établir les relations entre les entités de manière à refléter que plusieurs acteurs peuvent être distribués dans un seul film, et qu'un acteur peut apparaître dans plusieurs films.

Maintenir l'intégrité référentielle et fournir une structure claire pour la base de données qui minimise la redondance des données.

Inclure des clés primaires et des clés étrangères appropriées pour garantir la cohérence et l'exactitude des données.

Tenir compte de la cardinalité et des contraintes de participation dans les relations entre les films et les acteurs.

Veiller à ce que votre ERD permette des requêtes efficaces, telles que la recherche de tous les films dans lesquels un acteur spécifique a joué ou la liste de la distribution d'un film particulier.

Veuillez fournir une représentation visuelle de l'ERD en étiquetant clairement les entités, les attributs et les relations.


## Partie 2

### Insérer les données suivantes dans leurs tables respectives issues du TP 1



#### Films

1. The Great Gatsby,Drama/Romance,2013, 7.2
2. Shutter Island,Mystery/Thriller,2010
3. La La Land,Drama/Musical,2016, 8.0
4. A Beautiful Mind,Biography/Drama,2001, 8.2
5. The Shape of Water,Adventure/Drama,2017
6. Blade Runner 2049,Sci-Fi/Thriller,2017
7. Jurassic Park,Adventure/Sci-Fi,1993
8. Fight Club,Drama,1999, 8.8
9. The Matrix,Action/Sci-Fi,1999, 8.7
10. The Godfather,Crime/Drama,1972, 9.2
11. Pulp Fiction,Crime/Drama,1994, 8.9
12. The Dark Knight,Action/Crime,2008, 9.0
13. The Dark Knight Rises,Action/Crime,2012, 8.4
14. Forrest Gump,Drama/Romance,1994, 8.8
15. Goodfellas,Biography/Crime,1990, 8.7
16. Saving Private Ryan,Drama/War,1998, 8.6
17. Gladiator,Action/Adventure,2000, 8.5
18. Titanic,Drama/Romance,1997, 7.8
19. The Revenant,Action/Adventure,2015, 8.0
20. Spider-Man,Action/Sci-Fi,2002, 7.4
21. Dunkirk, Action/History,2017, 7.8
22. Inception,Action/Adventure,2010, 8.8
23. Wonder Woman,Action/Adventure,2017, 7.4



#### Acteurs

1. Tobey Maguire: YYYY-MM-DD (Not provided), a joué dans Spider-Man, The Great Gatsby
2. Willem Dafoe: YYYY-MM-DD (Not provided), a joué dans Spider-Man
3. Leonardo DiCaprio: November 11, 1974 (1974-11-11), a joué dans The Great Gatsby, Shutter Island, Titanic, The Revenant, Inception
3. Cillian Murphy: May 25, 1976 (1976-05-25), a joué dans Dunkirk, The Dark Knight
4. Kate Winslet: October 5, 1975 (1975-10-05), a joué dans Titanic
5. Russell Crowe: April 7, 1964 (1964-04-07), a joué dans A Beautiful Mind, Gladiator
6. Tom Hanks: July 9, 1956 (1956-07-09), a joué dans Forrest Gump, Saving Private Ryan
7. Matt Damon: October 8, 1970 (1970-10-08), a joué dans Saving Private Ryan
8. Samuel L. Jackson: December 21, 1948 (1948-12-21), a joué dans Pulp Fiction, Goodfellas
9. Robert De Niro: August 17, 1943 (1943-08-17), a joué dans Goodfellas
10. Gal Gadot: April 30, 1985 (1985-04-30), a joué dans Wonder Woman
11. Christian Bale: January 30, 1974 (1974-01-30), a joué dans The Dark Knight, The Dark Knight Rises
12. Joseph Gordon-Levitt: February 17, 1981 (1981-02-17), a joué dans The Dark Knight
13. Tom Hardy: September 15, 1977 (1977-09-15), a joué dans Dunkirk, The Dark Knight Rises, The Revenant, Inception
14. John Travolta: February 18, 1954 (1954-02-18), a joué dans Pulp Fiction
15. Keanu Reeves: September 2, 1964 (1964-09-02), a joué dans The Matrix,
16. Laurence Fishburne: July 30, 1961 (1961-07-30), a joué dans The Matrix,
17. Brad Pitt: December 18, 1963 (1963-12-18), a joué dans Fight Club,
18. Ryan Gosling: November 12, 1980 (1980-11-12), a joué dans La La Land, Blade Runner 2049
19. Al Pacino: April 25, 1940, a joué The Godfather
20. Robin Wright: April 8, 1966 (1966-04-08), a joué dans Forrest Gump, Wonder Woman



### Écrivez des requêtes SQL pour accomplir ce qui suit

1. Liste des films par titre, puis par année.
2. Liste des films qui incluent le genre "Drama" dans leurs catégories.
3. Liste des films qui incluent les genres "Action" et "Aventure" dans leurs catégories.
4. Liste des films dont le titre commence par "The".
5. Les id des 3 films les mieux notés.
6. Le film le plus ancien.
7. L'acteur le plus jeune.
8. Liste des films sortis dans les années 1990.
9. Les films sortis entre 2010 et 2015.
10. Quelle est l'année la plus prolifique pour la réalisation de films dans ce jeu de données ?
11. Combien de films ont été réalisés avant l'année 2000?
12. Quel âge a chaque acteur ?
13. Quel est l'âge moyen des acteurs ?
14. Quels sont les âges minimum et maximum des acteurs ? Utilisez une seule requête.
15. Pouvez-vous m'aider à vous rappeler un film avec "2049" dans son titre ?
16. Quelles sont mes options pour regarder des films de crime et de bibliographie ?
17. Utilisez la clause CASE pour répertorier les entrées dans la table des notes comme suit : >= 9 Génial, > 8,5 Très bien, >= 7 Bien, <= 5 Ennuyeux.