--SELECT Básico
SELECT * FROM Clientes;

--SELECT DISTINCT
SELECT DISTINCT tipo_cuenta FROM Cuentas_Bancarias;

--COUNT
SELECT COUNT(*) FROM Clientes;


--SELECT WHERE
SELECT * FROM Transacciones WHERE monto > 1000;


--ORDER BY
SELECT * FROM Cuentas_Bancarias ORDER BY saldo ASC;


--LIMIT
SELECT * FROM Empleados ORDER BY fecha_contratacion DESC LIMIT 5;


--BETWEEN
SELECT * FROM Transacciones 
WHERE fecha_transaccion BETWEEN '2023-01-01' AND '2023-12-31';

--IN
SELECT * FROM Cuentas_Bancarias 
WHERE tipo_cuenta IN ('ahorro', 'corriente');


--LIKE (Búsqueda por nombre)
SELECT * FROM Clientes WHERE nombre LIKE '%a%';


--LIKE (Búsqueda por apellido)
SELECT * FROM Empleados WHERE apellido LIKE 'S%';

--LIKE (Búsqueda por dirección)
SELECT * FROM Clientes WHERE direccion LIKE '%Avenue';


--LIKE (Búsqueda por correo electrónico)
SELECT * FROM Empleados WHERE correo_electronico LIKE '%bank%';


--LIKE (Búsqueda por nombre de sucursal)
SELECT * FROM Sucursales WHERE nombre LIKE 'Central%';


--LIKE (Búsqueda por tipo de transacción)
SELECT * FROM Transacciones WHERE tipo_transaccion LIKE 'depósito';


--LIKE (Búsqueda por fecha)
SELECT * FROM Transacciones WHERE fecha_transaccion LIKE '2023%';


--LIKE (Búsqueda por descripción)
SELECT * FROM Transacciones WHERE descripcion LIKE '%pago%';


--LIKE (Búsqueda por número de teléfono)
SELECT * FROM Clientes WHERE telefono LIKE '555%';


--LIKE (Búsqueda por cargo)
SELECT * FROM Empleados WHERE posicion LIKE '%Manager%';

