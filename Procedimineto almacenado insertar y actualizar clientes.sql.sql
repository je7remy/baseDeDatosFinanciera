CREATE DEFINER=`root`@`localhost` PROCEDURE `add_update_cliente`(
in p_id_cliente int,
in p_nombre_cliente VARCHAR(100),
in p_apellido_cliente VARCHAR(50),
in p_cedula_cliente VARCHAR(14), 
in p_direccion_cliente VARCHAR(255),
in p_pais_id smallint,
in p_sexo_cliente CHAR(1),
in p_email_cliente VARCHAR(100),
in p_limiteCred_cliente DECIMAL(15, 2))
BEGIN
if exists (select id_cliente from cliente where id_cliente = p_id_cliente ) then
begin
  update cliente set nombre_cliente = p_nombre_cliente,
        apellido_cliente = p_apellido_cliente,
		cedula_cliente = p_apellido_cliente,
		direccion_cliente = p_direccion_cliente,
        pais_id = p_pais_id,
        sexo_cliente = p_sexo_cliente,
		email_cliente = p_email_cliente,
        limiteCred_cliente = p_limiteCred_cliente
        where id_cliente = p_id_cliente;
         end;
	else 
       begin
       insert into cliente ( nombre_cliente,
                             apellido_cliente,
                             cedula_cliente, 
                             direccion_cliente,
                             pais_id,
                             sexo_cliente,
                             email_cliente,
							 limiteCred_cliente)
                             
	   values (p_nombre_cliente,
                             p_apellido_cliente,
                             p_cedula_cliente, 
                             p_direccion_cliente,
                             p_pais_id,
                             p_sexo_cliente,
                             p_email_cliente,
							 p_limiteCred_cliente);
                             end;
                             end if;
END