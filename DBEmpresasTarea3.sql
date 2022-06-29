/*
	Nombre de Programador:	Daniel Alejandro Juarez García
							 
		Subprogramadores: 	Josue Salvador Valle Jimenez
							Henry Antonio Lima Monzón
		Codigo Técnico: IN5AV 
		Carnets:2020121, 2020091, 2020092
		fecha de creación:
			2021/02/12
			Modificaciones:
				2021/02/13
				2021/02/14
				2021/02/15
				2021/02/16
            
  
*/
drop database if exists DBEmpresasTarea3;
create database DBEmpresasTarea3;
use  DBEmpresasTarea3;


create table TipoEmpleado(
	codigoTipoEmpleadoID INT(11) not null auto_increment, 
	nombreTipoEmpleado Varchar(45) not null,
	sueldoBase Decimal (10,2) not null,
	bonificacion Decimal (10,2) not null, 
	bonificacionEmpresa Decimal (10,2) not null, 
	Primary key PK_codigoTipoEmpleadoID (codigoTipoEmpleadoID)
);

create table Regiones(
	regionID Int(11) not null auto_increment,
    nombreRegion varchar(20) not null, 
    primary key PK_regionID (regionID)
);

create table Departamentos(
	departamentoID int(11) not null auto_increment,
    departamento varchar(20) not null,
    regionID int(11) not null,
    primary key PK_departamentoID (departamentoID),
    constraint FK_departamentos_Regiones foreign key (regionID)
		references Regiones(regionId)
    
);

create table Oficinas(
	oficinaID int (11) not null auto_increment,
    direccion varchar (25) not null,
    departamentoID int(11) not null, 
    primary key PK_oficinaID (oficinaID),
    constraint FK_Oficinas_Departamentos foreign key (departamentoID) 
		references Departamentos(departamentoID)
    
);

create table Telefonos(
	telefonoID int (11) not null auto_increment,
    numeroTelefono varchar (15) not null,
    oficinaID int(11)not null,
    primary key PK_telefonoID (telefonoID),
    constraint FK_Telefonos_Oficinas foreign key (oficinaID)
		references Oficinas(oficinaID)
);

create table DepartamentosEmpresa(
	departamentoEmpresaID int (11) not null auto_increment,
    nombreDepartamentoE varchar(30)not null,
    oficinaID int(11)not null,
    primary key PK_departamentoEmpresaID (departamentoEmpresaID),
    constraint FK_DepartamentosEmpresa_Oficinas foreign key (oficinaID)
		references Oficinas(oficinaID)
);


create table Empleados(
 empleadoID int (11) not null auto_increment,
 nombre varchar (45) not null,
 fechaDeNacimiento date not null,
 edad Int (11),
 telefonoPersonal varchar (15) not null,
 fechaDeContratacion date not null ,
 codigoTipoEmpleadoID int (11) not null,
 departamentoEmpresaID int (11) not null,
 primary key PK_empleadoID (empleadoID),
 constraint FK_Empleados_TipoEmpleado foreign key (codigoTipoEmpleadoID)
	references TipoEmpleado (codigoTipoEmpleadoID),
 constraint FK_Empleados_DepartamentosEmpresa foreign key(departamentoEmpresaID )
	references DepartamentosEmpresa(departamentoEmpresaID) 
);

-- ------------INSERT-------------------------
-- TipoEmpleado
insert into TipoEmpleado(nombreTipoEmpleado, sueldoBase, bonificacion, bonificacionEmpresa)
	values('Jefe ', 4000, 250, 2750 );
insert into TipoEmpleado(nombreTipoEmpleado, sueldoBase, bonificacion, bonificacionEmpresa)
	values('Administrador', 3000, 250, 1750);
insert into TipoEmpleado(nombreTipoEmpleado, sueldoBase, bonificacion, bonificacionEmpresa)
	values('Secretaria ', 2800, 250, 950);
