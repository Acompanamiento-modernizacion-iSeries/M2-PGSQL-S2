-- 1. Seleccionar todos los registros de la tabla "Clientes".


SELECT * FROM Clientes;


-- 2. SELECT DISTINCT - Obtén una lista de todos los tipos de cuentas sin duplicados.


SELECT DISTINCT tipo_cuenta FROM Cuentas_Bancarias;


-- 3. COUNT - Cuenta cuántos clientes hay en la tabla "Clientes".

SELECT COUNT(*) FROM Clientes;


-- 4. SELECT WHERE - Selecciona todas las transacciones que tienen un monto mayor a 1000.

SELECT * FROM Transacciones WHERE monto > 1000;


-- 5. ORDER BY - Ordena la lista de cuentas por su saldo en orden ascendente.


SELECT * FROM Cuentas_Bancarias ORDER BY saldo ASC;


-- 6. LIMIT - Selecciona los primeros 5 empleados ordenados por su fecha de contratación en orden descendente.
 

SELECT * FROM Empleados ORDER BY fecha_contratacion DESC LIMIT 5;


-- 7. BETWEEN - Selecciona todas las transacciones realizadas entre el 1 de enero de 2023 y el 31 de diciembre de 2023.


SELECT * FROM Transacciones WHERE fecha_transaccion BETWEEN '2023-01-01' AND '2023-12-31';


-- 8. IN - Selecciona todas las cuentas cuyo tipo sea "Ahorro", "Corriente" o "Inversión".


SELECT * FROM Cuentas_Bancarias WHERE tipo_cuenta IN ('ahorro', 'corriente', 'inversión');


-- 9. LIKE (Búsqueda por nombre) - Selecciona todos los clientes cuyo nombre contiene la letra "a".


SELECT * FROM Clientes WHERE nombre ILIKE '%a%';


-- 10. LIKE (Búsqueda por apellido) - Selecciona todos los empleados cuyos apellidos empiezan con la letra "S".


SELECT * FROM Empleados WHERE apellido ILIKE 'S%';


-- 11. LIKE (Búsqueda por dirección) - Selecciona todos los clientes que viven en direcciones que terminan con "Avenue".


SELECT * FROM Clientes WHERE direccion ILIKE '%Avenue';


-- 12. LIKE (Búsqueda por correo electrónico) - Selecciona todos los empleados cuyo correo electrónico contiene "bank".


SELECT * FROM Empleados WHERE correo_electronico ILIKE '%bank%';


-- 13. LIKE (Búsqueda por nombre de sucursal) - Selecciona todas las sucursales cuyo nombre comienza con "Central".


SELECT * FROM Sucursales WHERE nombre ILIKE 'Central%';


-- 14. LIKE (Búsqueda por tipo de transacción) - Selecciona todas las transacciones que son de tipo "Depósito".


SELECT * FROM Transacciones WHERE tipo_transaccion ILIKE 'Deposito';


-- 15. LIKE (Búsqueda por fecha) - Selecciona todas las transacciones que ocurren en el año 2023.


SELECT * FROM Transacciones WHERE fecha_transaccion::TEXT ILIKE '2023%';


-- 16. LIKE (Búsqueda por descripción) - Selecciona todas las transacciones cuya descripción contiene la palabra "pago".


SELECT * FROM Transacciones WHERE descripcion ILIKE '%pago%';


-- 17. LIKE (Búsqueda por número de teléfono) - Selecciona todos los clientes cuyo número de teléfono comienza con "555".


SELECT * FROM Clientes WHERE telefono ILIKE '555%';


-- 18. LIKE (Búsqueda por cargo) - Selecciona todos los empleados cuyo cargo contiene la palabra "Manager".


SELECT * FROM Empleados WHERE posicion ILIKE '%Manager%';