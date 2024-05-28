/* INSERT */
/* Agregar un artista */

INSERT INTO artist(name)
VALUES ("Almafuerte");

/* Agregar un album */ 

INSERT INTO album(Title, ArtistId)
VALUES ("Del Entorno", 276);

/* Agregar 3 canciones a ese album */

INSERT INTO tracks(name, AlbumId, MediaTypeId, GenreId, Composer, Milliseconds, Bytes, UnitPrice)
VALUES  ("Del Entorno", 348, 3, 1, "Almafuerte", 350000, 5231532, 0.99),
		("Lucero del Alba", 348, 3, 1, "Almafuerte", 350000, 5231532, 0.99),
		("Por nacer", 348, 3, 1, "Almafuerte", 350000, 5231532, 0.99);

/* Modificar las 3 canciones*/

UPDATE tracks
SET GenreId = 2
WHERE AlbumId = 348

/* Delete */

DELETE FROM tracks
	WHERE Composer = "Almafuerte";

DELETE FROM albums
	WHERE AlbumId = 348;
	
DELETE FROM artists
	WHERE ArtistId = 276;