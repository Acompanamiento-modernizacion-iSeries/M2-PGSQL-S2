select * from clientes
select DISTINCT tipo_cuenta from cuentas
select count(cliente_id) from clientes
select * from transacciones where monto > 1000
select * from cuentas order by saldo asc
select * from empleados order by fecha_contratacion desc limit 5
select * from transacciones where fecha_transaccion BETWEEN '20230101' and '20231231'
select * from cuentas where tipo_cuenta in ('AHORRO', 'CORRIENTE','INVERSION')
select * from clientes where nombre like '%a%'
select * from empleados where apellido like 'S%';
select * from clientes where direccion like '%Avenue';
select * from empleados where correo_electronico like '%bank%';
select * from sucursales where nombre like 'Central%';
select * from transacciones where tipo_transaccion like 'Deposito'
select * from transacciones where cast(fecha_transaccion as varchar) like '2023%'
select * from transacciones where descripcion like '%pago%'
select * from clientes where telefono like '555%'
select * from empleados where cargo like '%Manager%'