insert into TipoEmpleado(nombreTipoEmpleado, sueldoBase, bonificacion, bonificacionEmpresa)
	values('Repartidor', 2800, 250, 950);
insert into TipoEmpleado(nombreTipoEmpleado, sueldoBase, bonificacion, bonificacionEmpresa)
	values('Gerente ', 6000, 250, 3750);
insert into TipoEmpleado(nombreTipoEmpleado, sueldoBase, bonificacion, bonificacionEmpresa)
	values('Subgerente ', 5000, 250, 3750);
insert into TipoEmpleado(nombreTipoEmpleado, sueldoBase, bonificacion, bonificacionEmpresa)
	values('Jefe ', 4000, 250, 2750);
insert into TipoEmpleado(nombreTipoEmpleado, sueldoBase, bonificacion, bonificacionEmpresa)
	values('Secretaria ', 2800, 250, 950);
insert into TipoEmpleado(nombreTipoEmpleado, sueldoBase, bonificacion, bonificacionEmpresa)
	values('Administrador ', 3000, 250, 1750);
insert into TipoEmpleado(nombreTipoEmpleado, sueldoBase, bonificacion, bonificacionEmpresa)
	values('Repartidor', 2800, 250, 950);
insert into TipoEmpleado(nombreTipoEmpleado, sueldoBase, bonificacion, bonificacionEmpresa)
	values('Gerente ', 6000, 250, 3750);
insert into TipoEmpleado(nombreTipoEmpleado, sueldoBase, bonificacion, bonificacionEmpresa)
	values('Subgerente ', 5000, 250, 3750);
insert into TipoEmpleado(nombreTipoEmpleado, sueldoBase, bonificacion, bonificacionEmpresa)
	values('Ejecutivo', 3500, 250, 3250);
insert into TipoEmpleado(nombreTipoEmpleado, sueldoBase, bonificacion, bonificacionEmpresa)
	values('Director ', 3800, 250, 3950);
    insert into TipoEmpleado(nombreTipoEmpleado, sueldoBase, bonificacion, bonificacionEmpresa)
	values('SubDirector', 3400, 250, 3400);
insert into TipoEmpleado(nombreTipoEmpleado, sueldoBase, bonificacion, bonificacionEmpresa)
	values('Ejecutivo', 3500, 250, 3250);
insert into TipoEmpleado(nombreTipoEmpleado, sueldoBase, bonificacion, bonificacionEmpresa)
	values('Contador', 5800, 250, 3030);
insert into TipoEmpleado(nombreTipoEmpleado, sueldoBase, bonificacion, bonificacionEmpresa)
	values('Secretaria', 2800, 250, 950);
insert into TipoEmpleado(nombreTipoEmpleado, sueldoBase, bonificacion, bonificacionEmpresa)
	values('Contador', 5800, 250, 3030);
    insert into TipoEmpleado(nombreTipoEmpleado, sueldoBase, bonificacion, bonificacionEmpresa)
	values('Contador', 5800, 250, 3030);
-- regiones 
insert into Regiones(nombreRegion) values('Metropolitana'); 
insert into Regiones(nombreRegion) values('Norte'); 
insert into Regiones(nombreRegion) values('Nor-Oriente');
insert into Regiones(nombreRegion) values('Sur-Oriente');
insert into Regiones(nombreRegion) values('Central');
insert into Regiones(nombreRegion) values('Sur-Occidente');
insert into Regiones(nombreRegion) values('Nor-Occidente');
insert into Regiones(nombreRegion) values('Peten');
insert into Regiones(nombreRegion) values('Metropolitana'); 
insert into Regiones(nombreRegion) values('Norte'); 
insert into Regiones(nombreRegion) values('Nor-Oriente');
insert into Regiones(nombreRegion) values('Sur-Oriente');
insert into Regiones(nombreRegion) values('Central');
insert into Regiones(nombreRegion) values('Sur-Occidente');
insert into Regiones(nombreRegion) values('Nor-Occidente');
insert into Regiones(nombreRegion) values('Peten');
insert into Regiones(nombreRegion) values('Metropolitana'); 
insert into Regiones(nombreRegion) values('Norte'); 
insert into Regiones(nombreRegion) values('Nor-Occidente');
insert into Regiones(nombreRegion) values('Peten');

