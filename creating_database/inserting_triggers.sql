DROP TRIGGER update_points;
DROP TRIGGER delete_product;
DROP TRIGGER inserting_into_older_prices;

delimiter |
CREATE TRIGGER update_points AFTER INSERT ON transaction_
       FOR EACH ROW
       BEGIN
         UPDATE customer SET points = points + FLOOR((new.Total_amount)/10) WHERE card_num = new.card_num;
END;

|

/*CREATE TRIGGER delete_product BEFORE DELETE ON product
FOR EACH ROW
BEGIN
  /*We delete all the tuples in "offers" related to this product*/
  DELETE FROM offers WHERE barcode = old.barcode;
  /*We want to mantain information for old products*/
END;*/

CREATE TRIGGER delete_product BEFORE DELETE ON product
FOR EACH ROW
BEGIN
  /*We want to mantain information for old products*/
  SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'DELETE canceled! We want information for old products. 
  Delete product from "offers" table instead';  
END

|

CREATE TRIGGER inserting_into_older_prices AFTER UPDATE ON product
	FOR EACH ROW
	BEGIN
		IF (old.price <> new.price) THEN
			UPDATE older_prices
				SET end_date = CURRENT_DATE
			WHERE (product.barcode = older_prices.barcode and end_date = NULL);
			INSERT INTO older_prices (barcode, start_date, price) values (new.barcode, CURRENT_DATE, new.price);
		END IF;
END;
