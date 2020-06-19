/*
6g. a) The most popular payment method and number of transactions with this method
    b) Store with greater product variety and how many different products it offers
*/

/*SELECT p, max(counter) AS number_of_transactions
FROM(
  SELECT payment_method AS p, COUNT(*) AS counter
  FROM transaction_
  GROUP BY p
) AS T;
*/
   
SELECT s, max(products_offered) 
FROM(
  SELECT store_id as s, COUNT(barcode) AS products_offered
  FROM offers
  GROUP BY s
) AS T;