-- Departamentos
insert into Departamentos(departamento, regionID) Values ('Alta Verapaz', 1);
insert into Departamentos(departamento, regionID) Values ('Baja Verapaz', 2);
insert into Departamentos(departamento, regionID) Values ('Chimaltenango', 3);
insert into Departamentos(departamento, regionID) Values ('Chiquimula', 4);
insert into Departamentos(departamento, regionID) Values ('Peten', 5);
insert into Departamentos(departamento, regionID) Values ('El Progreso', 6);
insert into Departamentos(departamento, regionID) Values ('Quiché', 7);
insert into Departamentos(departamento, regionID) Values ('Escuintla', 8);
insert into Departamentos(departamento, regionID) Values ('Guatemala', 9);
insert into Departamentos(departamento, regionID) Values ('Huehuetenango', 10);
insert into Departamentos(departamento, regionID) Values ('Izabal', 11);
insert into Departamentos(departamento, regionID) Values ('Jalapa', 12);
insert into Departamentos(departamento, regionID) Values ('Jutiapa', 13);
insert into Departamentos(departamento, regionID) Values ('Quetzaltenango', 14);
insert into Departamentos(departamento, regionID) Values ('Sacatepequez', 15);
insert into Departamentos(departamento, regionID) Values ('San Marcos', 16);
insert into Departamentos(departamento, regionID) Values ('Santa Rosa', 17);
insert into Departamentos(departamento, regionID) Values ('Zacapa', 18);
insert into Departamentos(departamento, regionID) Values ('Totonicapán', 19);
insert into Departamentos(departamento, regionID) Values ('Sololá', 20);

 -- Oficinas 
 insert into Oficinas (direccion, departamentoID) values('6ta avenida 3-45, zona 11', 1);
 insert into Oficinas (direccion, departamentoID) values('5ta avenida 2-28 zona 3', 2);
 insert into Oficinas (direccion, departamentoID) values('11va avenida 8-35 zona 1', 3);
 insert into Oficinas (direccion, departamentoID) values('1ra avenda 9-40 zona 5', 4);
 insert into Oficinas (direccion, departamentoID) values('12va avenida 15-48 zona 2', 5);
 insert into Oficinas (direccion, departamentoID) values('3ra avenida 5-74', 6);
 insert into Oficinas (direccion, departamentoID) values('9na avenida 2-52 zona 13', 7);
 insert into Oficinas (direccion, departamentoID) values('16va avenida 3-64', 8);
 insert into Oficinas (direccion, departamentoID) values('8va avenida 95-9 zona 10', 9);
 insert into Oficinas (direccion, departamentoID) values('1ra avenida 25-6 zona 9', 10);
 insert into Oficinas (direccion, departamentoID) values('7ma avenida 84-65 zona 11', 11);
 insert into Oficinas (direccion, departamentoID) values('10ma avenida 12-12 ', 12);
 insert into Oficinas (direccion, departamentoID) values('2da avenida 23-78 zona 1', 13);
 insert into Oficinas (direccion, departamentoID) values('6ta avenida 99-78 zona 63', 14);
 insert into Oficinas (direccion, departamentoID) values('9na avenida 10-10 zona 69', 15);
 insert into Oficinas (direccion, departamentoID) values('5ta avenida 11-58 zona 45', 16);
 insert into Oficinas (direccion, departamentoID) values('3ra avenida 74-36 zona 22', 17);
 insert into Oficinas (direccion, departamentoID) values('12va avenida 55-55 ', 18);
 insert into Oficinas (direccion, departamentoID) values('1ra avenida 59-98 zona 47', 19);
 insert into Oficinas (direccion, departamentoID) values('7ma avenida 77-77 zona 7', 20);
 
 -- telefonos 
 insert into Telefonos(numeroTelefono, oficinaID) values ('51847859', 1);
 insert into Telefonos(numeroTelefono, oficinaID) values ('45216598', 2);
 insert into Telefonos(numeroTelefono, oficinaID) values ('45875412', 3);
 insert into Telefonos(numeroTelefono, oficinaID) values ('21859685', 4);
 insert into Telefonos(numeroTelefono, oficinaID) values ('24785498', 5);
 insert into Telefonos(numeroTelefono, oficinaID) values ('45214578', 6);
 insert into Telefonos(numeroTelefono, oficinaID) values ('45455477', 7);
 insert into Telefonos(numeroTelefono, oficinaID) values ('45879652', 8);
 insert into Telefonos(numeroTelefono, oficinaID) values ('52854152', 9);
 insert into Telefonos(numeroTelefono, oficinaID) values ('96632574', 10);
 insert into Telefonos(numeroTelefono, oficinaID) values ('75412564', 11);
 insert into Telefonos(numeroTelefono, oficinaID) values ('47586952', 12);
 insert into Telefonos(numeroTelefono, oficinaID) values ('41748569', 13);
 insert into Telefonos(numeroTelefono, oficinaID) values ('41756895', 14);
 insert into Telefonos(numeroTelefono, oficinaID) values ('24539658', 15);
 insert into Telefonos(numeroTelefono, oficinaID) values ('14528693', 16);
 insert into Telefonos(numeroTelefono, oficinaID) values ('74145278', 17);
 insert into Telefonos(numeroTelefono, oficinaID) values ('78985623', 18);
 insert into Telefonos(numeroTelefono, oficinaID) values ('74854125', 19);
 insert into Telefonos(numeroTelefono, oficinaID) values ('10205385', 20);
 
 -- departamentoEmpresa
 insert into DepartamentosEmpresa (nombreDepartamentoE, oficinaID) values('Financiero', 1); 
 insert into DepartamentosEmpresa (nombreDepartamentoE, oficinaID) values('Administracion', 2); 
 insert into DepartamentosEmpresa (nombreDepartamentoE, oficinaID) values('Recursos Humanos', 3); 
 insert into DepartamentosEmpresa (nombreDepartamentoE, oficinaID) values('Comercial', 4); 
 insert into DepartamentosEmpresa (nombreDepartamentoE, oficinaID) values('Contrataciones', 5); 
 insert into DepartamentosEmpresa (nombreDepartamentoE, oficinaID) values('Servicio a domicilio', 6); 
 insert into DepartamentosEmpresa (nombreDepartamentoE, oficinaID) values('Contabilidad', 7); 
 insert into DepartamentosEmpresa (nombreDepartamentoE, oficinaID) values('Marketing ', 8); 
 insert into DepartamentosEmpresa (nombreDepartamentoE, oficinaID) values('Gerencia', 9); 
 insert into DepartamentosEmpresa (nombreDepartamentoE, oficinaID) values('Financiero', 10); 
 insert into DepartamentosEmpresa (nombreDepartamentoE, oficinaID) values('Administracion', 11); 
 insert into DepartamentosEmpresa (nombreDepartamentoE, oficinaID) values('Recursos Humanos', 12); 
 insert into DepartamentosEmpresa (nombreDepartamentoE, oficinaID) values('Comercial', 13); 
 insert into DepartamentosEmpresa (nombreDepartamentoE, oficinaID) values('Contrataciones', 14); 
 insert into DepartamentosEmpresa (nombreDepartamentoE, oficinaID) values('Servicio a domicilio', 15); 
 insert into DepartamentosEmpresa (nombreDepartamentoE, oficinaID) values('Contabilidad', 15); 
 insert into DepartamentosEmpresa (nombreDepartamentoE, oficinaID) values('Marketing ', 17); 
 insert into DepartamentosEmpresa (nombreDepartamentoE, oficinaID) values('Gerencia', 18); 
 insert into DepartamentosEmpresa (nombreDepartamentoE, oficinaID) values('Operaciones', 19); 
 insert into DepartamentosEmpresa (nombreDepartamentoE, oficinaID) values('Operaciones', 20);
 
 -- Empleados 
 insert into Empleados (nombre, fechaDeNacimiento, edad, telefonoPersonal, fechaDeContratacion, codigoTipoEmpleadoID, departamentoEmpresaID) 
	values('Juan Ordoñez','1999-02-03','22','48822092','2015-05-02', 1, 4);
