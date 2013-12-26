DELIMITER $$
CREATE DEFINER=`root1287`@`%` PROCEDURE `afs_generos`(
					prm_fecha 	datetime
)
begin
	IF prm_fecha IS NULL then 
		SET prm_fecha = now();
	end if;

	SELECT id_genero,
			descripcion
	FROM 	generos
	WHERE 	baja_fecha IS null
	or		baja_fecha >= prm_fecha;
end$$
DELIMITER ;