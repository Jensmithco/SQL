--Question #1

select last_name
from actor
where last_name = 'Wahlberg';

-- Answer: 2

--Question #2

select amount, count(payment_id)
from payment 
where amount between 3.99 and 5.99
group by amount
order by count desc;

-- Answer: 4801

--Question #3

select film_id, COUNT(film_id)
from inventory
group by film_id
order by COUNT desc;

-- Answer: multiple see query

--Question #4

select last_name
from customer
where last_name = 'William';

--Answer: 0

--Question #5

select staff_id, COUNT(rental_id)
from payment
group by staff_id
order by count desc;

--Answer: 2

--Question #6

select district
from address
group by district
order by district;

--Answer: 378

--Question #7

select film_id, COUNT(actor_id)
FROM film_actor
GROUP BY film_id
ORDER BY count desc;

--Answer: 508, 15 actors

--Question #8

select store_id, last_name
from customer
where store_id = 1 and last_name like  '%es';

--Answer: 13

--Question #9

SELECT COUNT(payment_id), customer_id, amount
FROM payment
where customer_id between 380 and 430
GROUP BY customer_id, amount
HAVING COUNT(payment_id) > 250;

--Answer: 0

--Question #10

select rating, count(film_id)
from film
group by rating
order by count desc;

--Answer: 5 ratings, PG-13 with 223
















