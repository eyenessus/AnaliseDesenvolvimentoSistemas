DELIMITER
    //
CREATE FUNCTION plano(idClient INT) RETURNS VARCHAR(25) NOT DETERMINISTIC BEGIN
    DECLARE
        valor DECIMAL(2, 1) ; DECLARE tipo VARCHAR(25) ;
    SELECT
        SUM(valor_total)
    INTO valor
FROM
    `venda`
WHERE
    cliente_id = idClient ;  
SET tipo:=  IF(
        valor > 10000,
        "PREMIUM",
        "REGULAR"
    );
    RETURN tipo;
END //