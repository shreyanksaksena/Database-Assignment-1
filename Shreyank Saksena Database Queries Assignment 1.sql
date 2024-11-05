drop table orders;
drop table products;
drop table customers;
drop table offices;
drop table salesreps;

create table ORDERS(
ORDER_NUM varchar(6) constraint pk_orders primary key,
ORDER_DATA date,
CUST char(4),
REP char(3),		
MFR char(3),
PRODUCT varchar(10),
QTY int, 
AMOUNT money
);

create table PRODUCTS(
MFR_ID char(3),
PRODUCT_ID varchar(10),
DESCRIPTION varchar(20),
PRICE money,
QTY_ON_HAND int,
constraint pk_products primary key(MFR_ID, PRODUCT_ID)
);

create table CUSTOMERS(
CUST_NUM char(4) constraint pk_customers primary key,
COMPANY varchar(20),
CUST_REP char(3),
CREDIT_LIMIT money
);

create table OFFICES(
OFFICE char(2) constraint pk_offices primary key,
CITY varchar(20),
REGION varchar(10),
MGR char(3),
TARGET money,
SALES money );

create table SalesReps(
emp_num char(3) constraint pk_salesRep primary key,
name varchar(20),
age int,
rep_office char(2),
title varchar(10),
manager char(3), 
hire_date date,
quota money,
sales money );


INSERT INTO CUSTOMERS VALUES('2101', 'Jones Mfg.', '106', '$65000');
INSERT INTO CUSTOMERS VALUES('2102', 'First Corp.', '101', '$65000');
INSERT INTO CUSTOMERS VALUES('2103', 'Acme Mfg.', '105', '$50000');
INSERT INTO CUSTOMERS VALUES('2105', 'AAA Investments','101', '$45000' );
INSERT INTO CUSTOMERS VALUES('2106', 'Fred Lewis Corp.', '102', '$65000');
INSERT INTO CUSTOMERS VALUES('2107', 'Ace International', '110', '$35000');
INSERT INTO CUSTOMERS VALUES('2108', 'Holm & Landis', '109', '$55000');
INSERT INTO CUSTOMERS VALUES('2109', 'Chen Associates', '103', '$25000');
INSERT INTO CUSTOMERS VALUES('2111', 'JCP Inc.', '103', '$50000');
INSERT INTO CUSTOMERS VALUES('2112', 'Zetacorp', '108', '$50000');
INSERT INTO CUSTOMERS VALUES('2113', 'Ian & Schmidt', '104', '$20000');
INSERT INTO CUSTOMERS VALUES('2114', 'Orion Corp.', '102', '$20000');
INSERT INTO CUSTOMERS VALUES('2115', 'Smithson Corp.', '101', '$20000');
INSERT INTO CUSTOMERS VALUES('2117', 'J.P. Sinclair', '106', '$35000');
INSERT INTO CUSTOMERS VALUES('2118', 'Miswest Sytems', '108', '$60000');
INSERT INTO CUSTOMERS VALUES('2119', 'Solomon Inc.', '109', '$25000');
INSERT INTO CUSTOMERS VALUES('2120', 'Rico Enterprises', '102', '$50000');
INSERT INTO CUSTOMERS VALUES('2121', 'QMA Assoc.', '103', '$54000');
INSERT INTO CUSTOMERS VALUES('2122', 'Three-Way Lines', '105', '$30000');
INSERT INTO CUSTOMERS VALUES('2123', 'Carter & sons', '102', '$40000');
INSERT INTO CUSTOMERS VALUES('2124', 'Peter Brothers', '107', '$40000');

INSERT INTO OFFICES VALUES ('11','New York','Eastern','106','$575000','$692637');
INSERT INTO OFFICES VALUES ('12','Chicago','Eastern','104','$800000','$735042');
INSERT INTO OFFICES VALUES ('13','Atlanta','Eastern','105','$350000','$367911');
INSERT INTO OFFICES VALUES ('21','Los Angeles','Western','108','$725000','$835915');
INSERT INTO OFFICES VALUES ('22','Denver','Western','108','$300000','$186042');

