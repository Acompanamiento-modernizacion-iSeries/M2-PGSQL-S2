--1.Enunciado: Selecciona todos los registros de la tabla "Clientes".
SELECT * FROM CLIENTES;

--2.Enunciado: Obtén una lista de todos los tipos de cuentas sin 
--duplicados.
SELECT "tipo_cuenta" FROM CUENTASBANCARIAS
group by "tipo_cuenta";

--3.Enunciado: Cuenta cuántos clientes hay en la tabla "Clientes".
SELECT COUNT(0) FROM CLIENTES;

--4.Enunciado: Selecciona todas las transacciones que 
--tienen un monto mayor a 1000.
SELECT * FROM TRANSACCIONES
WHERE "monto" > 1000;

--5.Enunciado: Ordena la lista de cuentas por su saldo en 
--orden ascendente.
SELECT * FROM CUENTASBANCARIAS
ORDER BY "saldo";

--6.Enunciado: Selecciona los primeros 5 empleados ordenados 
--por su fecha de contratación en orden descendente.
SELECT * FROM EMPLEADOS
ORDER BY "fecha_contratacion" DESC;

--7.Enunciado: Selecciona todas las transacciones realizadas
--entre el 1 de enero de 2023 y el 31 de diciembre de 2023.
SELECT * FROM TRANSACCIONES
WHERE TO_CHAR(fecha_transaccion,'YYYYMMDD')::integer
BETWEEN 20230101 AND 20231231;

--8.Enunciado: Selecciona todas las cuentas cuyo tipo 
--sea "Ahorro", "Corriente" o "Inversión".
SELECT * FROM CUENTASBANCARIAS
WHERE tipo_cuenta IN ('Ahorro','Corriente','Inversión');

--9.Enunciado: Selecciona todos los clientes cuyo nombre 
--contiene la letra "a".
SELECT * FROM CLIENTES
WHERE nombre LIKE '%a%';

--10.Enunciado: Selecciona todos los empleados 
--cuyos apellidos empiezan con la letra "S".
SELECT * FROM EMPLEADOS
WHERE apellido LIKE 'S%';

--11.Enunciado: Selecciona todos los clientes que viven 
--en direcciones que terminan con "Avenue".
SELECT * FROM CLIENTES
WHERE direccion LIKE '%Avenue';

--12.Enunciado: Selecciona todos los empleados cuyo 
--correo electrónico contiene "bank".
SELECT * FROM EMPLEADOS
WHERE correo_electronico LIKE '%bank%';

--13.Enunciado: Selecciona todas las sucursales cuyo nombre 
--comienza con "Central".
SELECT * FROM SUCURSALES
WHERE nombre LIKE 'Central%';

--14.Enunciado: Selecciona todas las transacciones que son
--de tipo "Depósito".
SELECT * FROM TRANSACCIONES
WHERE tipo_transaccion LIKE 'Depósito';

--15.Enunciado: Selecciona todas las transacciones que 
--ocurren en el año 2023.
SELECT * FROM TRANSACCIONES
WHERE TO_CHAR(fecha_transaccion,'YYYYMMDD') LIKE '2023%';

--16.Enunciado: Selecciona todas las transacciones cuya
--descripción contiene la palabra "pago".
SELECT * FROM TRANSACCIONES
WHERE descripcion LIKE '%pago%';

--17.Enunciado: Selecciona todos los clientes cuyo número 
--de teléfono comienza con "555".
SELECT * FROM CLIENTES
WHERE telefono LIKE '555%';

--18.Enunciado: Selecciona todos los empleados cuyo 
--cargo contiene la palabra "Manager".
SELECT * FROM EMPLEADOS
WHERE posicion LIKE '%Manager%';

