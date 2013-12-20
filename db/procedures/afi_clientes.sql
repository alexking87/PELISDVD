DELIMITER $$
CREATE DEFINER=`root1287`@`%` PROCEDURE `afi_clientes`(
					prm_ape_nom 	VARCHAR(250),
					prm_tel			VARCHAR(20),
					prm_domicilio 	VARCHAR(500),
					prm_correo 		VARCHAR(45),
					prm_id			INT,
					prm_baja		CHAR(2),
					OUT pro_id		INT	
)
begin
	IF prm_baja = 'S' THEN
	
		UPDATE clientes 
		SET 	baja_fecha = GETDATE()
		WHERE 	id_clientes = prm_id;
	
	else 
	
		if prm_id IS null THEN
		
			UPDATE clientes
			SET ape_nom 	= prm_ape_nom,
				num_tel 	= prm_tel,
				domicilio 	= prm_domicilio,
				correo 		= prm_correo
			where id_clientes = prm_id;
			SET pro_id = prm_id;
		else
		
			INSERT INTO 
			clientes(
				ape_nom,
				num_tel,
				domicilio,
				correo,
				alta_fecha
			)VALUES(
				prm_ape_nom,
				num_tel,
				prm_domicilio,
				prm_correo
			);
			SET pro_id = (select last_insert_id());
		end if;
	end if;
end$$
DELIMITER ;