insert into Empleados (nombre, fechaDeNacimiento, edad, telefonoPersonal, fechaDeContratacion, codigoTipoEmpleadoID, departamentoEmpresaID) 
	values('Roberto Dominguez','1998-02-01','50','48862092','2017-03-08', 2, 2);
insert into Empleados (nombre, fechaDeNacimiento, edad, telefonoPersonal, fechaDeContratacion, codigoTipoEmpleadoID, departamentoEmpresaID) 
	values('Antonia Lima','1997-08-13','23','23456092','2017-07-15', 3, 4);
insert into Empleados (nombre, fechaDeNacimiento, edad, telefonoPersonal, fechaDeContratacion, codigoTipoEmpleadoID, departamentoEmpresaID) 
	values('José','1999-01-06','22','47890354','2018-10-10', 4, 6);
insert into Empleados (nombre, fechaDeNacimiento, edad, telefonoPersonal, fechaDeContratacion, codigoTipoEmpleadoID, departamentoEmpresaID) 
	values('Alejandro Duarte','1987-01-28','34','57684920','2019-11-12', 5, 9);
insert into Empleados (nombre, fechaDeNacimiento, edad, telefonoPersonal, fechaDeContratacion, codigoTipoEmpleadoID, departamentoEmpresaID)  
	values('Ricardo Marroquin','2000-01-25','21','48822332','2020-01-01', 6, 5);
