create table personas (
  personas_id int not null auto_increment,
  tipo_doc varchar(5) not null, 
  num_doc int not null,
  nombre varchar(50) not null,
  telefono varchar(50) default null,
   primary key (personas_id)
   );

create unique index indx_personas01
 on personas(tipo_doc,num_doc);   
   
-- tabla Clientes
create table clientes ( 
  clientes_id int not null auto_increment,
  personas_id INT NOT null,
  tipo_cliente varchar(20) not null,
  primary key (clientes_id),
  FOREIGN KEY (personas_id) REFERENCES Personas(personas_id)
  );

-- create table tipo_clientes
CREATE TABLE tipo_cliente(
tipo_cliente VARCHAR(50) NOT NULL,

PRIMARY KEY (tipo_cliente)
);


