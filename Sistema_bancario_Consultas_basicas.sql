--1 SELECT Básico
--Enunciado: Selecciona todos los registros de la tabla "Clientes".

SELECT * FROM Clientes;

--2 SELECT DISTINCT
--Enunciado: Obtén una lista de todos los tipos de cuentas sin duplicados.

SELECT Distinct tipo_cuenta FROM Cuentas_bancarias;

--3 COUNT
--Enunciado: Cuenta cuántos clientes hay en la tabla "Clientes".

SELECT count(*) FROM Clientes;

--4 SELECT WHERE
--Enunciado: Selecciona todas las transacciones que tienen un monto mayor a 1000.

SELECT * FROM Transacciones 
WHERE monto > 1000;

--5 ORDER BY
-- Enunciado: Ordena la lista de cuentas por su saldo en orden ascendente. 

SELECT * FROM Cuentas_bancarias ORDER BY saldo ASC;

--6 LIMIT
--Enunciado: Selecciona los primeros 5 empleados ordenados por su fecha de contratación en orden descendente.

SELECT * FROM Empleados ORDER BY fecha_contratacion DESC LIMIT 5;

--7 BETWEEN
--Enunciado: Selecciona todas las transacciones realizadas entre el 1 de enero de 2023 y el 31 de diciembre de 2023.

SELECT * FROM Transacciones WHERE fecha_transaccion BETWEEN '2023-01-01' AND '2023-12-31';

--8 IN
--Enunciado: Selecciona todas las cuentas cuyo tipo sea "Ahorro", "Corriente" o "Inversión".

SELECT * FROM Cuentas_bancarias WHERE tipo_cuenta IN('CORRIENTE', 'INVERSION');

--9 LIKE (Búsqueda por nombre)
--Enunciado: Selecciona todos los clientes cuyo nombre contiene la letra "a".

SELECT * FROM Clientes WHERE UPPER(nombre) like '%A%';

--10 LIKE (Búsqueda por apellido)
--Enunciado: Selecciona todos los empleados cuyos apellidos empiezan con la letra "S".

SELECT * FROM Empleados WHERE UPPER(apellido) like 'S%';

--11 LIKE (Búsqueda por dirección)
--Enunciado: Selecciona todos los clientes que viven en direcciones que terminan con "Avenue".

SELECT * FROM Clientes WHERE UPPER(direccion) like '%AVENUE';

--12 LIKE (Búsqueda por correo electrónico)
--Enunciado: Selecciona todos los empleados cuyo correo electrónico contiene "bank".

SELECT * FROM Empleados WHERE UPPER(correo_electronico) LIKE '%BANK%';

--13 LIKE (Búsqueda por nombre de sucursal)
--Enunciado: Selecciona todas las sucursales cuyo nombre comienza con "Central".

SELECT * FROM Sucursales WHERE UPPER(nombre) LIKE 'CENTRAL%';

--14 LIKE (Búsqueda por tipo de transacción)
--Enunciado: Selecciona todas las transacciones que son de tipo "Depósito".

SELECT * FROM Transacciones WHERE UPPER(tipo_transaccion) LIKE '%DEPOSITO%';


--15 LIKE (Búsqueda por fecha)
--Enunciado: Selecciona todas las transacciones que ocurren en el año 2023.

SELECT * FROM Transacciones WHERE extract(year from fecha_transaccion) = '2023';

--16 LIKE (Búsqueda por descripción)
--Enunciado: Selecciona todas las transacciones cuya descripción contiene la palabra "pago".

SELECT * FROM Transacciones WHERE UPPER(descripcion) LIKE upper('%pago%');

--17 LIKE (Búsqueda por número de teléfono)
--Enunciado: Selecciona todos los clientes cuyo número de teléfono comienza con "555".

SELECT * FROM Clientes WHERE telefono LIKE '555%';

--18 LIKE (Búsqueda por cargo)
--Enunciado: Selecciona todos los empleados cuyo cargo contiene la palabra "Manager".

SELECT * FROM Empleados WHERE UPPER(posicion) LIKE UPPER('%Manager%');



















































