DELIMITER $$
CREATE DEFINER=`root1287`@`%` PROCEDURE `afi_generos_peliculas`(
					prm_id_genero 	INT,
					prm_id_pelicula	INT,
					prm_orden	 	INT,
					prm_baja		CHAR(2),
					OUT pro_id		INT	
)
begin
	IF prm_baja = 'S' THEN
	
		UPDATE generos_peliculas 
		SET 	baja_fecha = GETDATE()
		WHERE 	id_peliculas = prm_id;
	
	else 
		INSERT INTO 
		generos_peliculas(
			id_genero,
			id_pelicula,
			orden,
			alta_fecha
		)VALUES(
			prm_id_genero,
			prm_id_pelicula,
			prm_orden,
			now()
		);
		SET pro_id = (select last_insert_id());
	end if;
end$$
DELIMITER ;