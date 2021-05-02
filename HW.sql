-- 1 -- 2 actors with last name of Wahlberg
SELECT first_name, last_name
FROM actor
WHERE last_name ='Wahlberg'
--2-- 5608 transactions were made between 3.99 and 5.99
SELECT amount
FROM payment
WHERE amount BETWEEN 3.99 and 5.99
-- 3 -- There are 71 titles that all have the same highest stock number between stores of copies.
SELECT film_id, COUNT(*)
FROM inventory
GROUP BY film_id
ORDER BY COUNT
--4 -- No customers named "william" for last name, one customer with last name "Williams" (Customer_ID #3)
SELECT last_name, first_name, customer_id 
FROM customer
WHERE last_name = 'Williams'
-- 5 -- Mike Hillyer sold the most rentals with a count of 8040
SELECT *
FROM staff
SELECT staff_id, COUNT(rental_id)
FROM rental
GROUP BY staff_id
-- 6 -- There are 378 unique district names
SELECT COUNT(address_id), district
FROM address
GROUP BY district
ORDER BY COUNT DESC
-- 7 -- film_id #508 has the most actors in it with a count of 15
SELECT COUNT(actor_id), film_id
FROM film_actor
GROUP BY film_id
ORDER BY COUNT DESC
-- 8 -- 13 customers from store_id 1 have last names ending in 'es'
SELECT customer_id, store_id, first_name, last_name
FROM customer
WHERE last_name like '%es' AND store_id = '1'
-- 9 -- There were 3 payment amounts (2.99, 4.99 and 0.99)
SELECT *
FROM payment

SELECT amount, COUNT(payment_id)
FROM payment
WHERE customer_id BETWEEN 380 and 430
GROUP BY amount
HAVING COUNT(payment_id) > 250;

-- 10 -- There are 5 distinct rating categories with PG-13 having the most movies at a count of 223
SELECT rating, count(film_id)
FROM film
GROUP BY rating
ORDER BY COUNT

