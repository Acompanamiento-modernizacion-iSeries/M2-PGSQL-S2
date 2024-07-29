--1. **SELECT Básico**
--  - **Enunciado:** Selecciona todos los registros de la tabla "Clientes".

SELECT cliente_id,
       nombre,
       apellido,
       direccion,
       telefono,
       correo_electronico,
       fecha_nacimiento,
       estado
FROM public.clientes;

--2. **SELECT DISTINCT**
--   - **Enunciado:** Obtén una lista de todos los tipos de cuentas sin duplicados.

SELECT DISTINCT tipo_cuenta
FROM public.cuentas_bancarias;

--3. **COUNT**
--   - **Enunciado:** Cuenta cuántos clientes hay en la tabla "Clientes".

SELECT count(cliente_id)
FROM public.clientes;

--4. **SELECT WHERE**
--   - **Enunciado:** Selecciona todas las transacciones que tienen un monto mayor a 1000.

SELECT transaccion_id,
       cuenta_id,
       tipo_transaccion,
       monto,
       fecha_transaccion,
       descripcion
FROM public.transacciones
WHERE monto > 1000;

--5. **ORDER BY**
-- - **Enunciado:** Ordena la lista de cuentas por su saldo en orden ascendente.

SELECT cuenta_id,
       cliente_id,
       numero_cuenta,
       tipo_cuenta,
       saldo,
       fecha_apertura,
       estado
FROM public.cuentas_bancarias
ORDER BY saldo ASC;

--6. **LIMIT**
--   - **Enunciado:** Selecciona los primeros 5 empleados ordenados por su fecha de contratación en orden descendente.

SELECT empleado_id,
       nombre,
       apellido,
       direccion,
       telefono,
       correo_electronico,
       fecha_contratacion,
       posicion,
       salario,
       sucursal_id
FROM public.empleados
ORDER BY fecha_contratacion DESC
LIMIT 5;

--7. **BETWEEN**
--   - **Enunciado:** Selecciona todas las transacciones realizadas entre el 1 de enero de 2023 y el 31 de diciembre de 2023.

SELECT transaccion_id,
       cuenta_id,
       tipo_transaccion,
       monto,
       fecha_transaccion,
       descripcion
FROM public.transacciones
WHERE fecha_transaccion BETWEEN '2023-01-01' AND '2023-12-31';

--8. **IN**
--   - **Enunciado:** Selecciona todas las cuentas cuyo tipo sea "Ahorro", "Corriente" o "Inversión".

SELECT cuenta_id,
       cliente_id,
       numero_cuenta,
       tipo_cuenta,
       saldo,
       fecha_apertura,
       estado
FROM public.cuentas_bancarias
WHERE tipo_cuenta IN ('Ahorro',
                      'Corriente',
                      'Inversión');

--9. **LIKE (Búsqueda por nombre)**
--   - **Enunciado:** Selecciona todos los clientes cuyo nombre contiene la letra "a".

SELECT cliente_id,
       LOWER(nombre),
       apellido,
       direccion,
       telefono,
       correo_electronico,
       fecha_nacimiento,
       estado
FROM public.clientes
WHERE nombre LIKE '%a%';

--10. **LIKE (Búsqueda por apellido)**
--    - **Enunciado:** Selecciona todos los empleados cuyos apellidos empiezan con la letra "S".

SELECT cliente_id,
       nombre,
       UPPER(apellido) AS Apellido,
       direccion,
       telefono,
       correo_electronico,
       fecha_nacimiento,
       estado
FROM public.clientes
WHERE apellido LIKE 'S%';

--11. **LIKE (Búsqueda por dirección)**
--    - **Enunciado:** Selecciona todos los clientes que viven en direcciones que terminan con "Avenue".

SELECT cliente_id,
       nombre,
       apellido,
       direccion,
       telefono,
       correo_electronico,
       fecha_nacimiento,
       estado
FROM public.clientes
WHERE direccion LIKE '%Avenue';

--12. **LIKE (Búsqueda por correo electrónico)**
--    - **Enunciado:** Selecciona todos los empleados cuyo correo electrónico contiene "bank".

SELECT empleado_id,
       nombre,
       apellido,
       direccion,
       telefono,
       correo_electronico,
       fecha_contratacion,
       posicion,
       salario,
       sucursal_id
FROM public.empleados
WHERE correo_electronico LIKE '%bank%';

--13. **LIKE (Búsqueda por nombre de sucursal)**
--    - **Enunciado:** Selecciona todas las sucursales cuyo nombre comienza con "Central".
SELECT sucursal_id, nombre, direccion, telefono
	FROM public.sucursales
	WHERE nombre LIKE 'Central%';

 --14. **LIKE (Búsqueda por tipo de transacción)**
--    - **Enunciado:** Selecciona todas las transacciones que son de tipo "Depósito".
SELECT transaccion_id, cuenta_id, tipo_transaccion, monto, fecha_transaccion, descripcion
	FROM public.transacciones
	WHERE tipo_transaccion LIKE 'Deposito' ;

 --15. **LIKE (Búsqueda por fecha)** 
--    - **Enunciado:** Selecciona todas las transacciones que ocurren en el año 2023.
SELECT transaccion_id, cuenta_id, tipo_transaccion, monto, fecha_transaccion, descripcion
	FROM public.transacciones
	WHERE TEXT(fecha_transaccion) LIKE '2023%';

 --16. **LIKE (Búsqueda por descripción)**
--    - **Enunciado:** Selecciona todas las transacciones cuya descripción contiene la palabra "pago".
SELECT transaccion_id, cuenta_id, tipo_transaccion, monto, fecha_transaccion, descripcion
	FROM public.transacciones
	WHERE descripcion LIKE '%pago%';

 --17. **LIKE (Búsqueda por número de teléfono)**
--    - **Enunciado:** Selecciona todos los clientes cuyo número de teléfono comienza con "555".
SELECT cliente_id,
       nombre,
       apellido,
       direccion,
       telefono,
       correo_electronico,
       fecha_nacimiento,
       estado
FROM public.clientes
WHERE telefono LIKE '555%';

 --18. **LIKE (Búsqueda por cargo)**
--    - **Enunciado:** Selecciona todos los empleados cuyo cargo contiene la palabra "Manager".
SELECT empleado_id,
       nombre,
       apellido,
       direccion,
       telefono,
       correo_electronico,
       fecha_contratacion,
       posicion,
       salario,
       sucursal_id
FROM public.empleados
WHERE posicion LIKE '%Manager%';
