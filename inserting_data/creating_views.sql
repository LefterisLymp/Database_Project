/*Customer info*/
CREATE VIEW customer_info as
select *
from customer;

/*Sells per category per store*/
CREATE VIEW sell_per_category AS
SELECT category_id, store_id, count(*)
FROM offers natural join (contain natural join product) 
GROUP BY category_id, store_id
ORDER BY store_id ASC;