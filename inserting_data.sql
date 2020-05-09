INSERT INTO customer(card_num, customer_name, birth_date, points, phone, city, family_members) values (8726109, 'Savvas Palamaropoulos', '1987-04-23', 76, 2103416340, 'Athens', 3);
INSERT INTO customer(card_num, customer_name, birth_date, points, phone, city, family_members) values (0000001, 'Pericles Rossoulis', '1994-02-23', 23, 2103416540, 'Athens', 4);
INSERT INTO customer(card_num, customer_name, birth_date, points, phone, city, family_members) values (0000002, 'Vaggelis Toccelis', '1994-12-21', 53, 2103496540, 'Athens', 4);
INSERT INTO customer(card_num, customer_name, birth_date, points, phone, city, family_members) values (0000003, 'Tryfon Kostotis', '1971-10-15', 153, 2103493540, 'Athens', 1);
INSERT INTO customer(card_num, customer_name, birth_date, points, phone, city, family_members) values (0000004, 'Thomas Mavrotis', '1999-10-15', 42, 2103412540, 'Athens', 2);
INSERT INTO customer(card_num, customer_name, birth_date, points, phone, city, family_members) values (0000005, 'Georgia Gabrea', '1992-08-01', 64, 2103499870, 'Volos', 1);
INSERT INTO customer(card_num, customer_name, birth_date, points, phone, city, family_members) values (0000006, 'Aphrodite Vallatou', '1995-10-15', 83, 2113493540, 'Kalamata', 1);
INSERT INTO customer(card_num, customer_name, birth_date, points, phone, city, family_members) values (0000007, 'Hermione Galanide', '2000-12-05', 17, 2129493540, 'Athens', 1);
INSERT INTO customer(card_num, customer_name, birth_date, points, phone, city, family_members) values (0000008, 'Aikaterini Andreadakou', '1990-10-31', 69, 2103403540, 'Athens', 1);
INSERT INTO customer(card_num, customer_name, birth_date, points, phone, city, family_members) values (0000009, 'Kyriake Kalloglou', '1988-10-25', 1742, 2103454540, 'Athens', 1);

INSERT INTO stores VALUES ('ATH01', 3000, '09:00:00', '20:00:00', 'Gramou', 19, 15267, 'Athens');
INSERT INTO stores VALUES ('ATH02', 1500, '09:30:00', '20:00:00', 'Smolika', 21, 15287, 'Athens');
INSERT INTO stores VALUES ('ATH03', 1000, '09:30:00', '20:00:00', 'Parnonos', 256, 14321, 'Athens');
INSERT INTO stores VALUES ('ATH04', 700, '10:00:00', '20:30:00', 'Olympou', 3, 15067, 'Athens');
INSERT INTO stores VALUES ('ATH05', 1500, '09:00:00', '20:00:00', 'Taygetou', 4, 15864, 'Athens');
INSERT INTO stores VALUES ('PAT01', 3000, '08:30:00', '21:00:00', 'Parnithas', 5, 19467, 'Patra');
INSERT INTO stores VALUES ('PAT02', 1200, '09:30:00', '20:00:00', 'Itis', 21, 15267, 'Patra');
INSERT INTO stores VALUES ('PAT03', 1500, '09:30:00', '20:00:00', 'Psiloriti', 42, 15255, 'Patra');
INSERT INTO stores VALUES ('THE01', 1300, '09:00:00', '20:00:00', 'Rodopis', 17, 19267, 'Thessaloniki');
INSERT INTO stores VALUES ('THE02', 1500, '09:00:00', '20:00:00', 'Pindou', 69, 21267, 'Thessaloniki');

