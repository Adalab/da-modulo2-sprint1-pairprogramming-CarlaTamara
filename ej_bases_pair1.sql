 CREATE SCHEMA tienda_zapatillas;
 USE tienda_zapatillas;
 
 CREATE TABLE zapatillas(
 id_zapatillas INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
 modelo VARCHAR(45) NOT NULL,
 color VARCHAR(45) NOT NULL);
 
 CREATE TABLE clientes(
 id_cliente INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
 nombre VARCHAR(45) NOT NULL,
 numero_telefono INT NOT NULL,
 email VARCHAR(45) NOT NULL,
 direccion  VARCHAR(45) NOT NULL,
 ciudad  VARCHAR(45) NULL,
 provincia  VARCHAR(45) NOT NULL,
 pais  VARCHAR(45) NOT NULL,
 codigo_postal INT(45) NOT NULL);
 
 
 CREATE TABLE empleados(
 id_empleados INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
 nombre VARCHAR(45) NOT NULL,
 tienda VARCHAR(45) NOT NULL, 
 salario FLOAT NULL,
 fecha_incorporacion DATE NOT NULL);
 
 
 CREATE TABLE facturas(
 id_facturas INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
 id_zapatillas INT NOT NULL,
 id_cliente INT NOT NULL,
 id_empleados INT NOT NULL,
 
 numero_factura VARCHAR(45) NOT NULL,
 fecha DATE NOT NULL,
 CONSTRAINT fk_id_zapatillas
	FOREIGN KEY (id_zapatillas)
	REFERENCES zapatillas(id_zapatillas),
    
CONSTRAINT fk_id_empleados
	FOREIGN KEY (id_empleados)
	REFERENCES empleados(id_empleados),
    
CONSTRAINT fk_id_cliente
	FOREIGN KEY (id_cliente)
	REFERENCES clientes(id_cliente));
	 
 
 
 
 
 
 
 
 
 
 
 
 
 