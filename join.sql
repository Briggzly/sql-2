SELECT i.invoice_id, il.unit_price AS price FROM invoice i
JOIN invoice_line il ON i.invoice_id = il.invoice_id
WHERE il.unit_price > 0.99;


SELECT i.invoice_date AS date,c.first_name,c.last_name,i.total 
FROM invoice i
JOIN customer c
ON i.customer_id = c.customer_id

SELECT c.first_name,c.last_name,e.first_name AS support_first,e.last_name AS support_last 
FROM customer c
JOIN employee e
ON c.customer_id = e.employee_id
WHERE e.title = 'Sales Support Agent'


SELECT al.title AS title, ar.name AS name
FROM album al
JOIN artist ar
ON al.artist_id = ar.artist_id

SELECT pt.track_id, p.name
FROM playlist_track pt
JOIN playlist p
ON pt.playlist_id = p.playlist_id
WHERE p.name = 'Music'

SELECT t.name AS track_name, pt.playlist_id
FROM track t
JOIN playlist_track pt
ON t.track_id = pt.track_id


SELECT t.name AS track_name,p.name AS playlist_name
FROM track t
JOIN playlist_track ON t.track_id = playlist_track.track_id
JOIN playlist p ON playlist_track.playlist_id = p.playlist_id

SELECT t.name AS track_name,al.title AS album_title, g.name AS genre
FROM track t
JOIN album al ON t.album_id = al.album_id
JOIN genre g ON g.genre_id = al.album_id
WHERE g.name = 'Alternative & Punk'