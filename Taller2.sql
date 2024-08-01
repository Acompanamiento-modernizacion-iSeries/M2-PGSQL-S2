-- 1. SELECT Básico
SELECT * FROM clientes;

-- 2. SELECT DISTINCT
SELECT DISTINCT(tipo_cuenta) FROM cuentas_bancarias;

-- 3. COUNT
SELECT COUNT(*) FROM clientes;

-- 4. SELECT WHERE
SELECT * FROM transacciones WHERE monto > 1000;

-- 5. ORDER BY
SELECT * FROM cuentas_bancarias ORDER BY saldo ASC;

-- 6. LIMIT
SELECT * FROM empleados ORDER BY fecha_contratacion DESC LIMIT 5;

-- 7. BETWEEN
SELECT * FROM transacciones WHERE fecha_transaccion BETWEEN '2023-01-01' AND '2023-12-31';

-- 8. IN
SELECT * FROM cuentas_bancarias WHERE tipo_cuenta IN ('Ahorro', 'Corriente', 'Inversión');

-- 9. LIKE (Búsqueda por nombre)
SELECT * FROM clientes WHERE nombre LIKE '%a%';

-- 10. LIKE (Búsqueda por apellido)
SELECT * FROM clientes WHERE apellido LIKE 'S%';

-- 11. LIKE (Búsqueda por dirección)
SELECT * FROM clientes WHERE direccion LIKE '%Avenue';

-- 12. LIKE (Búsqueda por correo electrónico)
SELECT * FROM empleados WHERE correo_electronico LIKE '%bank%';

-- 13. LIKE (Búsqueda por nombre de sucursal)
SELECT * FROM sucursales where nombre LIKE 'Central%';

-- 14. LIKE (Búsqueda por tipo de transacción)
SELECT * FROM transacciones WHERE tipo_transaccion LIKE '%Depósito%';

-- 15. LIKE (Búsqueda por fecha)
SELECT * FROM transacciones WHERE fecha_transaccion::text LIKE '2023-%';

-- 16. LIKE (Búsqueda por descripción)
SELECT * FROM transacciones WHERE descripcion LIKE '%pago%';

-- 17. LIKE (Búsqueda por número de teléfono)
SELECT * FROM clientes WHERE telefono LIKE '555%';

-- 18. LIKE (Búsqueda por cargo)
SELECT * FROM empleados WHERE posicion LIKE '%Manager%';