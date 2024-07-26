-- 1. 
select * from public.clientes ;
-- 2. 
select distinct(tipo_cuenta) from public.cuentas;
-- 3.
select count (cliente_id) from public.clientes
-- 4.
select * from public.transacciones where monto > 1000
-- 5.
select * from public.cuentas order by saldo asc
-- 6.
select * from public.empleados order by fecha_contratacion desc limit 5
-- 7.
select * from public.transacciones where fecha_transaccion between '2023-01-01 00:00:00' and '2023-12-31 00:00:00' 
-- 8.
select * from public.cuentas where tipo_cuenta in ('ahorros') or tipo_cuenta in ('corriente') or tipo_cuenta in ('inversión')
-- 9.
select * from public.clientes where nombre like ('%a%')
-- 10.
select * from public.clientes where apellido like ('s%')
-- 11.
select * from public.clientes where direccion like ('%Avenue')
-- 12.
select * from public.clientes where correo_electronico like ('%banck%')
-- 13.
select * from public.sucursales where nombre like ('central%')
-- 14.
select * from public.transacciones where tipo_transaccion like '%deposito%'
-- 15.
select * from public.transacciones where TO_CHAR(fecha_transaccion, 'YYYY-MM-DD') like '%2023%'
-- 16.
select * from public.transacciones where descripcion like '%pago%'
-- 17.
select * from public.clientes where telefono like '555%'
-- 18.
select * from public.empleados where posicion like '%Manager%'