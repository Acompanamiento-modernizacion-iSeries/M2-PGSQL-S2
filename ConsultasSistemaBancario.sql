-- 1. SELECT Básico
SELECT * FROM Clientes;

-- 2. SELECT DISTINCT
SELECT DISTINCT(tipo_cuenta) FROM Cuentas_bancarias;

-- 3. COUNT
SELECT COUNT(cliente_id) FROM Clientes;

-- 4. SELECT WHERE
SELECT * FROM Transacciones WHERE monto > '1000';

-- 5. ORDER BY
SELECT * FROM Cuentas_bancarias ORDER BY saldo ASC;

-- 6. LIMIT
SELECT * FROM Empleados ORDER BY fecha_contratacion DESC LIMIT 5;

-- 7. BETWEEN
SELECT * FROM Transacciones WHERE fecha_transaccion BETWEEN '2023-01-01' and '2023-12-31';

-- 8. IN
SELECT * FROM Cuentas_bancarias WHERE tipo_cuenta IN ('AHORRO','CORRIENTE','INVERSION');

-- 9. LIKE (Búsqueda por nombre)
SELECT * FROM Clientes WHERE nombre LIKE ('%a%');

-- 10. LIKE (Búsqueda por apellido)
SELECT * FROM Clientes WHERE apellido LIKE UPPER('S%');

-- 11. LIKE (Búsqueda por dirección)
SELECT * FROM Clientes WHERE direccion LIKE ('%Avenue');

-- 12. LIKE (Búsqueda por correo electrónico)
SELECT * FROM Clientes WHERE correo_electronico LIKE ('%banck%');

-- 13. LIKE (Búsqueda por nombre de sucursal)
SELECT * FROM Sucursales WHERE nombre LIKE ('central%');

-- 14. LIKE (Búsqueda por tipo de transacción)
SELECT * FROM Transacciones WHERE tipo_transaccion LIKE '%deposito%';

-- 15. LIKE (Búsqueda por fecha)
SELECT * FROM Transacciones where CAST(fecha_transaccion AS VARCHAR) LIKE '%2023%';

-- 16. LIKE (Búsqueda por descripción)
SELECT * FROM Transacciones WHERE descripcion LIKE '%pago%';

-- 17. LIKE (Búsqueda por número de teléfono)
SELECT * FROM Clientes WHERE telefono LIKE '555%';

-- 18. LIKE (Búsqueda por cargo)
SELECT * FROM Empleados WHERE posicion LIKE '%Manager%';
