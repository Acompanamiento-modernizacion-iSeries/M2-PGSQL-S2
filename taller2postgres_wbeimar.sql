select * from clientes;

SELECT DISTINCT tipo_cuenta from cuentas_bancarias ;

select count(1) from clientes;

SELECT  * from transacciones where monto > 1000;
select * from cuentas_bancarias ORDER BY saldo asc;

select * from empleados order by fecha_contratacion desc LIMIT 5;

select * from transacciones  where fecha_transaccion between '2023-01-01 00:00:001' and '2023-12-31 00:00:00';


select * from cuentas_bancarias where tipo_cuenta in('Ahorro', 'Corriente' , 'Inversión');

select * from clientes where nombre like '%a%' ;
select * from empleados where apellido like 'S%' ;
select * from clientes where direccion like '%Avenue' ;
select * from empleados where correo_electronico like '%bank%' ;
select * from sucursales where nombre like 'Central%' ;
select * from transacciones where tipo_transaccion like 'Depósito';
select *  from transacciones where TO_CHAR(fecha_transaccion, 'YYYY/MM/DD HH12:MM:SS') like '2023%';
select * from transacciones where descripcion like '%pago%' ;
select * from clientes where telefono like '555%';
select * from empleados where posicion like '%Manager%' ;