INSERT INTO ORDERS VALUES ('112961','17-Dec-99','2117','106','REI','2A44L',7,'$31500');
INSERT INTO ORDERS VALUES ('112963','17-Dec-99','2103','105','ACI','41004',28,'$3276');
INSERT INTO ORDERS VALUES ('112968','12-Oct-99','2102','101','ACI','41004',34,'$3978');
INSERT INTO ORDERS VALUES ('112975','12-Oct-99','2111','103','REI','2A44G',6,'$2100');
INSERT INTO ORDERS VALUES ('112979','12-Oct-99','2114','102','ACI','4100Z',6,'$15000');
INSERT INTO ORDERS VALUES ('112983','27-Dec-99','2103','105','ACI','41004',6,'$702');
INSERT INTO ORDERS VALUES ('112987','31-Dec-99','2103','105','ACI','4100Y',11,'$27500');
INSERT INTO ORDERS VALUES ('112989','03-Jan-00','2101','106','FEA','114',6,'$1458');
INSERT INTO ORDERS VALUES ('112992','04-Nov-99','2118','108','ACI','41002',10,'$760');
INSERT INTO ORDERS VALUES ('112993','04-Jan-99','2106','102','REI','2A45C',24,'$1896');
INSERT INTO ORDERS VALUES ('112997','08-Jan-00','2124','107','BIC','41003',1,'$652');
INSERT INTO ORDERS VALUES ('113003','25-Jan-00','2108','109','IMM','779C',3,'$5625');
INSERT INTO ORDERS VALUES ('113007','08-Jan-00','2112','108','IMM','773C',3,'$2925');
INSERT INTO ORDERS VALUES ('113012','11-Jan-00','2111','105','ACI','41003',35,'$3745');
INSERT INTO ORDERS VALUES ('113013','14-Jan-00','2118','108','BIC','41003',1,'$652');
INSERT INTO ORDERS VALUES ('113024','20-Jan-00','2114','108','QSA','XK47',20,'$7100');
INSERT INTO ORDERS VALUES ('113027','22-Jan-00','2103','105','ACI','41002',54,'$4104');
INSERT INTO ORDERS VALUES ('113034','29-Jan-00','2107','110','REI','2A45C',8,'$632');
INSERT INTO ORDERS VALUES ('113036','30-Jan-00','2107','110','ACI','4100Z',9,'$22500');
INSERT INTO ORDERS VALUES ('113042','02-Feb-00','2113','101','REI','2A44R',5,'$22500');
INSERT INTO ORDERS VALUES ('113045','02-Feb-00','2112','108','REI','2A44R',10,'$45000');
INSERT INTO ORDERS VALUES ('113048','10-Feb-00','2120','102','IMM','779C',2,'$3750');
INSERT INTO ORDERS VALUES ('113049','10-Feb-00','2118','108','QSA','XK47',2,'$776');
INSERT INTO ORDERS VALUES ('113051','10-Feb-00','2118','108','QSA','XK47',4,'$1420');
INSERT INTO ORDERS VALUES ('113055','15-Feb-00','2108','101','ACI','4100X',6,'$150');
INSERT INTO ORDERS VALUES ('113057','18-Feb-00','2111','103','ACI','4100X',24,'$600');
INSERT INTO ORDERS VALUES ('113058','23-Feb-00','2108','109','FEA','112',10,'$1480');
INSERT INTO ORDERS VALUES ('113062','24-Feb-00','2124','107','FEA','114',10,'$2430');
INSERT INTO ORDERS VALUES ('113065','27-Feb-00','2106','102','QSA','XK47',6,'$2130');
INSERT INTO ORDERS VALUES ('113069','02-Mar-00','2109','107','IMM','775C',22,'$31350');

INSERT INTO PRODUCTS VALUES ('ACI','41002','Size 2 Widget', '$76',167);
INSERT INTO PRODUCTS VALUES ('ACI','41003','Size 3 Widget','$107',207);
INSERT INTO PRODUCTS VALUES ('ACI','41004','Size 4 Widget','$117',139);
INSERT INTO PRODUCTS VALUES ('ACI','4100X','Widget Adjuster','$25',37);
INSERT INTO PRODUCTS VALUES ('ACI','4100Y','Widget Remover','$2750',25);
INSERT INTO PRODUCTS VALUES ('ACI','4100Z','Size 1 Widget','$55',277);
INSERT INTO PRODUCTS VALUES ('ACI','4101','Widget Intaller','$2500',28);
INSERT INTO PRODUCTS VALUES ('BIC','41003','Handle','$652',3);
INSERT INTO PRODUCTS VALUES ('BIC','41089','Retainer','$225',78);
INSERT INTO PRODUCTS VALUES ('BIC','41675','Plate','$180',0);
INSERT INTO PRODUCTS VALUES ('FEA','112','Housing','$148',115);
INSERT INTO PRODUCTS VALUES ('FEA','114','Motor Mount','$243',5);
INSERT INTO PRODUCTS VALUES ('IMM','773C','300-lb Brace','$975',28);
INSERT INTO PRODUCTS VALUES ('IMM','775C','500 -lb Brace','$1425',5);
INSERT INTO PRODUCTS VALUES ('IMM','779C','900 -lb Brace','$1875',9);
INSERT INTO PRODUCTS VALUES ('IMM','887H','Brace Holder','$54',223);
INSERT INTO PRODUCTS VALUES ('IMM','887P','Brace Pin','$250',24);
INSERT INTO PRODUCTS VALUES ('IMM','887X','Brace Retainer','$475',32);
INSERT INTO PRODUCTS VALUES ('QSA','XK47','Reducer','$355',15);
INSERT INTO PRODUCTS VALUES ('QSA','XK48','Reducer','$134',203);
INSERT INTO PRODUCTS VALUES ('QSA','XK48A','Reducer','$177',37);
INSERT INTO PRODUCTS VALUES ('REI','2A44G','Hinge Pin','$350',14);
INSERT INTO PRODUCTS VALUES ('REI','2A44L','Left Hinge','$4500',12);
INSERT INTO PRODUCTS VALUES ('REI','2A44R','Right Hinge','$4500',12);
INSERT INTO PRODUCTS VALUES ('REI','2A45C','Ratchet Link','$79',210);


