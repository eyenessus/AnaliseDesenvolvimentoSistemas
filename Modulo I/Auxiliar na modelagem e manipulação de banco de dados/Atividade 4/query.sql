
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
SELECT *, 
(TQ.valor_diaria * TIMESTAMPDIFF(DAY,data_entrada,data_prev_alta)) AS TotalInternacao,
TIMESTAMPDIFF(DAY,data_entrada,data_prev_alta) as totalDeDias
FROM internacoes as I 
JOIN quartos as Q ON I.quarto_id = Q.id_quartos
JOIN tipo_quarto as TQ ON Q.id_quartos = TQ.id_tipo_quarto


#Data procedimento e número de quarto de internações em quartos do tipo “apartamento”
SELECT I.data_entrada as Data_Entrada, I.procedimento, quarto_id as NumeroQuarto 
FROM internacoes as I 
JOIN quartos as Q ON I.quarto_id = Q.id_quartos
JOIN tipo_quarto as TQ ON Q.id_tipo_quarto = TQ.id_tipo_quarto
WHERE TQ.descricao = "apartamentos"

#Nome do paciente, data da consulta e especialidade de todas as consultas em que os pacientes eram menores de 18 anos na data da consulta e cuja especialidade não seja “pediatria”, ordenando por data de realização da consulta
SELECT P.nome as nomePaciente,C.data_hora as Data, ES.especialidade as Especialidade
FROM consultas as C 
JOIN pacientes AS P
ON C.paciente_id = P.id_pacientes
JOIN especialidades_medicos as ES
ON ES.id_especialidades_medicos = C.especialidades_medico_id
WHERE TIMESTAMPDIFF(YEAR,C.data_hora,P.data_nascimento) < 18 AND NOT ES.especialidade =  "Pediatra"
ORDER BY data_hora


#Nome do paciente, nome do médico, data da internação e procedimentos das internações realizadas por médicos da especialidade “gastroenterologia”, que tenham acontecido em “enfermaria”.
SELECT P.nome as pacientes,M.nome as medico,I.data_entrada as dataEnternacao, I.procedimento
FROM pacientes as P
JOIN internacoes as I
ON P.id_pacientes = I.paciente_id
JOIN medicos as M
JOIN medicos_especialidades as ES
ON M.idmedicos = ES.medico_id
JOIN especialidades_medicos as EST
ON EST.id_especialidades_medicos = ES.medico_id
JOIN quartos AS Q 
JOIN tipo_quarto as TQ
ON Q.id_quartos = TQ.id_tipo_quarto
WHERE EST.especialidade = "Gastroenterologia" AND TQ.descricao = "enfermaria"


#Os nomes dos médicos, seus números de registro no CRM e a quantidade de consultas que cada um realizou
SELECT M.nome, SUM(C.fk_medico_responsavel = M.idmedicos) as quantidadeConsultas FROM medicos as M JOIN consultas as C GROUP BY M.nome


#Os nomes, os números de registro no CRE dos enfermeiros que participaram de mais de uma internação e os números de internações referentes a esses profissionais.
SELECT F.nome,F.cre, COUNT(I.enfermeiro_id = F.id_enfermeiros) AS quantidadeConsulta
FROM enfermeiros as F 
JOIN internacoes as I
ON F.id_enfermeiros = I.enfermeiro_id
GROUP BY F.id_enfermeiros
HAVING  COUNT(I.enfermeiro_id = F.id_enfermeiros) >= 2

#extra idealizada por  mim
#busca todos as internacoes e enfermeiro responsavel
SELECT * FROM internacoes JOIN enfermeiros ON enfermeiros.id_enfermeiros = internacoes.enfermeiro_id