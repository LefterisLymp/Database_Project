select T.store_id, T.date_time
from stores as S, transaction_ as T
where S.store_id = T.store_id;

/*All datetimes with transactions in ATH01*/
select date_time
from transaction_
where store_id = 'ATH01';

/*Same store, same date 6a1*/ 
select date_time 
from transaction_
where store_id = 'ATH01' and (CAST(date_time AS DATE) = CAST('2015-7-27' AS DATE));

/*Same store, total_pieces*/
select Total_pieces.DateT
from Total_pieces join transaction_ on (Total_pieces.CardNo = transaction_.card_num and Total_pieces.DateT = transaction_.date_time)
where transaction_.store_id = 'ATH01' and (Total_pieces.Totpcs < 50);

/*Same store, total cost*/
SELECT date_time
FROM transaction_
WHERE transaction_.store_id = 'ATH01' AND (transaction_.Total_amount = 35.03);
 
 /*Same store, same payment method*/
select date_time
from transaction_
where transaction_.store_id = 'ATH01' and (transaction_.payment_method = 'card');

/*Same store, same category*/
select distinct transaction_.date_time
from (transaction_ natural join contain) join product on (contain.barcode = product.barcode)
where (transaction_.store_id = 'ATH01' and product.category_id = 4);