INSERT INTO SALESREPS VALUES ('101','Dan Roberts',45,'12','Sales Rep', '104', '1996-10-20','$300000','$305673');
INSERT INTO SALESREPS VALUES ('102','Sue Smith',48,'21','Sales Rep','108','10-Dec-96', '$350000','$474050');
INSERT INTO SALESREPS VALUES ('103','Paul Cruz',29,'12','Sales Rep','104','01-Mar-97', '$275000','$286775');
INSERT INTO SALESREPS VALUES ('104','Bob Smith',33,'12','Sales Mrg','106','19-May-97', '$200000','$142594');
INSERT INTO SALESREPS VALUES ('105','Bill Adams',37,'13','Sales Rep','104','12-Feb-96', '$350000','$367911');
INSERT INTO SALESREPS VALUES ('106','Sam Clark',52,'11','Vp Sales',  null,'14-Jun-98', '$275000','$299912');
INSERT INTO SALESREPS VALUES ('107','Nancy Angelli',49,'22','Sales Rep','108','14-Nov-98','$300000','$186042');
INSERT INTO SALESREPS VALUES ('108','Larry Fitch',62,'21','Sales Mrg',  '106','12-Oct-99', '$350000','$361865');
INSERT INTO SALESREPS VALUES ('109','Mary Jones',31,'11','Sales Rep',   '106', '12-Oct-99','$300000','$392725');
INSERT INTO SALESREPS VALUES ('110','Tom Snyder',41,NULL,'Sales Rep',   '101','13-Jan-00', NULL,'$75985');

select * from salesreps;


/*1. Show the name, sales, and quota of Bill Adams*/

SELECT name, sales, quota
FROM SalesReps
WHERE name = 'Bill Adams';

/* 2. List the company names and the product description of all the products each has ordered. Arrange descending by company*/

SELECT C.COMPANY, P.DESCRIPTION
FROM CUSTOMERS C
JOIN ORDERS O ON C.CUST_NUM = O.CUST
JOIN PRODUCTS P ON O.MFR = P.MFR_ID AND O.PRODUCT = P.PRODUCT_ID
ORDER BY C.COMPANY DESC;

/* 3. Show the total value of the inventory on hand for each product. Arrange in descending order by total value*/

SELECT DESCRIPTION, QTY_ON_HAND * PRICE AS total_value
FROM PRODUCTS
ORDER BY total_value DESC;

/*4. How many customers are there?*/

SELECT COUNT(*) AS total_customers
FROM CUSTOMERS;

/*5. List the offices with a target over $600,000*/

SELECT CITY, TARGET
FROM OFFICES
WHERE TARGET > 600000;

/*6. What is the average sales of all the salespeople?*/

SELECT AVG(sales) AS avg_sales
FROM SalesReps;

/*7. List orders over $25,000, including the name of the salesperson who took the order and the name of the customer who placed it*/

SELECT C.COMPANY, S.name, O.AMOUNT
FROM ORDERS O
JOIN CUSTOMERS C ON O.CUST = C.CUST_NUM
JOIN SalesReps S ON O.REP = S.emp_num
WHERE O.AMOUNT > 25000;

/*8. How many sales offices have salespeople who are over quota?*/

SELECT COUNT(DISTINCT rep_office) AS offices_with_sales_over_quota
FROM SalesReps
WHERE sales > quota;

/*9. Show the name, sales, and office for each salesperson. Order by increasing sales*/

SELECT name, sales, rep_office
FROM SalesReps
ORDER BY sales ASC;

/*10. List all the companies who have ordered any size widget, and the widget they ordered*/

SELECT C.COMPANY, P.DESCRIPTION
FROM CUSTOMERS C
JOIN ORDERS O ON C.CUST_NUM = O.CUST
JOIN PRODUCTS P ON O.MFR = P.MFR_ID AND O.PRODUCT = P.PRODUCT_ID
WHERE P.DESCRIPTION LIKE '%Widget%';

/*11. List the city, region, and amount that sales are over/under target for each office*/

