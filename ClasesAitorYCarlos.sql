/*
Created		4/8/2024
Modified		4/15/2024
Project		
Model		
Company		
Author		
Version		
Database		mySQL 5 
*/


drop table IF EXISTS CATALOGO_ANHO_QUE_VIENE;
drop table IF EXISTS CURSOS;
drop table IF EXISTS CALIFICACIONES;
drop table IF EXISTS MODULOS;
drop table IF EXISTS PROFESORES;
drop table IF EXISTS ALUMNOS;


Create table ALUMNOS (
	CODIGO_ALUMNO Char(7) NOT NULL COMMENT 'ALU-001',
	CONVOCATORIAS_ALUMNO Char(1) NOT NULL,
	CODIGO_MODULO Char(7) NOT NULL,
	NOMBRE_ALUMNO Varchar(15) NOT NULL,
	APELLIDO1_ALUMNO Varchar(15) NOT NULL,
	APELLIDO2_ALUMNO Varchar(15) NOT NULL,
	FECHA_NACIMIENTO_ALUMNO Date NOT NULL,
 Primary Key (CODIGO_ALUMNO,CONVOCATORIAS_ALUMNO,CODIGO_MODULO)) ENGINE = InnoDB;

Create table PROFESORES (
	CODIGO_PROFESOR Char(7) NOT NULL COMMENT 'INF-001',
	NOMBRE_PROFESOR Varchar(15) NOT NULL,
	APELLIDO1_PROFESOR Varchar(15) NOT NULL,
	APELLIDO2_PROFESOR Varchar(15),
	FECHA_NACIMIENTO_PROFESOR Date NOT NULL,
 Primary Key (CODIGO_PROFESOR)) ENGINE = InnoDB;

Create table MODULOS (
	CODIGO_MODULO Char(7) NOT NULL,
	NOMBRE_MODULO Varchar(10) NOT NULL,
	HORAS_SEMANALES_MODULO Char(3) NOT NULL,
	ALUMNOS_MATRICULADOS_MODULO Char(3) NOT NULL,
 Primary Key (CODIGO_MODULO)) ENGINE = InnoDB;

Create table CALIFICACIONES (
	CODIGO_ALUMNO Char(7) NOT NULL,
	CONVOCATORIAS_ALUMNO Char(1) NOT NULL,
	CODIGO_MODULO Char(7) NOT NULL,
	CODIGO_PROFESOR Char(7) NOT NULL,
	NOTA_1_EVALUACION Char(2) NOT NULL,
	NOTA_2_EVALUACION Char(2) NOT NULL,
	NOTA_ORDINARIA Char(2) NOT NULL,
	NOTA_EXTRAORDINARIA Char(2) NOT NULL,
 Primary Key (CODIGO_ALUMNO,CONVOCATORIAS_ALUMNO,CODIGO_MODULO,CODIGO_PROFESOR)) ENGINE = InnoDB;

Create table CURSOS (
	CODIGO_CURSO Char(7) NOT NULL,
	ANHO_CURSO Date NOT NULL,
	PLAZAS_CURSO Char(2) NOT NULL,
 Primary Key (CODIGO_CURSO,ANHO_CURSO)) ENGINE = InnoDB;

Create table CATALOGO_ANHO_QUE_VIENE (
	CODIGO_CURSO Char(7) NOT NULL,
	CODIGO_MODULO Char(7) NOT NULL,
 Primary Key (CODIGO_CURSO,CODIGO_MODULO)) ENGINE = InnoDB;

