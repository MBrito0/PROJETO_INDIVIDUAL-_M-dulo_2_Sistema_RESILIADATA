CREATE TABLE `tb_empresas_parceiras` (
  `id` INT,
  `nome` VARCHAR(55),
  `endereco` VARCHAR(115),
  `contato` BIGINT(11),
  `tb_colaboradores_id` INT,
  `tb_colaboradores_id1` INT,
  PRIMARY KEY (`id`),
  INDEX `H+` (`id`, `nome`, `endereco`, `contato`, `tb_colaboradores_id`, `tb_colaboradores_id1`)
);

CREATE TABLE `tb_empresas_parceiras_has_tb_tecnologias` (
  `tb_empresas_parceiras_id` INT,
  `tb_colaboradores_id` INT,
  `tb_tecnologias_id` INT,
  PRIMARY KEY (`tb_empresas_parceiras_id`, `tb_colaboradores_id`, `tb_tecnologias_id`),
  INDEX `fk_tb_empresas_parceiras_has_tb_tecnologias_tb_empresas_parceiras1_idx` (`tb_empresas_parceiras_id`),
  INDEX `fk_tb_empresas_parceiras_has_tb_tecnologias_tb_colaboradores1_idx` (`tb_colaboradores_id`),
  INDEX `fk_tb_empresas_parceiras_has_tb_tecnologias_tb_tecnologias1_idx` (`tb_tecnologias_id`)
);

CREATE TABLE `tb_colaboradores` (
  `id` INT,
  `nome` VARCHAR(55),
  `cargo` VARCHAR(45),
  PRIMARY KEY (`id`),
  INDEX `fk_tb_empresas_parceiras_has_tb_tecnologias_tb_colaboradores1_idx` (`id`)
);

CREATE TABLE `tb_tecnologias` (
  `id` INT,
  `nome` VARCHAR(55),
  `area` VARCHAR(45),
  PRIMARY KEY (`id`),
  INDEX `fk_tb_empresas_parceiras_has_tb_tecnologias_tb_tecnologias1_idx` (`id`)
);