insert into Empleados (nombre, fechaDeNacimiento, edad, telefonoPersonal, fechaDeContratacion, codigoTipoEmpleadoID, departamentoEmpresaID) 
	values('Ramiro Ramirez','1989-08-18','31','488225672','2011-06-14', 7, 4);
insert into Empleados (nombre, fechaDeNacimiento, edad, telefonoPersonal, fechaDeContratacion, codigoTipoEmpleadoID, departamentoEmpresaID) 
	values('Luisa  Martinez','1999-05-04','21','25362092','2017-05-02', 8, 4);
insert into Empleados (nombre, fechaDeNacimiento, edad, telefonoPersonal, fechaDeContratacion, codigoTipoEmpleadoID, departamentoEmpresaID) 
	values('Henry Monzón','1999-12-09','21','36582092','2017-05-02', 9, 2);
insert into Empleados (nombre, fechaDeNacimiento, edad, telefonoPersonal, fechaDeContratacion, codigoTipoEmpleadoID, departamentoEmpresaID)  
	values('Juan Ordoñez','1999-05-09','21','38822092','2014-04-26', 10, 6);
insert into Empleados (nombre, fechaDeNacimiento, edad, telefonoPersonal, fechaDeContratacion, codigoTipoEmpleadoID, departamentoEmpresaID)  
	values('Joaquin Alvarado','2001-07-19','19','22934857','2013-04-02', 11, 9);
insert into Empleados (nombre, fechaDeNacimiento, edad, telefonoPersonal, fechaDeContratacion, codigoTipoEmpleadoID, departamentoEmpresaID)  
	values('Bobby Pulido','1989-08-29','31','38854039','2012-03-27', 12, 5);
insert into Empleados (nombre, fechaDeNacimiento, edad, telefonoPersonal, fechaDeContratacion, codigoTipoEmpleadoID, departamentoEmpresaID)  
	values('Valentín Elizalde','1987-06-17','33','28394856','2021-01-01', 13, 3);
