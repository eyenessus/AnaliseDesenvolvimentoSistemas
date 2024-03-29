CREATE ROLE 'user_relatorio';
GRANT SELECT ON uc4atividades.* TO 'user_relatorio';

CREATE ROLE 'user_funcionario';
GRANT SELECT, INSERT, UPDATE, DELETE ON uc4atividades.venda TO user_funcionarioc;
GRANT SELECT, INSERT, UPDATE, DELETE ON uc4atividades.cliente TO user_funcionarioc;
GRANT SELECT, INSERT, UPDATE, DELETE ON uc4atividades.produto TO user_funcionarioc;