SELECT CITY, REGION, SALES - TARGET AS difference_from_target
FROM OFFICES;

/*12. What is the total number of each part that has been ordered?*/

SELECT PRODUCT, SUM(QTY) AS total_quantity_ordered
FROM ORDERS
GROUP BY PRODUCT;

/*13. List the salespeople, the city they work in, and the manager of the office in which they work*/

SELECT S.name, O.CITY, O.MGR
FROM SalesReps S
JOIN OFFICES O ON S.rep_office = O.OFFICE;

/*14. List all orders showing order number, amount, customer name, and the customer's credit limit where the order was greater than $20,000*/

SELECT O.ORDER_NUM, O.AMOUNT, C.COMPANY, C.CREDIT_LIMIT
FROM ORDERS O
JOIN CUSTOMERS C ON O.CUST = C.CUST_NUM
WHERE O.AMOUNT > 20000;

/*15. Are there any customers who are over their credit limit? If so, list the customer, the total amount the customer has on order, and the credit limit*/

SELECT C.COMPANY, SUM(O.AMOUNT) AS total_amount_ordered, C.CREDIT_LIMIT
FROM CUSTOMERS C
JOIN ORDERS O ON C.CUST_NUM = O.CUST
GROUP BY C.COMPANY, C.CREDIT_LIMIT
HAVING SUM(O.AMOUNT) > C.CREDIT_LIMIT;

/*16. List the salespeople with a higher quota than their manager*/

SELECT S1.name AS Salesperson, S1.quota, S2.name AS Manager, S2.quota AS Manager_Quota
FROM SalesReps S1
JOIN SalesReps S2 ON S1.manager = S2.emp_num
WHERE S1.quota > S2.quota;

/*17. List salespeople who work in different offices than their managers, show the name and office where each work*/

SELECT S1.name AS Salesperson, S1.rep_office AS Salesperson_Office, S2.rep_office AS Manager_Office
FROM SalesReps S1
JOIN SalesReps S2 ON S1.manager = S2.emp_num
WHERE S1.rep_office != S2.rep_office;

/*18. What is the total order size for each salesperson? Order by increasing sales*/

SELECT S.name, SUM(O.AMOUNT) AS total_sales
FROM SalesReps S
JOIN ORDERS O ON S.emp_num = O.REP
GROUP BY S.name
ORDER BY total_sales ASC;

/*19. List all the customers whose sales representative is a manager. Arrange increasing by company*/

SELECT C.COMPANY, S.name AS SalesRep
FROM CUSTOMERS C
JOIN SalesReps S ON C.CUST_REP = S.emp_num
WHERE S.title LIKE '%Mrg%' 
ORDER BY C.COMPANY ASC;

/*20. What is the total order size for each salesperson whose orders total more than $30,000?*/

SELECT S.name, SUM(O.AMOUNT) AS total_sales
FROM SalesReps S
JOIN ORDERS O ON S.emp_num = O.REP
GROUP BY S.name
HAVING SUM(O.AMOUNT) > 30000;

/*21. List the offices where the sales target for the office exceeds the sum of the individual salespeople’s quotas*/

SELECT O.CITY, O.TARGET, SUM(S.quota) AS total_quota
FROM OFFICES O
JOIN SalesReps S ON O.OFFICE = S.rep_office
GROUP BY O.CITY, O.TARGET
HAVING O.TARGET > SUM(S.quota);

/*22. List the salespeople whose quotas are equal to or higher than the target of the Atlanta sales office*/

SELECT S.name, S.quota
FROM SalesReps S
JOIN OFFICES O ON O.OFFICE = S.rep_office
WHERE O.CITY = 'Atlanta' AND S.quota >= O.TARGET;

/*23. List the salespeople who do not work in offices managed by Larry Fitch (employee 108)*/

SELECT S.name, S.rep_office
FROM SalesReps S
JOIN OFFICES O ON S.rep_office = O.OFFICE
WHERE O.MGR != '108';

/*24. List the products for which an order of $25,000 or more has been received:*/

SELECT P.DESCRIPTION
FROM PRODUCTS P
JOIN ORDERS O ON P.MFR_ID = O.MFR AND P.PRODUCT_ID = O.PRODUCT
WHERE O.AMOUNT >= 25000;

/*25. List the companies who placed an order with a sales rep that is not the sales rep that usually calls on them. Include the names of the sales reps, indicating by attribute name who took the order*/

SELECT C.COMPANY, S1.name AS usual_sales_rep, S2.name AS order_taking_rep
FROM CUSTOMERS C
JOIN SalesReps S1 ON C.CUST_REP = S1.emp_num
JOIN ORDERS O ON C.CUST_NUM = O.CUST
JOIN SalesReps S2 ON O.REP = S2.emp_num
WHERE C.CUST_REP != O.REP;