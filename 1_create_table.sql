create table Customer (cid CHAR(9), name VARCHAR(20), address VARCHAR(80), primary key (cid));

create table Orders (oid CHAR(9) , order_date DATE,cid CHAR(9), foreign key (cid) references Customer(cid) on update cascade on delete cascade , primary key (oid));

create table Publisher (pid CHAR(10), name VARCHAR(30), address VARCHAR(80), phone CHAR(10), primary key (pid));

create table Book (isbn CHAR(10), title VARCHAR(100), btype VARCHAR(15), price DECIMAL (10,2), pub_date DATE, pid CHAR(10), primary key (isbn),foreign key(pid) references Publisher(pid) on update cascade on delete cascade);

create table Order_book(oid CHAR(9), isbn CHAR(10), no_of_copy INT, foreign key (oid) references Orders(oid) on update cascade on delete cascade, foreign key (isbn) references Book(isbn) on update cascade on delete cascade);

create table Author (aid CHAR(4), fname VARCHAR(15), lname VARCHAR(15), primary key (aid));

create table Written_by(isbn CHAR(10), aid CHAR(4), foreign key (isbn) references Book(isbn) on update cascade on delete cascade, foreign key (aid) references Author(aid) on update cascade on delete cascade);

create table Editor (eid CHAR(4), fname VARCHAR(15), lname VARCHAR(15), primary key (eid));

create table Edited_by(eid CHAR(4), isbn CHAR(10), foreign key (eid) references Editor(eid) on update cascade on delete cascade, foreign key (isbn) references Book(isbn) on update cascade on delete cascade);