insert into Empleados (nombre, fechaDeNacimiento, edad, telefonoPersonal, fechaDeContratacion, codigoTipoEmpleadoID, departamentoEmpresaID)  
	values('Romeo Santos','1980-02-13','41','27738495','2011-03-08', 14, 19);
insert into Empleados (nombre, fechaDeNacimiento, edad, telefonoPersonal, fechaDeContratacion, codigoTipoEmpleadoID, departamentoEmpresaID)  
	values('Daniel Hernandez','1986-01-12','35','28394021','2020-10-10', 15, 8);
insert into Empleados (nombre, fechaDeNacimiento, edad, telefonoPersonal, fechaDeContratacion, codigoTipoEmpleadoID, departamentoEmpresaID)  
	values('Adriana Velasquez','2000-01-25','20','28394051','2020-01-02', 16, 3);
insert into Empleados (nombre, fechaDeNacimiento, edad, telefonoPersonal, fechaDeContratacion, codigoTipoEmpleadoID, departamentoEmpresaID)  
	values('Miguel García','1998-08-16','22','2893012','2020-05-02', 17, 7 );
insert into Empleados (nombre, fechaDeNacimiento, edad, telefonoPersonal, fechaDeContratacion, codigoTipoEmpleadoID, departamentoEmpresaID)  
	values('Bárbara Orozco','1998-09-11','22','48823292','2017-05-02', 18, 4);
insert into Empleados (nombre, fechaDeNacimiento, edad, telefonoPersonal, fechaDeContratacion, codigoTipoEmpleadoID, departamentoEmpresaID) 
	values('Mario Ramirez','1969-01-30','52','48833492','2010-01-02',19 ,7);
insert into Empleados (nombre, fechaDeNacimiento, edad, telefonoPersonal, fechaDeContratacion, codigoTipoEmpleadoID, departamentoEmpresaID) 
	values('Andrea Suchite','1995-08-19','25','48822092','2019-03-02', 20, 7);

-- ------------------Consultas---------------
-- 1) Nombre y edad de los empleados.
select nombre, edad from Empleados;

/* 2) Salario de los Tipo de Empleado si suponemos un aumento del 2% anual 
(calcular liquidación de un empleado) tomando en cuenta que es un salario base por año + aguinaldo + bono 14.*/
select nombreTipoEmpleado, 0.02*(sueldoBase)*15+(sueldoBase*15)+(sueldoBase-bonificacion)+(sueldoBase-bonificacion)
	from TipoEmpleado;


-- 3) fecha de contratación de cada empleado.
select e.fechaDeContratacion, e.nombre from Empleados e;

-- 4) Edades de los empleados.
select e.edad, e.nombre from Empleados e;

-- 5) Número de empleados que hay para cada una de las edades.
select edad, count(edad) from Empleados group by edad;

-- 6) Edad media de los empleados por departamento.
 SELECT round(avg(edad)) from empleados where departamentoEmpresaID=3;
 
 -- 7) Tipos de Empleados que superan las 35.000 de salario.
select sueldoBase from TipoEmpleado having sueldoBase>35000;
 
 -- 8)Datos del empleado número X.
 Select e.nombre , e.fechaDeNacimiento, e.edad, e.telefonoPersonal,  e.fechaDeContratacion, e.codigoTipoEmpleadoID, e.departamentoEmpresaID 
	from Empleados e where empleadoID=1;
 
 -- 9)Empleados del departamento de empresa X.
 select e.nombre from Empleados e where departamentoEmpresaID=3;  
 
 -- 10)Empleados cuya contratación se produjo en el año X.
select e.nombre from Empleados e where year  (fechaDeContratacion)='2017'; 

/* 11)	Empleados que no sean jefe de Departamento 
 (atributo nombreTipoEmpleado dentro de la entidad TipoEmpleados) X */ 

