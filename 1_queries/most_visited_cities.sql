SELECT city, COUNT(reservations.*) 
FROM reservations 
JOIN properties ON property_id = properties.id
GROUP BY city
ORDER BY COUNT(reservations.*) DESC;