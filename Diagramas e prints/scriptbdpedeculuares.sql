CREATE SCHEMA IF NOT EXISTS `bd_pedCelulares` DEFAULT CHARACTER SET utf8 ;
USE `bd_pedCelulares` ;

-- -----------------------------------------------------
-- Table `bd_pedCelulares`.`ContaUsuario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `bd_pedCelulares`.`ContaUsuario` (
  `pkid_contausuario` INT NOT NULL AUTO_INCREMENT,
  `useraccount` VARCHAR(100) NOT NULL,
  `password` VARCHAR(50) NULL,
  PRIMARY KEY (`pkid_contausuario`),
  UNIQUE INDEX `useraccount_UNIQUE` (`useraccount` ASC) )
ENGINE = InnoDB
COMMENT = '	';


-- -----------------------------------------------------
-- Table `bd_pedCelulares`.`Cliente`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `bd_pedCelulares`.`Cliente` (
  `pkid_Cliente` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(255) NOT NULL,
  `cpf` VARCHAR(50) NOT NULL,
  `telefone` VARCHAR(50) NOT NULL,
  `email` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`pkid_Cliente`),
  UNIQUE INDEX `cpf_UNIQUE` (`cpf` ASC) ,
  UNIQUE INDEX `telefone_UNIQUE` (`telefone` ASC) ,
  UNIQUE INDEX `email_UNIQUE` (`email` ASC) )
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `bd_pedCelulares`.`Pedido`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `bd_pedCelulares`.`Pedido` (
  `pkid_Pedido` INT NOT NULL AUTO_INCREMENT,
  `numpedido` INT NOT NULL,
  `nomeproduto` VARCHAR(255) NOT NULL,
  `quantidade` INT NOT NULL,
  `descricao` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`pkid_Pedido`),
  UNIQUE INDEX `nomproduto_UNIQUE` (`nomeproduto` ASC) )
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;