select nombreTipoEmpleado from TipoEmpleado where nombreTipoEmpleado < 'Jefe';


-- 12) Empleados contratados entre los años X y X 

select empleadoID, nombre, fechaDeContratacion
 from Empleados where year (fechaDeContratacion)<2020 and year (fechaDeContratacion)>2010;


-- 13)	Tipos de Empleado que tienen un salario superior a 35.000 e inferior a 40.000. 
select * from TipoEmpleado where (sueldoBase)<35000 and (sueldoBase)>40000;

-- 14)	Empleados cuyo tipo de empleado es director o jefe de sección  
	Select * from Empleados where codigoTipoEmpleadoID IN(7, 14);  

-- 15) Empleados de nombre 'Jose'. 
 
select e.nombre from Empleados e where nombre='José';

-- 16) Empleados que pertenecen al departamento administrativo y que tienen una edad mayor a 35 años.
 
 SELECT e.nombre, e.edad FROM Empleados e
 WHERE departamentoEmpresaID=2 AND edad>35 ;

-- 17) Empleados que no pertenecen al departamento de la empresa X
SELECT  e.nombre,   DepartamentosEmpresa.nombreDepartamentoE  FROM Empleados e inner join DepartamentosEmpresa 
 on e.departamentoEmpresaID=DepartamentosEmpresa.departamentoEmpresaID where not nombreDepartamentoE='administracion';

-- 18) Nombre y edad de los empleados ordenados de menor a mayor edad.

select e.nombre, e.edad from Empleados e ORDER BY edad;

-- 19) Nombre y edad de los empleados ordenados por nombre de forma descendente.

select e.nombre, e.edad from Empleados e ORDER BY nombre desc ;

-- 20) Nombre del empleado y el departamento de la empresa en la que trabaja.

SELECT  e.nombre,   DepartamentosEmpresa.nombreDepartamentoE  FROM Empleados e inner join DepartamentosEmpresa 
 on e.departamentoEmpresaID=DepartamentosEmpresa.departamentoEmpresaID;

-- 21) Código y teléfonos de los departamentos de las oficinas de la región 'Centro'.select nombre from Empleados;

Select T.numeroTelefono as Numero_De_Telefono, D.departamentoID from Telefonos T inner join Departamentos D
	on T.telefonoID= D.departamentoID and regionID=5;
    
-- 22) Nombre del empleado y departamento de Guatemala en el que trabaja.

select E.nombre, D.departamento
	from Empleados E, DepartamentosEmpresa DE, Oficinas O, Departamentos D
			where E.DepartamentoEmpresaID=DE.DepartamentoEmpresaID and DE.OficinaID=O.OficinaID 
					and O.DepartamentoID=D.DepartamentoID;
            
-- 23) Sueldo de cada empleado y sus bonificaciones.

select T.sueldoBase, T.bonificacion, T.bonificacionEmpresa from TipoEmpleado T;


-- 24) Nombre de los empleados y de sus jefes de departamento.
select e.nombre, jefe.nombre from Empleados as e, Empleados as jefe
		where e.departamentoEmpresaID=jefe.departamentoEmpresaID 
		and jefe.codigoTipoEmpleadoID=2 
		and e.nombre<>jefe.nombre;

-- 25) Suma del sueldo de los empleados, sin la bonificación

select sum(sueldoBase) from TipoEmpleado;

-- 26) Promedio del sueldo, sin contar bonificación

 SELECT round(avg(sueldoBase)) from TipoEmpleado ;

-- 27) Salarios máximo y mínimo de los empleados, incluyendo bonificación.

select max(sueldoBase), min(sueldoBase) from TipoEmpleado;

-- 28) Número de empleados que superan los 40 años.

SELECT e.nombre, e.edad FROM Empleados e
 WHERE edad>40 ;

-- 29) Número de edades diferentes que tienen los empleados.

select count(distinct edad) from Empleados;
