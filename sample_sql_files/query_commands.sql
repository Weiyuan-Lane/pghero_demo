SELECT SalesOrder.*, Shipper.* FROM SalesOrder JOIN Shipper ON SalesOrder.shipperid = Shipper.shipperid;

SELECT 
  SalesOrder.*, Shipper.*, OrderDetail.*, Product.*, Employee.*, EmployeeTerritory.*, Territory.*, Category.*
FROM 
  SalesOrder 
JOIN 
  Shipper ON SalesOrder.shipperid = Shipper.shipperid
JOIN
  OrderDetail ON SalesOrder.orderid = OrderDetail.orderid
JOIN
  Employee ON SalesOrder.empid = Employee.empid
JOIN
  EmployeeTerritory ON EmployeeTerritory.employeeid = Employee.empid
JOIN
  Territory ON EmployeeTerritory.territoryid = Territory.territoryid
JOIN
  Region ON Region.regionid = Territory.regionid
JOIN
  Product ON Product.productid = OrderDetail.productid
JOIN
  Supplier ON Product.supplierid = Supplier.supplierid
JOIN
  Category ON Product.categoryid = Category.categoryid;
