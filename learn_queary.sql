
--SELECT DATA BASE
USE self_learn2;
--retrive the  all colums in CUSTOMER table
SELECT * FROM customers;
--use where caluse to filter data by customer id
SELECT * FROM customers WHERE customer_id = 1;

-- select with order by
SELECT * FROM customers ORDER BY first_name

--get specific colums using select caluse
SELECT first_name,last_name FROM customers;

--Arithmatics Expression
SELECT first_name,last_name,points,points + 10 AS bonus FROM customers;
--More example
SELECT 
	first_name,
    last_name,points,
    points * 10 + 100 AS 
	bonus 
 FROM customers;
--select specific colum
SELECT state FROM customers;
--remove duplicate values by using DISTINCT
SELECT DISTINCT state FROM customers;
--EXERCISE
--return all the fk_order_items_products
SELECT * FROM products;
--RETURN ALL THER PRODUCTS NAME ,UNIT PRICE ,NEW PRICE (UNIT PRICE *1.1)
SELECT name,unit_price,unit_price * 1.1 AS new_price FROM products;
--WHERE CALUES IN SQL
SELECT * FROM customers WHERE points > 3000;
--select all customers in the vergina
SELECT * FROM customers WHERE state = "VA";
--select all customer igrone the vargina Sate using not equal operater
SELECT * FROM customers WHERE state != "VA";
--select some customers using thier birth_date
SELECT * FROM customers WHERE birth_date > '1990-01-01';
--get the oders placed this year 
SELECT * FROM ORDERS WHERE order_date >= '2019-01-01';

--AND,OR AND NOT OPERATORS 
--AND
SELECT * FROM ORDERS WHERE order_date >= '2019-01-01' AND points > 1000;
--OR
SELECT * FROM customers WHERE order_date >= '2019-01-01' OR points > 1000;
--AGIAN USING AND
SELECT * FROM customers WHERE birth_date > '1990-01-01' OR points > 1000 AND state = "VA";

SELECT * FROM customers WHERE birth_date > '1990-01-01' OR points > 1000 AND state = "VA";

--NOT OPERATOR
SELECT * FROM customers WHERE NOT (birth_date > '1990-01-01' OR points > 1000);
--above query same result without NOT operator
SELECT * FROM customers WHERE birth_date <= '1990-01-01' AND points <= 1000;
--from the order items table,get the items for order #6 where the total price grater than 30 
SELECT * FROM order_items WHERE order_id = 6 AND unit_price * quantity >30;
-- repalce OR operater query by using in operater
SELECT * FROM customerS WHERE state ='VA' OR state ='GA' OR state ='FL'; 
--repalece by using
SELECT * FROM customers WHERE state IN('VA','GA','FL');
--NOT IN Operater
SELECT * FROM customers WHERE state NOT IN('VA','GA','FL');
--return products with quantity in stock equal to 49,38,72
SELECT * FROM products WHERE quantity_in_stock IN ('49','38','72');
--between operater 
SELECT * FROM customers WHERE points >= 1000 AND points <= 3000; -- repalce this queary by using between operater
SELECT * FROM customers WHERE points BETWEEN  1000 AND 3000;
--Return Customers born between 1/1/1990 and 1/1/2000
SELECT * FROM customers WHERE birth_date BETWEEN '1990-01-01' AND '2000-01-01';
--THE LIKE OPERATER 
--retive rows mathed specific pattern
SELECT * FROM customers WHERE last_name LIKE 'b%';
-- % used to check any number of CHARACTERs
-- _ used check single character 
--get the customers whose addresses contain TRAIL OR Avenue
SELECT * FROM customers WHERE address LIKE '%trail%' OR  address LIKE '%avenue%';
--phone number end in 9
SELECT * FROM customers WHERE phone  LIKE '%9';
--the REGXP OPERATOR
SELECT * FROM customers WHERE last_name REGEXP'field';



