DELIMITER $$
CREATE DEFINER=`root1287`@`%` PROCEDURE `afs_clientes`(
					prm_ape_nom 	VARCHAR(250),
					prm_tel			VARCHAR(20),
					prm_domicilio 	VARCHAR(500),
					prm_correo 		VARCHAR(45),
					prm_id			INT
)
begin
	SELECT 
			ape_nom,
			num_tel,
			domicilio,
			correo
	FROM 	clientes
	WHERE 	(id_clientes = prm_id OR prm_id IS null)
	AND		(ape_nom like concat('%',prm_ape_nom,'%') OR prm_ape_nom IS null)
	AND		(prm_tel like concat('%',prm_tel,'%') OR prm_tel IS null)
	AND		(prm_domicilio like concat('%',prm_domicilio,'%') OR prm_domicilio IS null)
	AND		(prm_correo like concat('%',prm_correo,'%') OR prm_correo IS null);
end$$
DELIMITER ;
