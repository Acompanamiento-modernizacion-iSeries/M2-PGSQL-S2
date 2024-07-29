-----------------------------------------------------------------------
--TALLER 2
--SCRIPT CREADO POR: JUAN PABLO VALDERRAMA PELÁEZ
--CONSULTAS BÁSICAS SOBRE BASE DE DATOS SISTEMA BANCARIO 
------------------------------------------------------------------------
--1.Selecciona todos los registros de la tabla "Clientes".
------------------------------------------------------------------------

SELECT * FROM CLIENTES;

------------------------------------------------------------------------
--2.Obtén una lista de todos los tipos de cuentas sin duplicados.
------------------------------------------------------------------------

SELECT DISTINCT NOMBRE FROM CUENTAS_BANCARIAS
JOIN TIPO_CUENTA ON TIPO_CUENTA = TIPO_ID;

------------------------------------------------------------------------
--3.Cuenta cuántos clientes hay en la tabla "Clientes".
------------------------------------------------------------------------

SELECT COUNT(*) FROM CLIENTES;

------------------------------------------------------------------------
--4.Selecciona todas las transacciones que tienen un monto mayor a 1000.
------------------------------------------------------------------------

SELECT * FROM TRANSACCIONES 
WHERE MONTO > 1000;

-----------------------------------------------------------------------
--5.Ordena la lista de cuentas por su saldo en orden ascendente.
-----------------------------------------------------------------------

SELECT * FROM CUENTAS_BANCARIAS
ORDER BY SALDO ASC;

-----------------------------------------------------------------------
--6.Selecciona los primeros 5 empleados ordenados por su fecha de 
--  contratación en orden descendente.
-----------------------------------------------------------------------

SELECT * FROM EMPLEADOS
ORDER BY FECHA_CONTRATACION DESC LIMIT 5;

-----------------------------------------------------------------------
--7.Selecciona todas las transacciones realizadas entre el 1 de enero
--  de 2023 y el 31 de diciembre de 2023.
-----------------------------------------------------------------------

SELECT * FROM TRANSACCIONES
WHERE FECHA_TRANSACCION BETWEEN '2023-01-01 00:00:00' And 
'2023-12-31 00:00:00'; 

-----------------------------------------------------------------------
--8.Selecciona todas las cuentas cuyo tipo sea "Ahorro", "Corriente" o
--  "Inversión".
-----------------------------------------------------------------------

SELECT * FROM CUENTAS_BANCARIAS
JOIN TIPO_CUENTA ON TIPO_CUENTA = TIPO_ID
WHERE NOMBRE IN ('Ahorro', 'Corriente', 'Inversión');

-----------------------------------------------------------------------
--9.Selecciona todos los clientes cuyo nombre contiene la letra "a".
-----------------------------------------------------------------------

SELECT * FROM CLIENTES 
WHERE NOMBRE LIKE '%a%' ;

-----------------------------------------------------------------------
--10.Selecciona todos los empleados cuyos apellidos empiezan con
--   la letra "S".
-----------------------------------------------------------------------

SELECT * FROM EMPLEADOS
WHERE APELLIDO LIKE 'S%';

-----------------------------------------------------------------------
--11.Selecciona todos los clientes que viven en direcciones que 
--   terminan con "Avenue".
-----------------------------------------------------------------------

SELECT * FROM CLIENTES
WHERE DIRECCION LIKE '%Avenue' ;

-----------------------------------------------------------------------
--12.Selecciona todos los empleados cuyo correo electrónico contiene
--   "bank".
-----------------------------------------------------------------------

SELECT * FROM EMPLEADOS
WHERE CORREO_ELECTRONICO LIKE '%bank%';

-----------------------------------------------------------------------
--13.Selecciona todas las sucursales cuyo nombre comienza con "Central".
-----------------------------------------------------------------------

SELECT * FROM SUCURSALES
WHERE NOMBRE LIKE 'Central%';

-----------------------------------------------------------------------
--14.Selecciona todas las transacciones que son de tipo "Depósito".
-----------------------------------------------------------------------

SELECT * FROM TRANSACCIONES
JOIN TIPO_TRANSACCION ON TIPO_TRANSACCION = TIPO_ID 
WHERE NOMBRE LIKE 'Depósito';

-----------------------------------------------------------------------
--15.Selecciona todas las transacciones que ocurren en el año 2023.
-----------------------------------------------------------------------

SELECT * FROM TRANSACCIONES
WHERE TO_CHAR(FECHA_TRANSACCION, 'YYYY-MM-DD') LIKE '2024%';

-----------------------------------------------------------------------
--16.Selecciona todas las transacciones cuya descripción contiene 
--   la palabra "pago".
-----------------------------------------------------------------------

SELECT * FROM TRANSACCIONES
WHERE DESCRIPCION LIKE '%pago%';

-----------------------------------------------------------------------
--17.Selecciona todos los clientes cuyo número de teléfono comienza 
--   con "555".
-----------------------------------------------------------------------

SELECT * FROM CLIENTES
WHERE TELEFONO LIKE '555%';

-----------------------------------------------------------------------
--18.Selecciona todos los empleados cuyo cargo contiene la palabra 
--   "Manager".
-----------------------------------------------------------------------

SELECT * FROM EMPLEADOS A
JOIN POSICIONES B ON A.POSICION = B.POSICION_ID
WHERE B.NOMBRE LIKE '%Manager%';