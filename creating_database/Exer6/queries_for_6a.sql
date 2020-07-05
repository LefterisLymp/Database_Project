/*select T.store_id, T.date_time
from stores as S, transaction_ as T
where S.store_id = T.store_id;
*/

/*All datetimes with transactions in ATH01*/


select contain.barcode, contain.pieces, contain.date_time
from transaction_ natural join contain
where store_id = 'ATH01';

select contain.barcode, contain.pieces, contain.date_time
from transaction_ natural join contain
where store_id = 'ATH01' and CAST(date_time as DATE) between '2015-1-1' and '2020-1-1';

/*Same store, same date 6a1*/ 

select contain.barcode, contain.pieces, contain.date_time
from transaction_ natural join contain
where store_id = 'ATH01' and (CAST(date_time AS DATE)) = '2015-7-27';



/*Same store, total_pieces*/

select contain.barcode, contain.pieces, contain.date_time
from transaction_ natural join contain natural join total_pieces
where transaction_.store_id = 'ATH01' and (total_pieces.totpcs > 5);



/*Same store, total cost*/

select contain.barcode, contain.pieces, contain.date_time
from transaction_ natural join contain
WHERE transaction_.store_id = 'ATH01' AND (transaction_.Total_amount between 30 and 50);

 
 /*Same store, same payment method*/

select contain.barcode, contain.pieces, contain.date_time
from transaction_ natural join contain
where transaction_.store_id = 'ATH01' and (transaction_.payment_method = 'cash') and CAST(date_time as DATE) between '2015-1-1' and '2020-1-1';


/*Same store, same category*/

select contain.barcode, contain.date_time, contain.pieces
from (transaction_ natural join contain) join product on (contain.barcode = product.barcode)
where (transaction_.store_id = 'ATH01' and product.category_id = 4);