INSERT INTO ALUMNOS (CODIGO_ALUMNO, CONVOCATORIAS_ALUMNO, CODIGO_MODULO, NOMBRE_ALUMNO, APELLIDO1_ALUMNO, APELLIDO2_ALUMNO, FECHA_NACIMIENTO_ALUMNO) VALUES('ALU-001','2','MOD-001','Carlos','Hernandez','Herrador','21/12/2002');
INSERT INTO ALUMNOS (CODIGO_ALUMNO, CONVOCATORIAS_ALUMNO, CODIGO_MODULO, NOMBRE_ALUMNO, APELLIDO1_ALUMNO, APELLIDO2_ALUMNO, FECHA_NACIMIENTO_ALUMNO) VALUES('ALU-002','2','MOD-002','Paco','Hernandez','Fernandez','14/03/2004');
INSERT INTO ALUMNOS (CODIGO_ALUMNO, CONVOCATORIAS_ALUMNO, CODIGO_MODULO, NOMBRE_ALUMNO, APELLIDO1_ALUMNO, APELLIDO2_ALUMNO, FECHA_NACIMIENTO_ALUMNO) VALUES('ALU-003','2','MOD-006','Miriam','Perez','Jimenez','01/11/2003');
INSERT INTO ALUMNOS (CODIGO_ALUMNO, CONVOCATORIAS_ALUMNO, CODIGO_MODULO, NOMBRE_ALUMNO, APELLIDO1_ALUMNO, APELLIDO2_ALUMNO, FECHA_NACIMIENTO_ALUMNO) VALUES('ALU-004','2','MOD-004','Paco','Hernandez','Fernandez','09/08/2002');
INSERT INTO ALUMNOS (CODIGO_ALUMNO, CONVOCATORIAS_ALUMNO, CODIGO_MODULO, NOMBRE_ALUMNO, APELLIDO1_ALUMNO, APELLIDO2_ALUMNO, FECHA_NACIMIENTO_ALUMNO) VALUES('ALU-005','2','MOD-003','Fernando','Hernandez','Fernandez','14/03/1997');
INSERT INTO ALUMNOS (CODIGO_ALUMNO, CONVOCATORIAS_ALUMNO, CODIGO_MODULO, NOMBRE_ALUMNO, APELLIDO1_ALUMNO, APELLIDO2_ALUMNO, FECHA_NACIMIENTO_ALUMNO) VALUES('ALU-007','2','MOD-002','Miriam','Perez','Jimenez','01/11/2003');
INSERT INTO ALUMNOS (CODIGO_ALUMNO, CONVOCATORIAS_ALUMNO, CODIGO_MODULO, NOMBRE_ALUMNO, APELLIDO1_ALUMNO, APELLIDO2_ALUMNO, FECHA_NACIMIENTO_ALUMNO) VALUES('ALU-008','2','MOD-005','Paco','Hernandez','Fernandez','09/08/2002');
INSERT INTO ALUMNOS (CODIGO_ALUMNO, CONVOCATORIAS_ALUMNO, CODIGO_MODULO, NOMBRE_ALUMNO, APELLIDO1_ALUMNO, APELLIDO2_ALUMNO, FECHA_NACIMIENTO_ALUMNO) VALUES ('ALU-002','1','MOD-004','Alba','Ramos','Rodriguez','2002-21-12');
INSERT INTO ALUMNOS (CODIGO_ALUMNO, CONVOCATORIAS_ALUMNO, CODIGO_MODULO, NOMBRE_ALUMNO, APELLIDO1_ALUMNO, APELLIDO2_ALUMNO, FECHA_NACIMIENTO_ALUMNO) VALUES ('ALU-006', '3', 'MOD-003', 'Cristina', 'Sanchez', 'Castellon', '2009-03-06');

INSERT INTO MODULOS (CODIGO_MODULO, NOMBRE_MODULO, HORAS_SEMANALES_MODULO, ALUMNOS_MATRICULADOS_MODULO) VALUES ('MOD-001', 'Bases de datos', '6', '30');
INSERT INTO MODULOS (CODIGO_MODULO, NOMBRE_MODULO, HORAS_SEMANALES_MODULO, ALUMNOS_MATRICULADOS_MODULO) VALUES ('MOD-002', 'Programacion', '8', '26');
INSERT INTO MODULOS (CODIGO_MODULO, NOMBRE_MODULO, HORAS_SEMANALES_MODULO, ALUMNOS_MATRICULADOS_MODULO) VALUES ('MOD-003', 'Lenguaje de marcas', '4', '30');
INSERT INTO MODULOS (CODIGO_MODULO, NOMBRE_MODULO, HORAS_SEMANALES_MODULO, ALUMNOS_MATRICULADOS_MODULO) VALUES ('MOD-004', 'Sistemas informaticos', '6', '27');
INSERT INTO MODULOS (CODIGO_MODULO, NOMBRE_MODULO, HORAS_SEMANALES_MODULO, ALUMNOS_MATRICULADOS_MODULO) VALUES ('MOD-005', 'Formacion y orientacion laboral', '3', '15');
INSERT INTO MODULOS (CODIGO_MODULO, NOMBRE_MODULO, HORAS_SEMANALES_MODULO, ALUMNOS_MATRICULADOS_MODULO) VALUES ('MOD-006', 'Entornos de desarrollo', '3', '20');

INSERT INTO CALIFICACIONES (CODIGO_ALUMNO, CONVOCATORIAS_ALUMNO, CODIGO_MODULO, CODIGO_PROFESOR, NOTA_1_EVALUACION, NOTA_2_EVALUACION, NOTA_ORDINARIA, NOTA_EXTRAORDINARIA) VALUES ('ALU-001', '3', 'MOD-002', 'INF-004', '8', '6', '4', '9');
INSERT INTO CALIFICACIONES (CODIGO_ALUMNO, CONVOCATORIAS_ALUMNO, CODIGO_MODULO, CODIGO_PROFESOR, NOTA_1_EVALUACION, NOTA_2_EVALUACION, NOTA_ORDINARIA, NOTA_EXTRAORDINARIA) VALUES ('ALU-002', '3', 'MOD-001', 'INF-002', '8', '4', '7', NULL);
INSERT INTO CALIFICACIONES (CODIGO_ALUMNO, CONVOCATORIAS_ALUMNO, CODIGO_MODULO, CODIGO_PROFESOR, NOTA_1_EVALUACION, NOTA_2_EVALUACION, NOTA_ORDINARIA, NOTA_EXTRAORDINARIA) VALUES ('ALU-003', '3', 'MOD-006', 'INF-003', '8', '6', '4', '9');
INSERT INTO CALIFICACIONES (CODIGO_ALUMNO, CONVOCATORIAS_ALUMNO, CODIGO_MODULO, CODIGO_PROFESOR, NOTA_1_EVALUACION, NOTA_2_EVALUACION, NOTA_ORDINARIA, NOTA_EXTRAORDINARIA) VALUES ('ALU-004', '3', 'MOD-004', 'INF-004', '8', '4', '7', NULL);



