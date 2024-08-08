-- MySQL Script generated by MySQL Workbench
-- Mon Aug  5 07:42:40 2024
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema bd_tienda
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema bd_tienda
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `bd_tienda` DEFAULT CHARACTER SET utf8 ;
USE `bd_tienda` ;

-- -----------------------------------------------------
-- Table `bd_tienda`.`categorias`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `bd_tienda`.`categorias` (
  `id_categorias` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(100) NOT NULL,
  `fecha_creacion` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `estado` TINYINT NOT NULL DEFAULT 1,
  PRIMARY KEY (`id_categorias`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `bd_tienda`.`productos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `bd_tienda`.`productos` (
  `id_productos` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(100) NOT NULL,
  `descripcion` TINYTEXT NULL,
  `precio` DECIMAL(10,2) NOT NULL,
  `stock` INT NOT NULL,
  `fecha_creacion` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `estado` TINYINT NULL DEFAULT 1,
  `id_categorias` INT NOT NULL,
  PRIMARY KEY (`id_productos`),
  INDEX `fk_productos_categorias_idx` (`id_categorias` ASC) VISIBLE,
  CONSTRAINT `fk_productos_categorias`
    FOREIGN KEY (`id_categorias`)
    REFERENCES `bd_tienda`.`categorias` (`id_categorias`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `bd_tienda`.`clientes`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `bd_tienda`.`clientes` (
  `id_clientes` INT NOT NULL AUTO_INCREMENT,
  `nombres` VARCHAR(100) NOT NULL,
  `correo` VARCHAR(200) NOT NULL,
  `direccion` VARCHAR(200) NOT NULL,
  `fecha_creacion` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `estado` TINYINT NOT NULL DEFAULT 1,
  PRIMARY KEY (`id_clientes`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `bd_tienda`.`facturas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `bd_tienda`.`facturas` (
  `id_facturas` INT NOT NULL AUTO_INCREMENT,
  `fecha_factura` DATETIME NOT NULL,
  `fecha_creacion` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `estado` TINYINT NOT NULL DEFAULT 1,
  `id_clientes` INT NOT NULL,
  PRIMARY KEY (`id_facturas`),
  INDEX `fk_facturas_clientes1_idx` (`id_clientes` ASC) VISIBLE,
  CONSTRAINT `fk_facturas_clientes1`
    FOREIGN KEY (`id_clientes`)
    REFERENCES `bd_tienda`.`clientes` (`id_clientes`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `bd_tienda`.`detalle_factura`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `bd_tienda`.`detalle_factura` (
  `id_detalle_factura` INT NOT NULL AUTO_INCREMENT,
  `cantidad` INT NOT NULL,
  `estado` TINYINT NOT NULL DEFAULT 1,
  `id_productos` INT NOT NULL,
  `id_facturas` INT NOT NULL,
  PRIMARY KEY (`id_detalle_factura`),
  INDEX `fk_detalle_factura_productos1_idx` (`id_productos` ASC) VISIBLE,
  INDEX `fk_detalle_factura_facturas1_idx` (`id_facturas` ASC) VISIBLE,
  CONSTRAINT `fk_detalle_factura_productos1`
    FOREIGN KEY (`id_productos`)
    REFERENCES `bd_tienda`.`productos` (`id_productos`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_detalle_factura_facturas1`
    FOREIGN KEY (`id_facturas`)
    REFERENCES `bd_tienda`.`facturas` (`id_facturas`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
