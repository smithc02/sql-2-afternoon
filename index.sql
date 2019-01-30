SELECT *
FROM invoice
INNER JOIN invoice_line on invoice.invoice_id = invoice_line.invoice_id
where unit_price >.99

SELECT customer.first_name, customer.last_name, invoice.invoice_date 
FROM customer
INNER JOIN invoice on customer.customer_id = invoice.customer_id

SELECT customer.first_name, customer.last_name, employee.first_name, employee.last_name
FROM customer 
JOIN employee  on customer.support_rep_id = employee.employee_id
 
 SELECT
artist.name,
album.title
FROM 
artist
INNER JOIN album ON album.artist_id = artist.artist_id

SELECT playlist_track.playlist_track_id
FROM playlist_track
INNER JOIN playlist ON playlist.playlist_id = playlist_track.playlist_id
WHERE playlist.name = 'Music'

SELECT track.name
from track
JOIN playlist_id on playlist_track.track_id = track.track_id
WHERE playlist_track.playlist_id = 5

SELECT track.name, album.title
from track
JOIN genre ON genre.genre_id = track.genre.id 
JOIN album ON album.album_id = track.album_id
WHERE genre.nam = 'Alternative & Punk';

SELECT * FROM invoice
WHERE invoiceid IN ( SELECT invoiceid FROM invoiceline WHERE unitprice >.99);

SELECT *
FROM playlisttrack
WHERE playlistid IN (SELECT playlistid FROM playlist WHERE name ='Music');

SELECT *
FROM track
WHERE  trackid IN (SELECT trackid FROM playlisttrack WHERE playlistid = 5);

SELECT *
FROM track
WHERE genreid IN (SELECT genreid FROM genre WHERE name = 'Comedy');


SELECT *
FROM track
WHERE albumid IN (SELECT albumid FROM album WHERE title ='Fireball');

SELECT *
FROM track
WHERE albumid IN (
  SELECT albumid FROM album WHERE artistid IN (
  	SELECT artistid FROM artist WHERE name ='Queen'
  )
);

UPDATE customer
SET fax = null 
WHERE fax IS NOT NULL

UPDATE customer
SET company = 'Self'
WHERE company IS null

UPDATE customer
SET lastname = 'Thompson'
WHERE firstname = 'Julia' AND lastname = 'Barnett'


UPDATE customer
SET supportrepid = 4
WHERE email IS 'luisrojas@yahoo.cl'

UPDATE track
SET composer = 'The darkness around us'
WHERE genreid = (SELECT genreid FROM genre WHERE name = 'Metal')
AND composer IS Null

SELECT DISTINCT composer
FROM track

SELECT DISTINCT billingpostalcode
FROM invoice

SELECT DISTINCT company
FROM customer

DELETE FROM practice_delete WHERE type = 'bronze';
DELETE FROM practice_delete WHERE type = 'silver';
DELETE FROM practice_delete WHERE value = 150


