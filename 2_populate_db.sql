insert into Publisher values ("1234","Judah", "Washington DC","123-1234");
insert into Publisher values ("5678","Boss", "California","132-1695");
insert into Publisher values ("9101","Bass", "CA","132-1234");

insert into Author values ("456","Jeff","Smith");
insert into Author values ("123","R.R.","Martin");
insert into Author values ("789","Nut","Badass");

insert into Book values ("1234","Fundamentals of Database Systems","textbook",20,"2000-01-01","1234");
insert into Book values ("8330418998","Game of Thrones","fantasy",10,"2002-01-01","5678");
insert into Book values ("9810","Grand Blue","novel",10,"2001-01-01","9101");
insert into Book values ("1235","Fundamentals of Data","textbook",10,"2000-01-05","1234");

insert into Written_by values ("1234","456");
insert into Written_by values ("8330418998","123");
insert into Written_by values ("9810","789");
insert into Written_by values ("1235","456");

insert into Editor values ("5555","Edi","Edeh");
insert into Editor values ("6666","Ed","Edin");
insert into Editor values ("7777","E","Edehei");

insert into Edited_by values("5555","1234");
insert into Edited_by values("6666","8330418998");
insert into Edited_by values("6666","9810");
insert into Edited_by values("6666","1234");
insert into Edited_by values("7777","1235");

insert into Customer values ("1111","Andrei", "California");
insert into Customer values ("2222","Mike Kay", "California");
insert into Customer values ("3333","Ilia", "California");

insert into Orders values ("222","2017-01-02","1111");
insert into Orders values ("223","2017-01-03","2222");
insert into Orders values ("224","2017-01-04","3333");
insert into Orders values ("225","2017-01-02","1111");
insert into Orders values ("226","2017-01-03","2222");
insert into Orders values ("227","2017-01-03","2222");


insert into Order_book values ("222","1234",2);
insert into Order_book values ("223","8330418998",3);
insert into Order_book values ("224","9810",4);
insert into Order_book values ("225","1234",2);
insert into Order_book values ("226","1234",2);
insert into Order_book values ("227","1234",2);

-- delete from Publisher where pid = 1235;

-- update Book set isbn = 4568 where isbn = 4567;

-- delete from Edited_by where isbn = 4568;
-- delete from Written_by where isbn = 4568;
-- delete from Book where isbn = 4568;
-- delete from Publisher where pid = 1235;


#update Edited_by set isbn = 4568 where isbn = 4567;
#update Written_by set isbn = 4568 where isbn = 4567;
#update Order_book set isbn = 4568 where isbn = 4567;
#	update Book set isbn = 4568 where isbn = 4567;