ALTER TABLE  medicos ADD COLUMN em_atividade BOOLEAN DEFAULT TRUE;

UPDATE  medicos SET em_atividade = FALSE WHERE idmedicos = 1;

UPDATE internacoes  JOIN quartos ON internacoes.quarto_id = quartos.id_quartos JOIN tipo_quarto ON quartos.id_quartos =tipo_quarto.id_tipo_quarto
SET internacoes.data_prev_alta = internacoes.data_entrada + 3
WHERE tipo_quarto.descricao = "enfermaria"

DELETE FROM convenios,consultas JOIN pacientes as Pa ON Pa.convenio_id = convenios.id_convenios JOIN consultas ON consultas.idconsultas=pacientes.id_pacientes
WHERE convenios.id_convenios = (SELECT MAX(convenios.id_convenios) FROM convenios) 
