CREATE USER 'bank'@'localhost' IDENTIFIED BY 'bank003';
CREATE USER 'suporte'@'localhost' IDENTIFIED BY 'suporte***';
CREATE USER 'app'@'localhost' IDENTIFIED BY 'apppassword';

CREATE role 'web_site','app','suporte';


GRANT ALL ON bank_db.* TO 'web_site'@'localhost';
GRANT SELECT,INSERT,UPDATE,DELETE ON bank_db.* TO 'app'@'localhost';
GRANT SELECT,CREATE PRIVILEGES ON bank_db.* TO 'suporte'@'localhost';


GRANT web_site TO 'bank'@'localhost';
GRANT app TO 'app'@'localhost';
GRANT suporte TO 'suporte'@'localhost';
