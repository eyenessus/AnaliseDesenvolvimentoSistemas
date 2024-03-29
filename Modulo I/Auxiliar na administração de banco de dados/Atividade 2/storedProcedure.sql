SET
    @client = 1;

SET
    @dateStart = '2019-01-08';

SET
    @dateEnd = '2019-02-15';

DELIMITER // CREATE PROCEDURE listaDeCompras(
    IN clientID INT,
    INOUT dateStart DATETIME,
    INOUT dateEnd DATETIME
) BEGIN

SELECT
    C.nome AS NomeCliente,
    V.id AS idCompra,
    I.nome_produto AS NomeProduto,
    I.quantidade AS Quantidade,
    V.data AS DATA
FROM
    cliente AS C
    JOIN venda AS V ON C.id = V.cliente_id
    JOIN item_venda AS I ON V.id = I.venda_id
WHERE
    DATA BETWEEN @dateStart
    AND @dateEnd AND C.id = @client ORDER BY @dateStart;

END //

 CALL listaDeCompras(@client, @dateStart, @dateEnd)