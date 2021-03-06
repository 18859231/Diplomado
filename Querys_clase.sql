USE jarvis;

select * from CLIENTES
select * from COMPRAS


CREATE TABLE SRV_CUSTOMER(
ID int AUTO_INCREMENT AUTO_INCREMENT KEY,
NOMBRE varchar(25),
PAIS varchar(25),
CATEGORIA varchar(30),
NUM_VENTA int
);

ALTER TABLE SRV_CUSTOMER
ADD TELEFONO int;

ALTER TABLE SRV_CUSTOMER
DROP COLUMN NUM_VENTA;

ALTER TABLE SRV_CUSTOMER
MODIFY COLUMN TELEFONO varchar(15);

INSERT SRV_CUSTOMER(NOMBRE, PAIS, CATEGORIA, TELEFONO)
VALUES('SEBASTIAN','CHILE','PREMIUM','+56962587425'),
	   ('CARLOS','ARGENTINA','NORMAL','+56987423988');

DELETE FROM SRV_CUSTOMER 
WHERE ID = 3;


select * from SRV_CUSTOMER;

DROP TABLE SRV_CUSTOMER;

select * from CLIENTES;

SELECT CATEGORIA 
FROM CLIENTES
WHERE NUM_VENTA = (SELECT MAX(NUM_VENTA) FROM CLIENTES);

SELECT CATEGORIA 
FROM CLIENTES
WHERE NUM_VENTA = (SELECT MIN(NUM_VENTA) FROM CLIENTES);

SELECT COUNT(ID) AS CANTIDAD
FROM CLIENTES;

SELECT AVG(NUM_VENTA) AS PROMEDIO
FROM CLIENTES
WHERE NUM_VENTA >=4;

SELECT NOMBRE 
	   CATEGORIA 
	   SUM(NUM_VENTA)
FROM CLIENTES;

DESCRIBE CLIENTES;
SHOW COLUMNS FROM CLIENTES;

SELECT UCASE(NOMBRE) AS NAME,
	   PAIS 	
FROM CLIENTES;

SELECT COUNT(*) AS CONTEO
FROM CLIENTES;

SELECT COUNT(DISTINCT(NOMBRE)) AS CONTEO_2
FROM CLIENTES;

SELECT PRO.PRODUCTO, TP.NOMBRE, PRO.PRECIO
FROM PRODUCTOS AS PRO
INNER JOIN TIPO_PRODUCTO AS TP 
ON PRO.TIPO_PRODUCTO_ID = TP.ID;

SELECT *
FROM(SELECT NOMBRE,COUNT(*) AS CONTEO
FROM CLIENTES
GROUP BY NOMBRE) C
WHERE C.CONTEO>1;

SELECT *
FROM CLIENTES CLI
LEFT JOIN COMPRAS COM
ON CLI.ID = COM.CLIENTE_ID 
WHERE COM.ID IS NOT NULL;

SELECT AVG(PRECIO) PRICE
FROM PRODUCTOS;

SELECT * 
FROM CLIENTES CLI
LEFT JOIN COMPRAS C
ON CLI.ID = C.CLIENTE_ID;

SELECT * 
FROM COMPRAS C
RIGHT JOIN CLIENTES CLI
ON C.CLIENTE_ID = CLI.ID ;




