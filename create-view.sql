CREATE VIEW rock_genre AS
SELECT *
FROM track
WHERE genre_id in (
	SELECT genre_id FROM genre WHERE name = 'Rock'
);


SELECT * FROM rock_genre;

CREATE VIEW classical_count_1 AS
SELECT COUNT(*)
FROM track
WHERE track_id IN (
	SELECT track_id FROM playlist_track
WHERE playlist_id IN (
 SELECT playlist_id FROM playlist WHERE name = 'Classical'
 )
);


SELECT * FROM classical_count_1;