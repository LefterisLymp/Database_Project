

/*Customer info*/
CREATE VIEW customer_info as
select *
from customer;

/*Sells per category per store*/
CREATE VIEW sell_per_category AS
SELECT contain.*
FROM offers natural join (contain natural join product) 
WHERE offers.store_id = 'ATH01' and product.category_id = 1
ORDER BY contain.date_time ASC;