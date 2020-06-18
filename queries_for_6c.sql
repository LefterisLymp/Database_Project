/*Most spendful hour (for all stores)*/
/*SELECT HOUR(date_time) as h, max(S)
FROM(
SELECT date_time, sum(Total_amount) as S
FROM transaction_) AS T
GROUP BY h;*/

/*Most popular spot*/
SELECT store_id, alley, shelf
FROM offers as o
WHERE o.store_id = "ATH01"  AND o.barcode = 
(SELECT barcode FROM(
   /*This query returns barcode and amount
   of the most popular product in the store*/
   SELECT barcode, max(pieces_sold)
   FROM(
     SELECT barcode, sum(pieces) as pieces_sold
     FROM contain natural join transaction_
     WHERE transaction_.store_id = o.store_id
     /*GROUP BY barcode*/
   ) AS T
	) AS DT
);