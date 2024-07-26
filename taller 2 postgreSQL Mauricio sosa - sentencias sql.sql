--1--
select * from clientes;
--2--
SELECT DISTINCT tipo_cuenta from cuenta_bancaria ;
--3--
select count(1) from clientes;
--4--
SELECT  * from transacciones where monto > 1000;
--5--
select * from cuenta_bancaria ORDER BY saldo asc;
--6--
select * from empleados order by fecha_contratacion desc LIMIT 5;
--7--
select * from transacciones  where fecha_transaccion between '2023-01-01 00:00:001' and '2023-12-31 00:00:00';
--8--
select * from cuenta_bancaria where tipo_cuenta in('AHORROS', 'CORRIENTE' , 'INVERSION');
--9--
select * from clientes where nombre like '%a%' ;
--10--
select * from empleados where apellido like 'S%' ;
--11--
select * from clientes where direccion like '%Avenue' ;
--12--
select * from empleados where correo_electronico like '%bank%' ;
--13--
select * from sucursales where nombre like 'Central%' ;
--14--
select * from transacciones where tipo_transaccion like 'Depósito';
--15--
select *  from transacciones where TO_CHAR(fecha_transaccion, 'YYYY/MM/DD HH12:MM:SS') like '2023%';
--16--
select * from transacciones where descripcion like '%pago%' ;
--17--
select * from clientes where telefono like '555%';
--18--
select * from empleados where posicion like '%Manager%' ;
