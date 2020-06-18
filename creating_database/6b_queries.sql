/*10 most popular products*/
/*SELECT p.product_name, sum(pieces) as pieces_bought
FROM contain, product as p
WHERE contain.card_num = 20 and contain.barcode = p.barcode
GROUP BY contain.barcode
ORDER BY pieces_bought DESC
LIMIT 10 OFFSET 0;*/

/*Which and how many stores does the customer visit*/
/*FROM transaction_
WHERE transaction_.card_num = 4;

SELECT count(distinct store_id)
FROM transaction_
WHERE transaction_.card_num = 4;*/

/*How many times and which hours*/
/*SELECT HOUR(date_time) as Hr, COUNT(*) as cnt
FROM transaction_
where card_num = 4 and store_id = 'ATH01'
GROUP BY Hour(date_time)
ORDER BY cnt DESC*/

/*Select week(date_time) as w, year(date_time) as y, count(*) as c
from transaction_
where card_num = 4
order by w,y asc
LIMIT 1;*/

/*Average transactions per week*/
select count(*)/(FLOOR(DATEDIFF('2020-06-21', min(date_time))/7)) as avg_week
from transaction_
where card_num = 4;

/*Average transactions per month*/
select count(*)/(FLOOR(DATEDIFF('2020-06-21', min(date_time))/30)) as avg_mon
from transaction_
where card_num = 4;