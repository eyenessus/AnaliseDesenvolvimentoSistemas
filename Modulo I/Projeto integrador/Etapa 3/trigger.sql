DELIMITER //

CREATE TRIGGER criar_contaBank AFTER INSERT ON users FOR EACH ROW
BEGIN
    INSERT INTO conta(user_id, agencia, saldo) VALUES (NEW.user_id, '0001', 0.00);
END//


DELIMITER;