
INSERT INTO customers (cID, cName, cAge) values
	(1, "Minh QUan", 10),
    (2, "Ngoc Oanh", 20),
    (3, "Hong Ha", 50);
INSERT INTO orders (oID, cID, oDate) values
	(1, 1, "2022-03-21"),
    (2, 2, "2022-03-23"),
    (3, 1, "2022-03-16");
INSERT INTO products (pID, pName, pPrice) values
	(1, "May giat", 3),
	(2, "Tu lanh", 5),
	(3, "Dieu hoa", 7),
	(4, "Quatt", 1),
	(5, "Bep dien", 2);
INSERT INTO orderdetails(oID, pID, oQuantity) values
	(1, 1, 3),
    (1, 3, 7),
    (1, 4, 2),
    (2, 1, 1),
    (3, 1, 8),
    (2, 5, 4),
    (2, 3, 3);
