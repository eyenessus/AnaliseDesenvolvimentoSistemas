SELECT AVG(C.valor) as ValorMedio FROM consultas as C JOIN pacientes as P ON P.id_pacientes = C.paciente_id WHERE P.convenio_id IS NULL AND YEAR(C.data_hora) = 2020 ;
SELECT AVG(C.valor) as ValorMedio FROM consultas as C JOIN pacientes as P ON P.id_pacientes = C.paciente_id WHERE P.convenio_id IS NOT NULL AND YEAR(C.data_hora) = 2020 ;

SELECT * FROM internacoes WHERE DATEDIFF(internacoes.data_prev_alta, internacoes.data_entrada) >= 1