INSERT INTO store_phone VALUES ('ATH01', 6976543210);
INSERT INTO store_phone VALUES ('ATH01', 6976543211);
INSERT INTO store_phone VALUES ('ATH01', 6976543212);
INSERT INTO store_phone VALUES ('ATH01', 6976543213);
INSERT INTO store_phone VALUES ('ATH02', 6976543214);
INSERT INTO store_phone VALUES ('ATH02', 6976543215);
INSERT INTO store_phone VALUES ('ATH03', 6976543216);
INSERT INTO store_phone VALUES ('ATH03', 6976543217);
INSERT INTO store_phone VALUES ('ATH04', 6976543218);
INSERT INTO store_phone VALUES ('ATH05', 6976543219);
INSERT INTO store_phone VALUES ('PAT01', 6976543220);
INSERT INTO store_phone VALUES ('PAT01', 6976543221);
INSERT INTO store_phone VALUES ('PAT01', 6976543222);
INSERT INTO store_phone VALUES ('PAT01', 6976543223);
INSERT INTO store_phone VALUES ('PAT02', 6976543224);
INSERT INTO store_phone VALUES ('PAT02', 6976543225);
INSERT INTO store_phone VALUES ('PAT03', 6976543226);
INSERT INTO store_phone VALUES ('THE01', 6976543227);
INSERT INTO store_phone VALUES ('THE02', 6976543228);
INSERT INTO store_phone VALUES ('THE02', 6976543229);


INSERT INTO category VALUES (1, 'fresh');
INSERT INTO category VALUES (2, 'fridge');
INSERT INTO category VALUES (3, 'kava');
INSERT INTO category VALUES (4, 'personal_care');
INSERT INTO category VALUES (5, 'home');
INSERT INTO category VALUES (6, 'pets');


