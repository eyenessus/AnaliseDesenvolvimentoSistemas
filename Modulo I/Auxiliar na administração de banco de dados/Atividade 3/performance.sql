/*
consulta para um relatório de todas as vendas pagas em dinheiro. 
Necessários para o relatório data da venda, valor total; produtos vendidos, quantidade e valor unitário; nome do cliente, cpf e telefone.
Ordena-se pela data de venda, as mais recentes primeiro.
**/

CREATE INDEX idx_pay ON venda(id);
EXPLAIN
SELECT
    V.data,
    V.valor_total,
    P.nome,
    I.quantidade,
    I.valor_unitario,
    C.nome,
    C.cpf,
    C.endereco
FROM
    venda as V
    JOIN item_venda AS I ON V.id = I.venda_id
    JOIN cliente as C ON V.cliente_id = C.id
    JOIN produto AS P ON I.produto_id = P.id
    JOIN funcionario AS F ON V.funcionario_id = f.id
WHERE
    V.tipo_pagamento = 'D'
ORDER BY
    V.data;