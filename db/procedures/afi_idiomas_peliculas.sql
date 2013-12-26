DELIMITER $$
CREATE DEFINER=`root1287`@`%` PROCEDURE `afi_idiomas_peliculas`(
					prm_id_idioma 	INT,
					prm_id_pelicula	INT,
					prm_baja		CHAR(2)
)
begin
	IF prm_baja = 'S' THEN
		UPDATE idiomas_peliculas 
		SET 	baja_fecha = GETDATE()
		WHERE 	id_idioma = prm_id_idioma
		AND		id_pelicula = prm_id_pelicula;
	
	else 
		INSERT INTO 
		idiomas_peliculas(
			id_idioma,
			id_pelicula,
			alta_fecha
		)VALUES(
			prm_id_idioma,
			prm_id_pelicula,
			now()
		);
	end if;
end$$
DELIMITER ;