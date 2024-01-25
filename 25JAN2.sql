USE sakila
# List the number of films per category.

SELECT c.category_id, c.name AS category_name, COUNT(fc.film_id) AS film_count
FROM sakila.category c
LEFT JOIN sakila.film_category fc ON c.category_id=fc.category_id
GROUP BY c.category_id,category_name
ORDER BY film_count;

# Retrieve the store ID, city, and country for each store.

SELECT s.store_id, c.city, co.country
FROM sakila.store s
JOIN sakila.city c ON 

# Calculate the total revenue generated by each store in dollars.
#Determine the average running time of films for each category.

SELECT c.category_id, c.name AS category_name,
    AVG(f.length) AS average_running_time
FROM sakila.category c
JOIN sakila.film_category fc ON c.category_id = fc.category_id
JOIN sakila.film f ON fc.film_id = f.film_id
GROUP BY c.category_id, category_name
ORDER BY average_running_time DESC;
