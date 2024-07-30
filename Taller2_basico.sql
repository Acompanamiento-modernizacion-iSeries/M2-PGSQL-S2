select * from clientes;

SELECT distinct tipo_cuenta from cuentas_bancarias;

select  count(*) from  clientes; 

select * from transacciones where monto > 1000;

SELECT * from cuentas_bancarias order by saldo desc;

select * from empleados order by fecha_contratacion desc limit 5;

select * from transacciones where fecha_transaccion between '2024-01-01 00:00:001' and '2024-12-31 00:00:00';

SELECT * from cuentas_bancarias where tipo_cuenta in ('ahorro', 'corriente' , 'Inversión');

select  * from  clientes where nombre like '%a%'; 
select  * from  empleados where apellido like 'S%'; 
select  * from  clientes where direccion like '%Avenue' ; 
select * from empleados where correo_electronico like '%bank%' ;

select * from sucursales where nombre like 'Central%' ;
select * from transacciones where tipo_transaccion like 'depósito';

select *  from transacciones where descripcion like '%pago%';
select *  from transacciones where TO_CHAR(fecha_transaccion, 'YYYY/MM/DD HH12:MM:SS') like '2023%';

select  * from  clientes where telefono like '555%'; 
select * from empleados where posicion like '%Manager%' ;



