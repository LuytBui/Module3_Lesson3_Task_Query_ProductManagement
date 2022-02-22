
/* Hiển thị các thông tin  gồm oID, oDate, oPrice của tất cả các hóa đơn trong bảng Order */
SELECT oID, oDate, oTotalPrice FROM orders;

/* Hiển thị danh sách các khách hàng đã mua hàng, và danh sách sản phẩm được mua bởi các khách */
SELECT customers.cName, products.pName, orderdetails.oQuantity 
FROM customers JOIN orders ON customers.cID = orders.cID
JOIN orderdetails ON orders.oID = orderdetails.oID
JOIN products ON products.pID = orderdetails.pID;
	

/* Hiển thị tên những khách hàng không mua bất kỳ một sản phẩm nào */
SELECT cName
FROM customers LEFT JOIN orders ON customers.cID = orders.cID
WHERE oID IS NULL;


SELECT DISTINCT customers.cName
FROM customers 
WHERE customers.cID NOT IN (SELECT cID FROM orders);

/* Hiển thị mã hóa đơn, ngày bán và giá tiền của từng hóa đơn 
(giá một hóa đơn được tính bằng tổng giá bán của từng loại mặt hàng xuất hiện trong hóa đơn. 
Giá bán của từng loại được tính = odQTY*pPrice) */
SELECT orders.oID, customers.cName, orders.oDate, sum(orderdetails.oQuantity * products.pPrice) as oTotalPrice
FROM orders JOIN orderdetails ON orders.oID = orderdetails.oID
JOIN products ON products.pID = orderdetails.pID
JOIN customers ON customers.cID = orders.cID
GROUP BY orders.oID, orders.oDate;




