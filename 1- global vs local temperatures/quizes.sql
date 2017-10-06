# quizes
--> select all columns
SELECT *
FROM orders

--> just some columnds

SELECT id, occurred_at , account_id
FROM orders

-->  just 10  : LIMIT comes in the end.

SELECT *
FROM orders LIMIT 10

--> 10 earliest transactions
SELECT id,occurred_at,total_amt_usd
FROM orders
ORDER BY occurred_at
LIMIT 10

--> 5 highst amounts
SELECT id,occurred_at,total_amt_usd
FROM orders
ORDER BY total_amt_usd DESC
LIMIT 5

--> 20 least totals (number of items)
SELECT id,occurred_at,total_amt_usd
FROM orders
ORDER BY total
LIMIT 5

# order by multiple colums : eg, the order of each account!
--> newest to oldest with the greatest amounts.
SELECT occurred_at,total_amt_usd
FROM orders
ORDER BY  occurred_at DESC, total_amt_usd DESC
LIMIT 5

-->  oldest to newest with the smallest amounts.
SELECT occurred_at,total_amt_usd
FROM orders
ORDER BY  occurred_at, total_amt_usd
LIMIT 10

-->  WHERE >= 1000 GLOSS
SELECT *
FROM orders
WHERE  gloss_amt_usd >= 1000
LIMIT 5

--> gloss <= 500
SELECT *
FROM orders
WHERE  total_amt_usd <= 500
LIMIT 10
--> where with non numeric.
SELECT name, website ,primary_poc
FROM accounts
where name ='Exxon Mobil'

--> the price of each unit in the orders .. total price / total amount.
SELECT  id,
		account_id,
        standard_amt_usd/(standard_qty+.0000000001) as
        price_per_standard_unit
FROM orders
LIMIT 200
-->  the percentage of the poster.
SELECT  id,
		account_id,
        (poster_amt_usd * 100)/
       (poster_amt_usd+standard_amt_usd+gloss_amt_usd) as poster_prcntge
FROM orders
LIMIT 200
--> companies  starts with C
SELECT *
FROM accounts
WHERE name LIKE 'C%'s
--> has statring one
SELECT *
FROM accounts
WHERE name LIKE '%one%'
--> end with s
SELECT *
FROM accounts
WHERE name LIKE '%s'
--> data of specific accounts
SELECT name,primary_poc,sales_rep_id
FROM accounts
WHERE name IN ('Walmart','Target','Nordstrom')
--> who were contacted using organic or adwords
SELECT *
FROM web_events
WHERE channel IN ('organic','adwords')

-->  and
SELECT *
FROM orders
WHERE standard_qty > 1000 AND poster_qty = 0 AND gloss_qty =0

--> do not start with 'C' and end with 's'.
SELECT *
FROM accounts
WHERE name NOT LIKE 'C%' AND name NOT LIKE '%s'

--> BETWEEN YEARS
SELECT *
FROM web_events
WHERE channel IN ('organic', 'adwords') AND occurred_at BETWEEN '2016-01-01' AND '2017-01-01'
ORDER BY occurred_at DESC;