INSERT INTO product (barcode, price, product_name, brand_name, first_transaction, category_id) VALUES (2345178909876, 003.00, 'MySalad', 'BarbaStathis', '2019-7-23', 1);
INSERT INTO product (barcode, price, product_name, brand_name, first_transaction, category_id) VALUES (1763908753456, 006.00, 'THEyoghurt', 'Delta', '2018-6-5', 2);
INSERT INTO product (barcode, price, product_name, brand_name, first_transaction, category_id) VALUES (2345178909888, 005.00, 'RedWine', 'Lakonia', '2020-2-2', 3);
INSERT INTO product (barcode, price, product_name, brand_name, first_transaction, category_id) VALUES (6785178909876, 001.50, 'BestNails', 'MyNail', '2015-7-6', 4);
INSERT INTO product (barcode, price, product_name, brand_name, first_transaction, category_id) VALUES (2345132109876, 016.99, 'THEkettle', 'DrCook', '2015-8-24', 5);
INSERT INTO product (barcode, price, product_name, brand_name, first_transaction, category_id) VALUES (3421178909876, 003.00, 'Dog toy', 'MyPet', '2019-9-5', 6);
INSERT INTO product (barcode, price, product_name, brand_name, first_transaction, category_id) VALUES (2345179999976, 002.50, 'Parizaki', 'Ifantis', '2010-6-6', 2);
INSERT INTO product (barcode, price, product_name, brand_name, first_transaction, category_id) VALUES (8745178909876, 000.48, 'Apple', 'BarbaStathis', '2009-11-11', 1);
INSERT INTO product (barcode, price, product_name, brand_name, first_transaction, category_id) VALUES (7865478909876, 001.00, 'Banana', 'BarbaStathis', '2008-7-19', 1);
INSERT INTO product (barcode, price, product_name, brand_name, first_transaction, category_id) VALUES (9876578909876, 002.10, 'YummyMilk', 'Fage', '2007-7-20', 2);
INSERT INTO product (barcode, price, product_name, brand_name, first_transaction, category_id) VALUES (2345998769876, 008.80, 'Freezed Octοpus', 'TheFisherman', '2008-8-8', 2);
INSERT INTO product (barcode, price, product_name, brand_name, first_transaction, category_id) VALUES (3333333909876, 001.20, 'Dog food', 'MyPet', '2006-7-9', 6);
INSERT INTO product (barcode, price, product_name, brand_name, first_transaction, category_id) VALUES (9909178983542, 003.98 , 'Toothpaste', 'AIM', '2020-4-19', 4);
INSERT INTO product (barcode, price, product_name, brand_name, first_transaction, category_id) VALUES (1456178909876, 002.66, 'Ultrex for Men', 'Ultrex', '2003-6-19', 4);
INSERT INTO product (barcode, price, product_name, brand_name, first_transaction, category_id) VALUES (6789178909809, 000.80, 'Lemonade!', 'Epsa', '2003-7-19', 3);
INSERT INTO product (barcode, price, product_name, brand_name, first_transaction, category_id) VALUES (9087187649876, 006.50, 'Best Pillow', 'DrHome', '2003-7-19', 5);
INSERT INTO product (barcode, price, product_name, brand_name, first_transaction, category_id) VALUES (9773908753456, 006.00, 'THEyoghurt', 'Fage', '2019-6-5', 2);
INSERT INTO product VALUES (9773908700001, 8.90, 'ChickenFillet850gr', 'own', '2019-6-5', 1);
INSERT INTO product VALUES (9773908700002, 8.96, 'MincedMeat', 'own', '2019-8-5', 1);
INSERT INTO product VALUES (9773908700003, 3.44, 'Chicken1Kg', 'Mimikos', '2015-6-5', 1);
INSERT INTO product VALUES (9773908700004, 6.90, 'ChickenNuggets', 'Mimikos', '2015-1-21', 1);
INSERT INTO product VALUES (9773908700005, 14.17, 'SalmonFillet850gr', 'own', '2016-10-15', 1);
INSERT INTO product VALUES (9773908700006 , 3.90, 'SardineFillet250gr', 'Thalassa', '2017-10-8', 1);
INSERT INTO product VALUES (9773908700007, 4.90, 'ChickenSchnitzel500gr', 'own', '2019-11-15', 1);
INSERT INTO product VALUES (9773908700008, 11.60, 'PorkSouvlaki1Kg', 'own', '2014-3-7', 1);
INSERT INTO product VALUES (9773908700009, 4.90, 'PorkChops500gr', 'Hasapis', '2012-6-5', 1);
INSERT INTO product VALUES (9773908700010, 4.90, 'KarditsaSausages500gr', 'own', '2014-2-21', 1);
INSERT INTO product VALUES (9773908700011, 1.29, 'GreekTomatoes', 'own', '2012-6-5', 1);
INSERT INTO product VALUES (9773908700012, 1.25, 'GreekZucchinis', 'own', '2012-3-4', 1);
INSERT INTO product VALUES (9773908700013, 0.77, 'GreekCarrots', 'own', '2014-2-3', 1);
INSERT INTO product VALUES (9773908700014, 1.09, 'GreekAubergines', 'own', '2012-7-30', 1);
INSERT INTO product VALUES (9773908700015, 1.99, 'GreekApples', 'own', '2012-3-9', 1);





