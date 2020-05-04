CREATE TABLE category(
       category_id varchar(10),
       category_name varchar(50),
       primary key(category_id)
);

CREATE TABLE product(
       barcode numeric(13,0),
       price numeric(5, 2),
       product_name varchar(50),
       brand_name varchar(50),
       first_transaction date,
       category_id char(10),
       primary key(barcode),
       foreign key (category_id) references category(category_id)
);

CREATE TABLE customer(
       card_num char(7),
       customer_name varchar(50),
       birth_date date,
       points int,
       phone numeric(10,0),
       age numeric(3,0),
       street varchar(50),
       street_num numeric(3,0),
       postal_code numeric(5,0),
       city varchar(50),
       family_members numeric(3,0),
       pet numeric(3,0),
       primary key(card_num)
);

CREATE TABLE stores (
	store_id varchar(5),
	size numeric (5,0),
	open_time varchar (4),
	end_time varchar (4),
	street varchar (15),
	number_ numeric (3,0),
	postal_code numeric (5,0),
	city varchar(15),
	primary key (store_id)
);

create table transaction_ (
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
	category_id varchar(10),
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