--1.SELECT Básico
--Enunciado: Selecciona todos los registros de la tabla "Clientes".
Select * from Clientes;

--2.SELECT DISTINCT
--Enunciado: Obtén una lista de todos los tipos de cuentas sin duplicados.
Select DISTINCT(tipo_cuenta) from Cuentas;

--3.COUNT
--Enunciado: Cuenta cuántos clientes hay en la tabla "Clientes".
Select Count(cliente_id) from Clientes;

--4.SELECT WHERE
--Enunciado: Selecciona todas las transacciones que tienen un monto mayor a 1000.
Select * from Transacciones
Where monto > 1000;

--5.ORDER BY
--Enunciado: Ordena la lista de cuentas por su saldo en orden ascendente.
UPDATE Cuentas Set Saldo = 150000 Where cuenta_id=1;
UPDATE Cuentas Set Saldo = 250000 Where cuenta_id=2;
UPDATE Cuentas Set Saldo = 10000 Where cuenta_id=3;
UPDATE Cuentas Set Saldo = 40000 Where cuenta_id=4;
UPDATE Cuentas Set Saldo = 140000 Where cuenta_id=5;
UPDATE Cuentas Set Saldo = 500000 Where cuenta_id=6;
UPDATE Cuentas Set Saldo = 50000 Where cuenta_id=7;
Select * from Cuentas Order By Saldo Asc;

--6.LIMIT
--Enunciado: Selecciona los primeros 5 empleados ordenados por su fecha de contratación en orden descendente.
Select * from Empleados Order by fecha_contratacion desc Limit 5;

--7.BETWEEN
--Enunciado: Selecciona todas las transacciones realizadas entre el 1 de enero de 2023 y el 31 de diciembre de 2023.
UPDATE Transacciones Set fecha_transaccion ='2023-01-01' Where transaccion_id=1;
UPDATE Transacciones Set fecha_transaccion ='2023-05-03' Where transaccion_id=2;
UPDATE Transacciones Set fecha_transaccion ='2023-07-10' Where transaccion_id=3;
UPDATE Transacciones Set fecha_transaccion ='2023-12-31' Where transaccion_id=4;
Select * from Transacciones Where Cast(fecha_transaccion As VARCHAR) Between '2023-01-01' And '2023-12-31';

--8.IN
--Enunciado: Selecciona todas las cuentas cuyo tipo sea "Ahorro", "Corriente" o "Inversión".
Select * from Cuentas Where tipo_cuenta IN('AHORRO', 'CORRIENTE', 'INVERSION');

--9.LIKE (Búsqueda por nombre)
--Enunciado: Selecciona todos los clientes cuyo nombre contiene la letra "a".
Select * from Clientes Where nombre like '%a%';

--10.LIKE (Búsqueda por apellido)
--Enunciado: Selecciona todos los empleados cuyos apellidos empiezan con la letra "P".
Select * from Clientes Where apellido like 'P%';

--11.LIKE (Búsqueda por dirección)
--Enunciado: Selecciona todos los clientes que viven en direcciones que terminan con "Casa3".
Select * from Clientes Where direccion like '%Casa3';

--12.LIKE (Búsqueda por correo electrónico)
--Enunciado: Selecciona todos los empleados cuyo correo electrónico contiene "bank".
Select * from Empleados Where correo_electronico Like '%banco%';

--13.LIKE (Búsqueda por nombre de sucursal)
--Enunciado: Selecciona todas las sucursales cuyo nombre comienza con "Central".
Select * from Sucursales Where nombre Like 'Central%';

--14.LIKE (Búsqueda por tipo de transacción)
--Enunciado: Selecciona todas las transacciones que son de tipo "Depósito".
Select * from Transacciones Where tipo_transaccion Like 'DEPOSITO';

--15.LIKE (Búsqueda por fecha)
--Enunciado: Selecciona todas las transacciones que ocurren en el año 2023.
Select * from Transacciones Where Cast(fecha_transaccion As VARCHAR) LIKE '2023%';

--16.LIKE (Búsqueda por descripción)
--Enunciado: Selecciona todas las transacciones cuya descripción contiene la palabra "pago".
Select * from Transacciones Where descripcion Like '%pago%';

--17.LIKE (Búsqueda por número de teléfono)
--Enunciado: Selecciona todos los clientes cuyo número de teléfono comienza con "3".
Select * from clientes Where telefono Like '3%';

--18.LIKE (Búsqueda por cargo)
--Enunciado: Selecciona todos los empleados cuyo cargo contiene la palabra "Manager".
Select * from Empleados Where posicion Like 'Manager';

--19.LIKE (Búsqueda por cargo)
--Enunciado: Selecciona todos los empleados cuyo cargo contiene la palabra "Analista".
Select * from Empleados Where posicion Like 'Analista';