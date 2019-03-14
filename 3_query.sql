-- select distinct c.eid,c.fname, c.lname from Editor as c, Edited_by as k where k.isbn  = '8330418998' and k.eid = c.eid;

-- select distinct c.name from Customer as c, Book as b, Orders as o, Order_book as ob where b.btype = "novel" and b.isbn = ob.isbn and ob.oid = o.oid and o.cid = c.cid order by c.name DESC;

-- select distinct p.name, p.address from Publisher as p, Book as b where b.btype = "textbook" and b.pid = p.pid;

-- select distinct a.aid, a.fname, a.lname, count(*) as count from Author as a, Written_by as wb, Book as b where b.btype = "novel" and b.isbn = wb.isbn and wb.aid = a.aid group by a.aid having count >=2;

-- select distinct a.fname, a.lname from Book as b, Author as a, Written_by as wb where b.title = "Fundamentals of Database Systems" and wb.aid = a.aid and b.isbn = wb.isbn;

-- select distinct b.title, b.isbn, b.btype from Book as b, Author as a, Written_by as wb where a.fname = "Jeff" and a.lname = "Smith" and wb.aid = a.aid and b.isbn = wb.isbn;

-- select distinct p.name,p.phone,p.pid, count(*) as count from Publisher as p, Book as b where p.pid = b.pid group by p.pid having count >=2;

-- select distinct max(b.price) from Author as a, Written_by as wb, Book as b where a.aid = wb.aid and wb.isbn = b.isbn;

-- select distinct e.eid, count(*) as count from Editor as e, Edited_by as eb where e.eid = eb.eid group by e.eid having count >2;

-- select distinct o.oid, o.order_date from Customer as c, Orders as o, Order_book as ob where ob.oid = o.oid and c.cid = o.cid and c.name = "Mike Kay";

-- select distinct b.isbn, b.price, b.title from Customer as c, Orders as o, Order_book as ob, Book as b where ob.oid = o.oid and c.cid = o.cid and ob.isbn = b.isbn and c.name = "Mike Kay";

-- select distinct o.oid, o.order_date from Book as b, Orders as o, Order_book as ob where ob.isbn = b.isbn and o.oid = ob.oid and b.title = "Fundamentals of Database Systems";

-- select * from Orders as o where o.order_date < "2017-11-11 00:00:00";

-- select c.cid, c.name, count(*) as count from Customer as c, Orders as o, Order_book as ob where o.oid = ob.oid and c.cid = o.cid group by c.cid having count >2;

select b.title,b.price from Book as b where b.price=(select max(price) from Book);