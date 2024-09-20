DELIMITER //

CREATE PROCEDURE  buscar_usuario_by_id (IN id INT)

BEGIN
    SELECT * FROM users WHERE user_id = id;

END//

DELIMITER ;


