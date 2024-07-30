-- SELECT Básico
select * from clientes;

-- SELECT DISTINCT
select distinct(tipo_cuenta) from cuentas_bancarias;

-- COUNT
select count(*) from clientes;

-- SELECT WHERE
select * from transacciones where monto > 1000;

-- ORDER BY
select * from cuentas_bancarias order by saldo asc;

-- LIMIT
select * from empleados order by fecha_contratacion desc limit 5;

-- BETWEEN
select * from transacciones where fecha_transaccion between '20230101' and '20231231'; 

-- IN
select * from cuentas_bancarias where tipo_cuenta in ('ahorro', 'corriente', 'inversión');

-- LIKE (Búsqueda por nombre)
select * from clientes where nombre like 'a%';

-- LIKE (Búsqueda por apellido)
select * from empleados where apellido like 'S%';

-- LIKE (Búsqueda por dirección)
select * from clientes where direccion like '%Avenue';

-- LIKE (Búsqueda por correo electrónico)
select * from empleados where corre_electronico like '%bank%';

-- LIKE (Búsqueda por nombre de sucursal)
select * from sucursales where nombre like 'Central%';

-- LIKE (Búsqueda por tipo de transacción)
select * from transacciones where tipo_transaccion like '%Depósito%';

-- LIKE (Búsqueda por fecha)
select * from transacciones where fecha_transaccion like '2023%';

-- LIKE (Búsqueda por descripción)
select * from transacciones where descripcion like '%pago%';

-- LIKE (Búsqueda por número de teléfono)
select * from clientes where telefono like '555%';

-- LIKE (Búsqueda por cargo)
select * from empleados where posicion like '%Manager%';