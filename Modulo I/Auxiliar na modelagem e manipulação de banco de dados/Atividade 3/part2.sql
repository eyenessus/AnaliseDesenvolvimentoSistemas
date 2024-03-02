ALTER TABLE  medicos ADD COLUMN em_atividade BOOLEAN DEFAULT TRUE;

UPDATE  medicos SET em_atividade = FALSE WHERE idmedicos = 1;

UPDATE internacoes  JOIN quartos ON internacoes.quarto_id = quartos.id_quartos JOIN tipo_quarto ON quartos.id_quartos =tipo_quarto.id_tipo_quarto
SET internacoes.data_prev_alta = internacoes.data_entrada + 3
WHERE tipo_quarto.descricao = "enfermaria"

DELETE conv,consu FROM convenios as conv JOIN pacientes as p ON conv.id_convenios = p.convenio_id JOIN consultas as consu ON consu.paciente_id = p.id_pacientes JOIN (SELECT MAX(convenios.id_convenios) as counter FROM convenios GROUP BY convenios.id_convenios) as t WHERE conv.id_convenios = t.counter
