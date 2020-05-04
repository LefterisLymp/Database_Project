# Database_Project
create table customer(
       card_num char(7)
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

create table category(
       category_id varchar(10),
       category_name varchar(50),
       primary key(category_id)
       );
create table product(
       barcode char(7),
       price double,
       product_name varchar(50),
       brand_name varchar(50),
       first_transaction date,
       category_id char(10),
       primary key(barcode),
       foreign key (category_id) references category(category_id)
       );
       
create table older prices(
       start_date date,
       end_date date,
       price double,
       barcode char(7),
       primary key(start_date, barcode),
       foreign key(barcode) references product
       );
       
create table contains_ (
       card_num char(7),
       date_time date,
       pieces numeric(3, 0),
       barcode char(7),
       primary key(card_num, date_time, barcode),
       foreign key(card_num) references customer(card_num),
       foreign key(date_time) references transaction_(date_time),
       foreign key(barcode) references product(barcode)
       );
