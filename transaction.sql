create table transaction (
Payment_method varchar(10),
Total_amount numeric(6,2),
Total_pieces numeric(3,0),
card_num char(7),
date_time date,
primary key (card_num),
foreign key (card_num) references contain(card_num),
foreign key (date_time) references contain(date_time)
);