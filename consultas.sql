
--         SISTEMA BANCARIO 

--SCRIPT CREADO POR: Juan Carlos Alvarez Cuartas



-- Consultas básicas para el sistema bancario


-- 1. Selecciona todos los registros de la tabla "Clientes".
SELECT * FROM Clientes;

-- 2. Obtén una lista de todos los tipos de cuentas sin duplicados.
SELECT DISTINCT nombre FROM Tipo_Cuenta;

-- 3. Cuenta cuántos clientes hay en la tabla "Clientes".
SELECT COUNT(*) AS total_clientes FROM Clientes;

-- 4. Selecciona todas las transacciones que tienen un monto mayor a 1000.
SELECT * FROM Transacciones WHERE monto > 1000;

-- 5. Ordena la lista de cuentas por su saldo en orden ascendente.
SELECT * FROM Cuentas_Bancarias ORDER BY saldo ASC;

-- 6. Selecciona los primeros 5 empleados ordenados por su fecha de contratación en orden descendente.
SELECT * FROM Empleados ORDER BY fecha_contratacion DESC LIMIT 5;

-- 7. Selecciona todas las transacciones realizadas entre el 1 de enero de 2023 y el 31 de diciembre de 2023.
SELECT * FROM Transacciones 
WHERE fecha_transaccion BETWEEN '2023-01-01' AND '2023-12-31';

-- 8. Selecciona todas las cuentas cuyo tipo sea "Ahorro", "Corriente" o "Inversión".
SELECT * FROM Cuentas_Bancarias 
WHERE tipo_cuenta IN (SELECT tipo_id FROM Tipo_Cuenta WHERE nombre IN ('Ahorro', 'Corriente', 'Inversión'));

-- 9. Selecciona todos los clientes cuyo nombre contiene la letra "a".
SELECT * FROM Clientes WHERE nombre LIKE '%a%';

-- 10. Selecciona todos los empleados cuyos apellidos empiezan con la letra "S".
SELECT * FROM Empleados WHERE apellido LIKE 'S%';

-- 11. Selecciona todos los clientes que viven en direcciones que terminan con "Avenue".
SELECT * FROM Clientes WHERE direccion LIKE '%Avenue';

-- 12. Selecciona todos los empleados cuyo correo electrónico contiene "bank".
SELECT * FROM Empleados WHERE correo_electronico LIKE '%bank%';

-- 13. Selecciona todas las sucursales cuyo nombre comienza con "Central".
SELECT * FROM Sucursales WHERE nombre LIKE 'Central%';

-- 14. Selecciona todas las transacciones que son de tipo "Depósito".
SELECT * FROM Transacciones 
WHERE tipo_transaccion = (SELECT tipo_id FROM Tipo_Transaccion WHERE nombre = 'Depósito');

-- 15. Selecciona todas las transacciones que ocurren en el año 2023.
SELECT * FROM Transacciones WHERE fecha_transaccion LIKE '2023%';

-- 16. Selecciona todas las transacciones cuya descripción contiene la palabra "pago".
SELECT * FROM Transacciones WHERE descripcion LIKE '%pago%';

-- 17. Selecciona todos los clientes cuyo número de teléfono comienza con "555".
SELECT * FROM Clientes WHERE telefono LIKE '555%';

-- 18. Selecciona todos los empleados cuyo cargo contiene la palabra "Manager".
SELECT * FROM Empleados 
WHERE posicion IN (SELECT posicion_id FROM Posiciones WHERE nombre LIKE '%Manager%');
