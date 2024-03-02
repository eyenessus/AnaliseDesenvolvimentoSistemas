
#Todos os dados e o valor médio das consultas do ano de 2020 realizadas semconvênio
SELECT AVG(C.valor) as ValorMedio FROM consultas as C JOIN pacientes as P ON P.id_pacientes = C.paciente_id WHERE P.convenio_id IS NULL AND YEAR(C.data_hora) = 2020 ;

#Todos os dados e o valor médio das consultas do ano de 2020 realizadas porconvênio
SELECT AVG(C.valor) as ValorMedio FROM consultas as C JOIN pacientes as P ON P.id_pacientes = C.paciente_id WHERE P.convenio_id IS NOT NULL AND YEAR(C.data_hora) = 2020 ;

#Todos os dados das internações que tiveram data de alta maior que a data prevista para a alta
SELECT * FROM internacoes WHERE DATEDIFF(internacoes.data_prev_alta, internacoes.data_entrada) >= 1

#Receituário completo da primeira consulta registrada com receituário associado
SELECT * FROM receitas WHERE consultas_id IS NOT NULL LIMIT 1

#Todos os dados da consulta de maior valor e também da de menor valor (ambas as consultas não foram realizadas sob convênio)
SELECT * FROM consultas as C 
JOIN pacientes as P
ON C.paciente_id = P.id_pacientes
WHERE P.convenio_id IS NULL
AND valor = (SELECT MIN(C1.valor) FROM consultas as C1 
JOIN pacientes as P1
ON C1.paciente_id = P1.id_pacientes
WHERE P1.convenio_id IS NULL)
OR valor = (SELECT MAX(C2.valor) FROM consultas as C2 
JOIN pacientes as P2
ON C2.paciente_id = P2.id_pacientes
WHERE P2.convenio_id IS NULL)

#Todos os dados das internações em seus respectivos quartos, calculando o total da internação a partir do valor de diária do quarto e o número de dias entre a entrada e a alta
#dat procedimento e número de quarto de internações em quartos do tipo “apartamento”
SELECT *, 
SUM(TQ.valor_diaria * DATEDIFF(I.data_prev_alta,I.data_entrada)) AS totalDiaria
FROM internacoes AS I
JOIN quartos AS Q
ON I.quarto_id = Q.id_quartos
JOIN tipo_quarto as TQ
ON TQ.id_tipo_quarto = Q.id_quartos
WHERE TQ.descricao = "apartamentos"

