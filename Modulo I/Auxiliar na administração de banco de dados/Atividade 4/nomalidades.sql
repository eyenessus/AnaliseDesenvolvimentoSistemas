CREATE TABLE `uc4atividades`.`item_venda` (
    `quantidade` INT NOT NULL,
    `subtotal` DECIMAL(9, 2) NOT NULL,
    `venda_id` INT NOT NULL,
    `produto_id` INT NOT NULL,
    INDEX `venda_id` (`venda_id` ASC) VISIBLE,
    INDEX `produto_id` (`produto_id` ASC) VISIBLE,
    PRIMARY KEY (`venda_id`, `produto_id`),
    CONSTRAINT `item_venda_ibfk_1` FOREIGN KEY (`venda_id`) REFERENCES `uc4atividades`.`venda` (`id`),
    CONSTRAINT `item_venda_ibfk_2` FOREIGN KEY (`produto_id`) REFERENCES `uc4atividades`.`produto` (`id`)
) ENGINE = InnoDB DEFAULT CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci;

CREATE TABLE `uc4atividades`.`cliente` (
    `id` INT NOT NULL AUTO_INCREMENT,
    'contato_id' INT NOT NULL,
    `nome` VARCHAR(255) NOT NULL,
    `cpf` VARCHAR(11) NOT NULL,
    `usuario_id` INT NULL DEFAULT NULL,
    PRIMARY KEY (`id`),
    INDEX `fk_cliente_contato` (`contato_id` ASC) VISIBLE,
    INDEX `fk_cliente_usuario` (`usuario_id` ASC) VISIBLE
) ENGINE = InnoDB DEFAULT CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci;

CREATE TABLE `uc4atividades`.`venda` (
    `id` INT NOT NULL AUTO_INCREMENT,
    `data` DATETIME NULL DEFAULT NULL,
    `valor_total` DECIMAL(9, 2) NULL DEFAULT NULL,
    `cliente_id` INT NOT NULL,
    `funcionario_id` INT NOT NULL,
    PRIMARY KEY (`id`),
    INDEX `cliente_id` (`cliente_id` ASC) VISIBLE,
    INDEX `funcionario_id` (`funcionario_id` ASC) VISIBLE,
    CONSTRAINT `venda_ibfk_1` FOREIGN KEY (`cliente_id`) REFERENCES `uc4atividades`.`cliente` (`id`),
    CONSTRAINT 'pagamento_ibfk_2' FOREIGN KEY ('pagamento_id') REFERENCES `uc4atividades`.`pagamento` (`id`),
    CONSTRAINT 'pagamento_ibfk_3' FOREIGN KEY ('entrega_id') REFERENCES `uc4atividades`.`entrega` (`id`),
    CONSTRAINT `venda_ibfk_4` FOREIGN KEY (`funcionario_id`) REFERENCES `uc4atividades`.`funcionario` (`id`),
) ENGINE = InnoDB DEFAULT CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci;

CREATE TABLE `uc4atividades`.`contato` (
    `id` INT NOT NULL AUTO_INCREMENT,
    'endereco' VARCHAR(255) NULL DEFAULT NULL,
    'telefone' VARCHAR(45) NULL DEFAULT NULL,
    PRIMARY KEY (`id`),
) ENGINE = InnoDB DEFAULT CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci;

CREATE TABLE IF NOT EXISTS `uc4atividades`.`produto` (
    `id` INT NOT NULL AUTO_INCREMENT,
    `nome_produto` VARCHAR(255) NULL,
    `valor_unitario` DECIMAL(9, 2) NOT NULL,
    PRIMARY KEY (`id`)
) ENGINE = InnoDB DEFAULT CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci;

CREATE TABLE `uc4atividades`.`pagamento;` (
    `id` INT NOT NULL AUTO_INCREMENT,
    `tipo_pagamento` CHAR(1) NOT NULL,
    `numero_cartao_pagamento` VARCHAR(16) NULL,
    `numero_parcelas_pagamento` INT NULL,
    `data_pagamento` DATETIME NULL,
    PRIMARY KEY (`id`),
) ENGINE = InnoDB DEFAULT CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci;

CREATE TABLE `uc4atividades`.`entrega;` (
    `id` INT NOT NULL AUTO_INCREMENT,
    `data_envio` DATETIME NULL DEFAULT NULL,
    `status` VARCHAR(45) NULL DEFAULT NULL,
    PRIMARY KEY (`id`),
) ENGINE = InnoDB DEFAULT CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci;