INSERT INTO provides VALUES (1, 'ATH01');
INSERT INTO provides VALUES (2, 'ATH01');
INSERT INTO provides VALUES (3, 'ATH01');
INSERT INTO provides VALUES (4, 'ATH01');
INSERT INTO provides VALUES (5, 'ATH01');
INSERT INTO provides VALUES (1, 'ATH02');
INSERT INTO provides VALUES (2, 'ATH02');
INSERT INTO provides VALUES (3, 'ATH02');
INSERT INTO provides VALUES (1, 'ATH03');
INSERT INTO provides VALUES (2, 'ATH03');
INSERT INTO provides VALUES (3, 'ATH03');
INSERT INTO provides VALUES (4, 'ATH03');
INSERT INTO provides VALUES (6, 'ATH03');
INSERT INTO provides VALUES (2, 'ATH04');
INSERT INTO provides VALUES (3, 'ATH04');
INSERT INTO provides VALUES (4, 'ATH04');
INSERT INTO provides VALUES (5, 'ATH04');
INSERT INTO provides VALUES (1, 'ATH05');
INSERT INTO provides VALUES (2, 'ATH05');
INSERT INTO provides VALUES (3, 'ATH05');
INSERT INTO provides VALUES (4, 'ATH05');
INSERT INTO provides VALUES (5, 'ATH05');
INSERT INTO provides VALUES (6, 'ATH05');
INSERT INTO provides VALUES (1, 'PAT01');
INSERT INTO provides VALUES (2, 'PAT01');
INSERT INTO provides VALUES (3, 'PAT01');
INSERT INTO provides VALUES (4, 'PAT01');
INSERT INTO provides VALUES (5, 'PAT01');
INSERT INTO provides VALUES (6, 'PAT01');
INSERT INTO provides VALUES (1, 'PAT02');
INSERT INTO provides VALUES (2, 'PAT02');
INSERT INTO provides VALUES (3, 'PAT02');
INSERT INTO provides VALUES (4, 'PAT02');
INSERT INTO provides VALUES (1, 'PAT03');
INSERT INTO provides VALUES (2, 'PAT03');
INSERT INTO provides VALUES (5, 'PAT03');
INSERT INTO provides VALUES (6, 'PAT03');
INSERT INTO provides VALUES (1, 'THE01');
INSERT INTO provides VALUES (2, 'THE01');
INSERT INTO provides VALUES (3, 'THE01');
INSERT INTO provides VALUES (4, 'THE01');
INSERT INTO provides VALUES (5, 'THE01');
INSERT INTO provides VALUES (6, 'THE01');
INSERT INTO provides VALUES (1, 'THE02');
INSERT INTO provides VALUES (2, 'THE02');
INSERT INTO provides VALUES (3, 'THE02');
INSERT INTO provides VALUES (4, 'THE02');

/*Not finished*/ 
INSERT INTO offers VALUES ('ATH01', 2345178909876, 3, 5);
INSERT INTO offers VALUES ('ATH02', 2345178909876, 8, 1);
INSERT INTO offers VALUES ('ATH03', 2345178909876, 4, 2);
INSERT INTO offers VALUES ('ATH05', 2345178909876, 1, 7);
INSERT INTO offers VALUES ('PAT01', 2345178909876, 6, 9);
INSERT INTO offers VALUES ('PAT02', 2345178909876, 10, 7);
INSERT INTO offers VALUES ('THE01', 2345178909876, 12, 1);
INSERT INTO offers VALUES ('THE02', 2345178909876, 3, 10);
INSERT INTO offers VALUES ('ATH01', 1763908753456, 4, 2);
INSERT INTO offers VALUES ('ATH04', 1763908753456, 17, 42);
INSERT INTO offers VALUES ('ATH02', 1763908753456, 32, 1);
INSERT INTO offers VALUES ('ATH03', 1763908753456, 4, 3);
INSERT INTO offers VALUES ('ATH05', 1763908753456, 10, 7);
INSERT INTO offers VALUES ('PAT01', 1763908753456, 6, 8);
INSERT INTO offers VALUES ('PAT03', 1763908753456, 9, 7);
INSERT INTO offers VALUES ('THE01', 1763908753456, 32, 1);
INSERT INTO offers VALUES ('THE02', 1763908753456, 7, 1);
INSERT INTO offers VALUES ('PAT02', 1763908753456, 2, 1);
INSERT INTO offers VALUES ('ATH01', 2345178909888, 9, 4);
INSERT INTO offers VALUES ('ATH04', 2345178909888, 13, 12);
INSERT INTO offers VALUES ('ATH02', 2345178909888, 30, 9);
INSERT INTO offers VALUES ('ATH03', 2345178909888, 8, 7);
INSERT INTO offers VALUES ('ATH05', 2345178909888, 1, 2);
INSERT INTO offers VALUES ('PAT01', 2345178909888, 4, 4);
INSERT INTO offers VALUES ('PAT03', 2345178909888, 10, 2);
INSERT INTO offers VALUES ('THE01', 2345178909888, 2, 1);
INSERT INTO offers VALUES ('THE02', 2345178909888, 5, 4);
INSERT INTO offers VALUES ('PAT02', 2345178909888, 21, 9);

