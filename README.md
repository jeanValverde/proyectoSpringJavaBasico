# Framework Spring Java Básico

_Escrito inicialmente por Rod Johnson, fue lanzado por primera vez en el mes de Junio del año 2003 bajo la licencia Apache 2.0, siendo una plataforma Java de código abierto. Convirtiéndose desde entonces en el framework más popular para Java empresarial, para crear código de alto rendimiento, liviano y reutilizable. Ya que su finalidad es estandarizar, agilizar, manejar y resolver los problemas que puedan ir surgiendo en el trayecto de la programación._

## Comenzando 🚀

_Estas instrucciones te permitirán obtener una copia del proyecto en funcionamiento en tu máquina local para propósitos de desarrollo y pruebas._

Mira **Deployment** para conocer como desplegar el proyecto.


### Pre-requisitos 📋

_Que cosas necesitas para instalar el software y como instalarlas_

```
Servidor de aplicaciones Java: Glassfish, Apache Tomcat, Payara, etc
```

```
MySQL Base de datos 
```

```

-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema springBD
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema springBD
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `springBD` DEFAULT CHARACTER SET utf8 ;
USE `springBD` ;

-- -----------------------------------------------------
-- Table `springBD`.`usuario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `springBD`.`usuario` (
  `idusuario` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(45) NOT NULL,
  `correo` VARCHAR(45) NOT NULL,
  `password` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idusuario`))
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;


```

### Instalación 🔧

_Una serie de ejemplos paso a paso que te dice lo que debes ejecutar para tener un entorno de desarrollo ejecutandose_

```
El servidor usado para este proyecto es Payara Server 4.1.1.171.1 #badassfish (build 139)
```

_Motor de Base de datos MySQL _

```
XAMMP - PhpMyAdmin
```

_Finaliza con un ejemplo de cómo obtener datos del sistema o como usarlos para una pequeña demo_

## Ejecutando las pruebas ⚙️

_Explica como ejecutar las pruebas automatizadas para este sistema_

### Analice las pruebas end-to-end 🔩

_Explica que verifican estas pruebas y por qué_

```
Da un ejemplo
```

### Y las pruebas de estilo de codificación ⌨️

_Explica que verifican estas pruebas y por qué_

```
Da un ejemplo
```

## Deployment 📦

```
Cambia en la clase “conexión” la configuración de la conexión a la base de datos usuario y contraseña  según la configuración de tu entorno de desarrollo. 
```

## Construido con 🛠️

_Menciona las herramientas que utilizaste para crear tu proyecto_

* [Spring](https://spring.io/) - El framework 
* [Maven](https://maven.apache.org/) - Manejador de dependencias
* [ROME](https://rometools.github.io/rome/) - Usado para generar RSS

## Contribuyendo 🖇️

Por favor lee el [CONTRIBUTING.md](https://gist.github.com/villanuevand/xxxxxx) para detalles de nuestro código de conducta, y el proceso para enviarnos pull requests.

## Versionado 📌

Usamos [SemVer](http://semver.org/) para el versionado. Para todas las versiones disponibles, mira los [tags en este repositorio](https://github.com/tu/proyecto/tags).

## Autores ✒️

_Menciona a todos aquellos que ayudaron a levantar el proyecto desde sus inicios_

* **Jean González** - *Trabajo Inicial* - [jean Gonzalez](https://github.com/jeanValverde)
* **César Cancino** - *Documentación* - [César Cancino](https://www.cesarcancino.com/)

También puedes mirar la lista de todos los [contribuyentes](https://github.com/jeanValverde/project/contributors) quíenes han participado en este proyecto. 

## Licencia 📄

Este proyecto está bajo la Licencia (Tu Licencia) - mira el archivo [LICENSE.md](LICENSE.md) para detalles

## Expresiones de Gratitud 🎁

* Comenta a otros sobre este proyecto 📢
* Invita una cerveza 🍺 a alguien del equipo. 
* Da las gracias públicamente 🤓.
* etc.



---
⌨️ con ❤️ por [Villanuevand](https://github.com/Villanuevand) 😊
