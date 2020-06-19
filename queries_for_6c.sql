/*Most spendful hour (for all stores)*/
/*SELECT HOUR(date_time) as h, max(S)
FROM(
SELECT date_time, sum(Total_amount) as S
FROM transaction_) AS T
GROUP BY h;*/

/*Most popular spot*/
/*SELECT store_id, alley, shelf
FROM offers as o
WHERE o.store_id = "ATH01"  AND o.barcode = 
(SELECT barcode FROM(
   /*This query returns barcode and amount
   of the most popular product in the store
   SELECT barcode, max(pieces_sold)
   FROM(
     SELECT barcode, sum(pieces) as pieces_sold
     FROM contain natural join transaction_
     WHERE transaction_.store_id = o.store_id
     /*GROUP BY barcode
   ) AS T
	) AS DT
);*/


/*Most popular pairs of products*/
         
/*select p1, p2, max(total_buys)
FROM (
		Select S.barcode as p1, T.barcode as p2, count(distinct S.barcode) as total_buys
        from contain as S, contain as T
        where S.card_num = T.card_num and S.date_time = T.date_time and S.barcode < T.barcode 
) AS T;
*/

/*Percentage of own label products per category*/
/*With Total_label_products(Categ, S) as (select product.category_id, sum(contain.pieces)
from contain natural join product
where product.barcode = contain.barcode and product.brand_name = "own"
group by product.category_id),
Total_products(Categ, P) as (select product.category_id, sum(contain.pieces)
from contain natural join product
group by product.category_id)
select Total_products.categ, S*100/P as percentage
from Total_label_products natural join Total_products;*/

SELECT HOUR(transaction_.date_time) as H, SUM(CASE WHEN customer.age < 25 THEN 1 ELSE 0 END)*100/count(transaction_.card_num) AS "Under 25",
        SUM(CASE WHEN customer.age BETWEEN 25 AND 55 THEN 1 ELSE 0 END)*100/count(transaction_.card_num) AS "25-55",
        SUM(CASE WHEN customer.age > 55 THEN 1 ELSE 0 END)*100/count(transaction_.card_num) AS "Over 55"
FROM transaction_ natural join customer
GROUP BY H
ORDER BY H ASC;