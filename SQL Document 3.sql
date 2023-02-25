--Question #1
--List all customers who live in Texas (use JOINs)

SELECT district,first_name,last_name
FROM customer
INNER JOIN address
ON customer.address_id = address.address_id
where district = 'Texas';

--Answer: see query

--Question #2
--Get all payments above $6.99 with the Customer's Full Name

SELECT amount,first_name,last_name
FROM customer
INNER JOIN payment
ON customer.customer_id = payment.customer_id
where amount > 6.99;

--Answer: see query

	
--Question #3
--Show all customers names who have made payments over $175(use subqueries)

SELECT amount,first_name,last_name
FROM customer
INNER JOIN payment
ON customer.customer_id = payment.customer_id
WHERE amount >175
GROUP BY amount,first_name,last_name;


--Answer: Peter Menard

--Question #4
--List all customers that live in Nepal (use the city table)

SELECT customer.first_name,customer.last_name,country
FROM customer
FULL JOIN address
ON customer.address_id = address.address_id
FULL JOIN city
ON address.city_id = city.city_id
FULL JOIN country
ON city.country_id = country.country_id
WHERE country = 'Nepal';

--Answer: Kevin Schuler

--Question #5
--Which staff member had the most transactions?

select staff_id, COUNT(rental_id)
FROM rental
GROUP BY staff_id
ORDER BY count desc;

--Answer: staff 1

--Question #6
--How many movies of each rating are there?

select rating, COUNT(film_id)
FROM film
GROUP by rating
ORDER BY count desc;

--Answer: see query

--Question #7
--Show all customers who have made a single payment above $6.99

SELECT amount,first_name,last_name
FROM customer
INNER JOIN payment
ON customer.customer_id = payment.customer_id
where amount > 6.99
GROUP BY amount,first_name,last_name;

--Answer: see query

--Question #8

--How many free rentals did the stores give away

SELECT amount
FROM payment
where amount = null;

--Answer: none
