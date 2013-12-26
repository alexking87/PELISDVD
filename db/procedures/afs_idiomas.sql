DELIMITER $$
CREATE DEFINER=`root1287`@`%` PROCEDURE `afs_idiomas`(
					prm_fecha 	datetime
)
begin
	IF prm_fecha IS NULL then 
		SET prm_fecha = now();
	end if;

	SELECT id_idioma,
			descripcion
	FROM 	idiomas
	WHERE 	baja_fecha IS null
	or		baja_fecha >= prm_fecha;
end$$
DELIMITER ;