INSERT INTO older prices (barcode, price, start_date, end_date) VALUES (2345178909876, 3.19, '2019-9-23', '2019-10-18');
INSERT INTO older prices (barcode, price, start_date, end_date) VALUES (2345178909888, 4.79, '2020-3-26', '2020-4-16');
INSERT INTO older prices (barcode, price, start_date, end_date) VALUES (2345179999976, 2.79, '2015-5-2', '2015-11-17');
INSERT INTO older prices (barcode, price, start_date, end_date) VALUES (8745178909876, 0.43, '2014-6-30', '2014-8-11');
INSERT INTO older prices (barcode, price, start_date, end_date) VALUES (7865478909876, 0.90, '2012-2-13', '2012-7-16');
INSERT INTO older prices (barcode, price, start_date, end_date) VALUES (9876578909876, 2.68, '2017-5-4', '2017-9-9');
INSERT INTO older prices (barcode, price, start_date, end_date) VALUES (1456178909876, 2.57, '2016-2-15', '2016-3-3');
INSERT INTO older prices (barcode, price, start_date, end_date) VALUES (9773908753456, 6.90, '2019-9-6', '2019-10-19');
INSERT INTO older prices (barcode, price, start_date, end_date) VALUES (9773908700001, 9.39, '2020-1-22', '2020-2-14');
INSERT INTO older prices (barcode, price, start_date, end_date) VALUES (9773908700002, 8.34, '2019-9-2', '2019-11-11');
INSERT INTO older prices (barcode, price, start_date, end_date) VALUES (9773908700004, 5.84, '2017-8-10', '2017-8-18');
INSERT INTO older prices (barcode, price, start_date, end_date) VALUES (9773908700007, 5.39, '2019-11-15', '2019-12-20');
INSERT INTO older prices (barcode, price, start_date, end_date) VALUES (9773908700008, 9.89, '2018-4-30', '2018-9-10');

INSERT INTO older prices (start_date, end_date, price, barcode) VALUES ('2019-7-23', '2019-8-27', 004.00, 2345178909876) 
INSERT INTO older prices (start_date, end_date, price, barcode) VALUES ('2019-2-6', '2019-4-9', 004.55, 1763908753456)
INSERT INTO older prices (start_date, end_date, price, barcode) VALUES ('2020-2-2', '2020-3-4', 0006.00, 2345178909888)
INSERT INTO older prices (start_date, end_date, price, barcode) VALUES ('2016-8-7', '2016-12-4', 003.00, 6785178909876)
INSERT INTO older prices (start_date, end_date, price, barcode) VALUES ('2019-6-5', '2019-12-3', 005.67, 9773908753456)
INSERT INTO older prices (start_date, end_date, price, barcode) VALUES ('2007-9-8', '2007-10-11', 007.00, 9087187649876)
INSERT INTO older prices (start_date, end_date, price, barcode) VALUES ('2005-9-8', '2005-12-3', 002.00, 6789178909809)
INSERT INTO older prices (start_date, end_date, price, barcode) VALUES ('2004-6-5', '2004-7-7', 003.88, 1456178909876)
INSERT INTO older prices (start_date, end_date, price, barcode) VALUES ('2006-8-8', '2006-12-12', 003.44, 1456178909876)
INSERT INTO older prices (start_date, end_date, price, barcode) VALUES ('2019-12-9', '2019-12-29', 02.50, 2345178909876)
INSERT INTO older prices (start_date, end_date, price, barcode) VALUES ('2020-1-2', '2020-3-3', 005.99, 1763908753456)
INSERT INTO older prices (start_date, end_date, price, barcode) VALUES ('2018-6-5', '2018-10-3', 006.99, 1763908753456)
