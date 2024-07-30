SELECT * FROM clientes
SELECT DISTINCT(tipo_cuenta) FROM cuentas_bancarias
SELECT COUNT(*) FROM clientes
SELECT * FROM transacciones WHERE monto > 1000
SELECT * FROM cuentas_bancarias ORDER BY saldo ASC
SELECT * FROM empleados ORDER BY fecha_contratacion DESC LIMIT 5
SELECT * FROM transacciones WHERE fecha_transaccion BETWEEN '2023/01/01' AND '2023/12/31'
SELECT * FROM cuentas_bancarias WHERE tipo_cuenta IN ('ahorro', 'corriente', 'inversión')
SELECT UPPER(nombre) FROM clientes WHERE nombre like '%a%'
SELECT * FROM clientes WHERE apellido like 'S%'
SELECT * FROM clientes WHERE direccion like '%Avenue'
SELECT * FROM empleados WHERE correo_electronico LIKE '%bank%'
SELECT * FROM sucursales WHERE nombre LIKE 'Central%'
SELECT * FROM transacciones WHERE tipo_transaccion LIKE '%Depósito%'
SELECT * FROM transacciones WHERE TO_CHAR(fecha_transaccion, 'YYYY') LIKE '%2023%'
SELECT * FROM transacciones WHERE descripcion LIKE '%pago%'
SELECT * FROM clientes WHERE telefono LIKE '555%'
SELECT * FROM empleados WHERE cargo LIKE '%Manager%'