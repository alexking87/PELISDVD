DROP PROCEDURE IF EXISTS baseada1287.afi_clientes;

DELIMITER $$
CREATE PROCEDURE baseada1287.afi_clientes(
					prm_ape_nom 	VARCHAR(250),
					prm_tel			VARCHAR(20),
					prm_domicilio 	VARCHAR(500),
					prm_correo 		VARCHAR(45),
					prm_id			INT,
					prm_baja		CHAR(2)
)begin
	IF prm_baja = 'S' THEN
	
		UPDATE CLIENTES 
		SET 	baja_fecha = GETDATE()
		WHERE 	id_clientes = prm_id;
	
	else 
	
		if prm_id IS null THEN
		
			UPDATE CLIENTES
			SET ape_nom 	= prm_ape_nom,
				num_tel 	= prm_tel,
				domicilio 	= prm_domicilio,
				correo 		= prm_correo
			where id_clientes = prm_id;
		
		else
		
			INSERT INTO 
			CLIENTES(
				ape_nom,
				num_tel,
				domicilio,
				correo,
				alta_fecha
			)VALUES(
				prm_ape_nom,
				num_tel,
				prm_domiclio,
				prm_correo
			);	
		end if;
	end if;
end$$

