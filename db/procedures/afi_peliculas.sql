
DELIMITER $$
CREATE DEFINER=`root1287`@`%` PROCEDURE `afi_peliculas`(
					prm_nombre 		VARCHAR(500),
					prm_año			INT,
					prm_caratula 	VARCHAR(500),
					prm_cant_dvds 	INT,
					prm_id			INT,
					prm_baja		CHAR(2),
					OUT pro_id		INT	
)
begin
	IF prm_baja = 'S' THEN
	
		UPDATE peliculas 
		SET 	baja_fecha = GETDATE()
		WHERE 	id_peliculas = prm_id;
	
	else 
	
		if prm_id IS NOT null AND prm_id != 0 THEN
		
			UPDATE peliculas
			SET nombre 			= prm_nombre,
				anio 			= prm_anio,
				caratula 		= prm_caratula,
				cant_dvds 		= prm_cant_dvds
			where id_peliculas = prm_id;
			SET pro_id = prm_id;
		else
			INSERT INTO 
			peliculas(
				nombre,
				anio,
				caratula,
				cant_dvds,
				alta_fecha
			)VALUES(
				prm_nombre,
				prm_año,
				prm_caratula,
				prm_cant_dvds,
				now()
			);
			SET pro_id = (select last_insert_id());
		end if;
	end if;
end$$
DELIMITER ;