SELECT *
FROM invoice
WHERE invoice_id in(
	SELECT invoice_id FROM invoice_line WHERE unit_price > 0.99
)

SELECT *
FROM playlist_track
WHERE playlist_id in (
	SELECT playlist_id FROM playlist WHERE name = 'Music'
)

SELECT name
FROM track
WHERE track_id in (
	SELECT track_id FROM playlist_track WHERE playlist_id = 5
)

SELECT *
FROM track
WHERE genre_id in (
	SELECT genre_id FROM genre WHERE name = 'Comedy'
)

SELECT *
FROM track
WHERE album_id in (
	SELECT album_id FROM album WHERE title = 'Fireball'
)

SELECT *
FROM track
WHERE album_id in (
	SELECT album_id FROM album  
WHERE artist_id in (
  SELECT artist_id FROM artist WHERE name = 'Queen'
  )
)