--1. Selecciona todos los registros de la tabla "Clientes".
SELECT * FROM clientes;

--2. Obtén una lista de todos los tipos de cuentas sin duplicados.
SELECT DISTINCT tipo_cuenta FROM cuentas_bancarias;

--3. Cuenta cuántos clientes hay en la tabla "Clientes".
SELECT COUNT(*) FROM clientes;

--4. Selecciona todas las transacciones que tienen un monto mayor a 1000.
SELECT * FROM transacciones WHERE monto > 1000;

--5. Ordena la lista de cuentas por su saldo en orden ascendente.
SELECT * FROM cuentas_bancarias ORDER BY saldo ASC;

--6. Selecciona los primeros 5 empleados ordenados por su fecha de contratación en orden descendente.
SELECT * FROM empleados ORDER BY fecha_contratacion DESC LIMIT 5;

--7. Selecciona todas las transacciones realizadas entre el 1 de enero de 2023 y el 31 de diciembre de 2023.
SELECT * FROM transacciones WHERE fecha_transaccion BETWEEN '2023-01-01' AND '2023-12-31';

--8. Selecciona todas las cuentas cuyo tipo sea "Ahorro", "Corriente" o "Inversión".
SELECT * FROM cuentas_bancarias WHERE tipo_cuenta IN ('ahorro', 'corriente', 'inversión');

--9 Selecciona todos los clientes cuyo nombre contiene la letra "a".
SELECT * FROM clientes WHERE nombre LIKE '%a%';

--10. Selecciona todos los empleados cuyos apellidos empiezan con la letra "S".
SELECT * FROM empleados WHERE apellido LIKE 'S%';

--11. Selecciona todos los clientes que viven en direcciones que terminan con "Avenue".
SELECT * FROM clientes WHERE direccion LIKE '%Avenue';

--12. Selecciona todos los empleados cuyo correo electrónico contiene "bank".
SELECT * FROM empleados WHERE correo_electronico LIKE '%bank%';

--13. Selecciona todas las sucursales cuyo nombre comienza con "Central".
SELECT * FROM sucursales WHERE nombre LIKE 'Central%';

--14. Selecciona todas las transacciones que son de tipo "Depósito".
SELECT * FROM transacciones WHERE tipo_transaccion = 'deposito';

--15. Selecciona todas las transacciones que ocurren en el año 2023.
SELECT * FROM transacciones WHERE fecha_transaccion BETWEEN '2023-01-01 00:00:00' AND '2023-12-31 23:59:59';

--16. Selecciona todas las transacciones cuya descripción contiene la palabra "pago".
SELECT * FROM transacciones WHERE descripcion LIKE '%pago%';

--17. Selecciona todos los clientes cuyo número de teléfono comienza con "555".
SELECT * FROM clientes WHERE telefono LIKE '555%';

--18. Selecciona todos los empleados cuyo cargo contiene la palabra "Manager".
SELECT * FROM empleados WHERE posicion LIKE '%Manager%';