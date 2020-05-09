CREATE TABLE customer(
       card_num char(7),
       customer_name varchar(50) DEFAULT NULL,
       birth_date DATE DEFAULT NULL,
       age numeric(3,0) GENERATED ALWAYS AS (FLOOR(DATEDIFF('2020-01-01', birth_date) / 365.2425)),
       points int DEFAULT 0,
       phone numeric(10,0) DEFAULT NULL,
       street varchar(50) DEFAULT NULL,
       street_num numeric(3,0) DEFAULT NULL,
       postal_code numeric(5,0) DEFAULT NULL,
       city varchar(50) DEFAULT NULL,
       family_members numeric(1,0) DEFAULT NULL,
       pet numeric(3,0) DEFAULT NULL,
       primary key(card_num)
);

CREATE TABLE category(
       category_id numeric(2, 0),
       category_name varchar(50),
	   primary key(category_id)
);

CREATE TABLE product(
       barcode numeric(13,0),
       price numeric(5, 2),
       product_name varchar(50),
       brand_name varchar(50),
       first_transaction date,
       category_id numeric(2, 0),
       primary key(barcode)
);

CREATE INDEX prodcat ON product(category_id);

CREATE TABLE stores (
	store_id varchar(5),
	size numeric (5,0),
	open_time TIME(0),
	close_time TIME(0),
	street varchar (15),
	number_ numeric (3,0),
	postal_code numeric (5,0),
	city varchar(15),
	primary key (store_id)
);

CREATE TABLE transaction_ (
	payment_method varchar(10),
    Total_amount numeric(6,2),
    Total_pieces numeric(3,0),
    card_num char(7),
    date_time date,
    primary key (card_num, date_time),
    foreign key (card_num) references customer(card_num)
);

CREATE TABLE contain (
       card_num char(7),
       date_time date,
       pieces numeric(3, 0),
       barcode numeric(13,0),
       primary key(card_num, date_time, barcode),
       foreign key(card_num, date_time) references transaction_(card_num, date_time),
       foreign key(barcode) references product(barcode)
);
  
CREATE TABLE older_prices(
       start_date date,
       end_date date,
       price numeric(5,2),
       barcode numeric(13,0),
       primary key(start_date, barcode),
       foreign key(barcode) references product(barcode)
);

CREATE TABLE store_phone (
	store_id varchar(5),
	phone numeric(10,0),
	primary key (phone),
	foreign key (store_id) references stores(store_id)
);

CREATE TABLE provides (
	category_id numeric(2, 0),
	store_id varchar(5),
	primary key (category_id, store_id),
	foreign key (store_id) references stores(store_id),
	foreign key (category_id) references category(category_id)
);

CREATE TABLE offers (
	store_id varchar(5),
	barcode numeric(13,0),
	alley numeric(3,0),
	shelf numeric(2,0),
	primary key (store_id, barcode),
	foreign key (store_id) references stores(store_id),
	foreign key (barcode) references product(barcode)
);