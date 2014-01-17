/*
Navicat MySQL Data Transfer

Source Server         : Laptop
Source Server Version : 50522
Source Host           : 192.168.1.70:3306
Source Database       : chdesarrollo

Target Server Type    : MYSQL
Target Server Version : 50522
File Encoding         : 65001

Date: 2014-01-17 02:35:56
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `cliente`
-- ----------------------------
DROP TABLE IF EXISTS `cliente`;
CREATE TABLE `cliente` (
  `idcliente` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(30) COLLATE latin1_spanish_ci DEFAULT NULL,
  `domicilio` varchar(45) COLLATE latin1_spanish_ci DEFAULT NULL,
  `telefono` varchar(45) COLLATE latin1_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`idcliente`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- ----------------------------
-- Records of cliente
-- ----------------------------

-- ----------------------------
-- Table structure for `cliente_garantia`
-- ----------------------------
DROP TABLE IF EXISTS `cliente_garantia`;
CREATE TABLE `cliente_garantia` (
  `idCliente_garantia` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_cliente` varchar(50) COLLATE latin1_spanish_ci DEFAULT NULL,
  `telefono_contacto` varchar(45) COLLATE latin1_spanish_ci DEFAULT NULL,
  `idequipo_garantia` int(11) DEFAULT NULL,
  PRIMARY KEY (`idCliente_garantia`),
  KEY `idequipo_garantia_idx` (`idequipo_garantia`) USING BTREE,
  CONSTRAINT `cliente_garantia_ibfk_1` FOREIGN KEY (`idequipo_garantia`) REFERENCES `equipo_garantia` (`idequipo_garantia`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci COMMENT='Datos con clientes que metieron sus celulares a garantia';

-- ----------------------------
-- Records of cliente_garantia
-- ----------------------------
INSERT INTO `cliente_garantia` VALUES ('8', 'Christian Castillo', '771 214 9235', '8');
INSERT INTO `cliente_garantia` VALUES ('9', 'Christian Castillo', '771 214 9235', '9');
INSERT INTO `cliente_garantia` VALUES ('10', 'Paola Divanny', '771 129 7853', '10');
INSERT INTO `cliente_garantia` VALUES ('14', 'Jose pérez', '55512345', '14');
INSERT INTO `cliente_garantia` VALUES ('15', 'Jose pérez', '55512345', '15');
INSERT INTO `cliente_garantia` VALUES ('16', 'Christian Castillo', '771 214 9235', '16');
INSERT INTO `cliente_garantia` VALUES ('17', 'Christian Castillo', '771 214 9235', '17');
INSERT INTO `cliente_garantia` VALUES ('18', 'Paola Divanny', '7711297853', '18');
INSERT INTO `cliente_garantia` VALUES ('19', 'Paola Divanny', '7711297853', '19');
INSERT INTO `cliente_garantia` VALUES ('20', 'fermin castillo', '7711901791', '20');
INSERT INTO `cliente_garantia` VALUES ('21', 'pedro badillo', '7711901791', '21');
INSERT INTO `cliente_garantia` VALUES ('22', 'Citlali Ramirez', '7751215578', '22');
INSERT INTO `cliente_garantia` VALUES ('24', 'Cliente prueba', '7751215578', '24');

-- ----------------------------
-- Table structure for `cliente_reparacion`
-- ----------------------------
DROP TABLE IF EXISTS `cliente_reparacion`;
CREATE TABLE `cliente_reparacion` (
  `idCliente_reparacion` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_cliente` varchar(50) COLLATE latin1_spanish_ci DEFAULT NULL,
  `telefono_contacto` varchar(45) COLLATE latin1_spanish_ci DEFAULT NULL,
  `idequipo_reparacion` int(11) DEFAULT NULL,
  PRIMARY KEY (`idCliente_reparacion`),
  KEY `idequipo_reparacion_idx` (`idequipo_reparacion`) USING BTREE,
  CONSTRAINT `cliente_reparacion_ibfk_1` FOREIGN KEY (`idequipo_reparacion`) REFERENCES `equipo_reparacion` (`idequipo_reparacion`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci COMMENT='clientes con equipos en reparacion';

-- ----------------------------
-- Records of cliente_reparacion
-- ----------------------------
INSERT INTO `cliente_reparacion` VALUES ('11', 'Christian castillo', '771 214 9235', '12');
INSERT INTO `cliente_reparacion` VALUES ('12', 'Paola divanny', '2423432', '13');
INSERT INTO `cliente_reparacion` VALUES ('16', 'sdsfsdf', 'sdfsdf', '17');
INSERT INTO `cliente_reparacion` VALUES ('17', 'lety covarrubias', '7711895733', '18');
INSERT INTO `cliente_reparacion` VALUES ('18', 'lety covarrubias', '7711895733', '19');
INSERT INTO `cliente_reparacion` VALUES ('19', 'juan robles', '55 551234', '20');

-- ----------------------------
-- Table structure for `codigo_recarga`
-- ----------------------------
DROP TABLE IF EXISTS `codigo_recarga`;
CREATE TABLE `codigo_recarga` (
  `idcodigo_recarga` int(11) NOT NULL AUTO_INCREMENT,
  `codigo_recarga` varchar(45) COLLATE latin1_spanish_ci DEFAULT NULL,
  `celular` varchar(45) COLLATE latin1_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`idcodigo_recarga`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- ----------------------------
-- Records of codigo_recarga
-- ----------------------------

-- ----------------------------
-- Table structure for `empleado`
-- ----------------------------
DROP TABLE IF EXISTS `empleado`;
CREATE TABLE `empleado` (
  `idempleado` int(11) NOT NULL AUTO_INCREMENT,
  `empleado` varchar(45) COLLATE latin1_spanish_ci DEFAULT NULL,
  `password` varchar(45) COLLATE latin1_spanish_ci DEFAULT NULL,
  `idsucursal` int(11) DEFAULT NULL,
  PRIMARY KEY (`idempleado`),
  KEY `FK_U_SUC_idx` (`idsucursal`) USING BTREE,
  CONSTRAINT `empleado_ibfk_1` FOREIGN KEY (`idsucursal`) REFERENCES `sucursal` (`idsucursal`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- ----------------------------
-- Records of empleado
-- ----------------------------
INSERT INTO `empleado` VALUES ('18', 'chapulhuacan', 'chapulhuacan', '1');
INSERT INTO `empleado` VALUES ('19', 'admin', 'admin', '2');
INSERT INTO `empleado` VALUES ('20', 'bety', 'bety', '2');
INSERT INTO `empleado` VALUES ('21', 'frank', 'frank', '1');
INSERT INTO `empleado` VALUES ('22', 'christian', 'christian', '1');
INSERT INTO `empleado` VALUES ('23', 'pisa', 'pisa', '4');
INSERT INTO `empleado` VALUES ('24', 'pao', 'pao', '1');

-- ----------------------------
-- Table structure for `empleado_movimiento`
-- ----------------------------
DROP TABLE IF EXISTS `empleado_movimiento`;
CREATE TABLE `empleado_movimiento` (
  `idempleado_movimiento` int(11) NOT NULL AUTO_INCREMENT,
  `movimiento` varchar(150) COLLATE latin1_spanish_ci DEFAULT NULL,
  `movimiento_detalles` varchar(220) COLLATE latin1_spanish_ci DEFAULT NULL,
  `sucursal` varchar(45) COLLATE latin1_spanish_ci DEFAULT NULL,
  `empleado` varchar(45) COLLATE latin1_spanish_ci DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  PRIMARY KEY (`idempleado_movimiento`)
) ENGINE=InnoDB AUTO_INCREMENT=441 DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- ----------------------------
-- Records of empleado_movimiento
-- ----------------------------
INSERT INTO `empleado_movimiento` VALUES ('185', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', null, null);
INSERT INTO `empleado_movimiento` VALUES ('186', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-08');
INSERT INTO `empleado_movimiento` VALUES ('187', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 08/01/2014a las 03:45:45 p.m..', 'Tlanchinol', null, null);
INSERT INTO `empleado_movimiento` VALUES ('188', 'Inicio de sesión.', 'El usuario frank inicio sesion corectamente.', 'Chapulhuacan', 'frank', '2014-01-08');
INSERT INTO `empleado_movimiento` VALUES ('189', 'Salida del programa.', 'El usuario frank dejó de usar el sistema el dia 08/01/2014a las 03:46:09 p.m..', 'Chapulhuacan', null, null);
INSERT INTO `empleado_movimiento` VALUES ('190', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-08');
INSERT INTO `empleado_movimiento` VALUES ('191', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 08/01/2014a las 03:48:53 p.m..', 'Tlanchinol', 'admin', '2014-01-08');
INSERT INTO `empleado_movimiento` VALUES ('192', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-08');
INSERT INTO `empleado_movimiento` VALUES ('193', 'Inicio de sesión.', 'El usuario frank inicio sesion corectamente.', 'Chapulhuacan', 'frank', '2014-01-08');
INSERT INTO `empleado_movimiento` VALUES ('194', 'Alta de equipo en garantia.', 'El usuario frank ha dado de alta un equipo en garantia el dia 08/01/2014 a las 04:10:20 p.m.', 'Chapulhuacan', null, null);
INSERT INTO `empleado_movimiento` VALUES ('195', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-08');
INSERT INTO `empleado_movimiento` VALUES ('196', 'Alta de equipo en garantia.', 'El usuario admin ha dado de alta un equipo en garantia el dia 08/01/2014 a las 04:14:50 p.m.', 'Tlanchinol', 'admin', '2014-01-08');
INSERT INTO `empleado_movimiento` VALUES ('197', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 08/01/2014a las 04:22:38 p.m..', 'Tlanchinol', 'admin', '2014-01-08');
INSERT INTO `empleado_movimiento` VALUES ('198', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-08');
INSERT INTO `empleado_movimiento` VALUES ('199', 'Alta de equipo en reparacion.', 'El usuario admin ha dado de alta un equipo en reparacion el dia 08/01/2014 a las 04:24:16 p.m.', 'Tlanchinol', 'admin', '2014-01-08');
INSERT INTO `empleado_movimiento` VALUES ('200', 'Inicio de sesión.', 'El usuario christian inicio sesion corectamente.', 'Chapulhuacan', 'christian', '2014-01-08');
INSERT INTO `empleado_movimiento` VALUES ('201', 'Venta de equipo.', 'El usuario christian ha vendido un equipo el dia 08/01/2014 a las 07:19:46 p.m.', 'Chapulhuacan', 'christian', '2014-01-08');
INSERT INTO `empleado_movimiento` VALUES ('202', 'Venta de equipo.', 'El usuario christian ha vendido un equipo el dia 08/01/2014 a las 07:21:21 p.m.', 'Chapulhuacan', 'christian', '2014-01-08');
INSERT INTO `empleado_movimiento` VALUES ('203', 'Venta de equipo.', 'El usuario christian ha vendido un equipo el dia 08/01/2014 a las 07:21:24 p.m.', 'Chapulhuacan', 'christian', '2014-01-08');
INSERT INTO `empleado_movimiento` VALUES ('204', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-09');
INSERT INTO `empleado_movimiento` VALUES ('205', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-09');
INSERT INTO `empleado_movimiento` VALUES ('206', 'Alta de equipo en garantia', 'El usuario admin ha entregado un equipo en garantia el dia 09/01/2014 a las 02:19:35 p.m.', 'Tlanchinol', null, null);
INSERT INTO `empleado_movimiento` VALUES ('207', 'Alta de equipo en garantia', 'El usuario admin ha entregado un equipo en garantia el dia 09/01/2014 a las 02:19:40 p.m.', 'Tlanchinol', null, null);
INSERT INTO `empleado_movimiento` VALUES ('208', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-09');
INSERT INTO `empleado_movimiento` VALUES ('209', 'Alta de equipo en garantia', 'El usuario admin ha entregado un equipo en garantia el dia 09/01/2014 a las 02:22:38 p.m.', 'Tlanchinol', 'admin', '2014-01-09');
INSERT INTO `empleado_movimiento` VALUES ('210', 'Alta de equipo en garantia', 'El usuario admin ha entregado un equipo en garantia el dia 09/01/2014 a las 02:22:42 p.m.', 'Tlanchinol', 'admin', '2014-01-09');
INSERT INTO `empleado_movimiento` VALUES ('211', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 09/01/2014a las 02:24:03 p.m..', 'Tlanchinol', 'admin', '2014-01-09');
INSERT INTO `empleado_movimiento` VALUES ('212', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-09');
INSERT INTO `empleado_movimiento` VALUES ('213', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-09');
INSERT INTO `empleado_movimiento` VALUES ('214', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 09/01/2014a las 03:01:44 p.m..', 'Tlanchinol', 'admin', '2014-01-09');
INSERT INTO `empleado_movimiento` VALUES ('215', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-09');
INSERT INTO `empleado_movimiento` VALUES ('216', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 09/01/2014a las 03:03:04 p.m..', 'Tlanchinol', 'admin', '2014-01-09');
INSERT INTO `empleado_movimiento` VALUES ('217', 'Inicio de sesión.', 'El usuario frank inicio sesion corectamente.', 'Chapulhuacan', 'frank', '2014-01-09');
INSERT INTO `empleado_movimiento` VALUES ('218', 'Salida del programa.', 'El usuario frank dejó de usar el sistema el dia 09/01/2014a las 03:03:18 p.m..', 'Chapulhuacan', 'frank', '2014-01-09');
INSERT INTO `empleado_movimiento` VALUES ('219', 'Inicio de sesión.', 'El usuario bety inicio sesion corectamente.', 'Tlanchinol', 'bety', '2014-01-09');
INSERT INTO `empleado_movimiento` VALUES ('220', 'Alta de equipo en garantia', 'El usuario bety ha entregado un equipo en garantia el dia 09/01/2014 a las 03:03:41 p.m.', 'Tlanchinol', 'bety', '2014-01-09');
INSERT INTO `empleado_movimiento` VALUES ('221', 'Alta de equipo en garantia', 'El usuario bety ha entregado un equipo en garantia el dia 09/01/2014 a las 03:03:55 p.m.', 'Tlanchinol', 'bety', '2014-01-09');
INSERT INTO `empleado_movimiento` VALUES ('222', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-09');
INSERT INTO `empleado_movimiento` VALUES ('223', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-09');
INSERT INTO `empleado_movimiento` VALUES ('224', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 09/01/2014a las 05:10:02 p.m..', 'Tlanchinol', 'admin', '2014-01-09');
INSERT INTO `empleado_movimiento` VALUES ('225', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-09');
INSERT INTO `empleado_movimiento` VALUES ('226', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 09/01/2014a las 05:12:47 p.m..', 'Tlanchinol', 'admin', '2014-01-09');
INSERT INTO `empleado_movimiento` VALUES ('227', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-09');
INSERT INTO `empleado_movimiento` VALUES ('228', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 09/01/2014a las 05:13:36 p.m..', 'Tlanchinol', 'admin', '2014-01-09');
INSERT INTO `empleado_movimiento` VALUES ('229', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-09');
INSERT INTO `empleado_movimiento` VALUES ('230', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 09/01/2014a las 05:15:11 p.m..', 'Tlanchinol', 'admin', '2014-01-09');
INSERT INTO `empleado_movimiento` VALUES ('231', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-09');
INSERT INTO `empleado_movimiento` VALUES ('232', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-09');
INSERT INTO `empleado_movimiento` VALUES ('233', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-09');
INSERT INTO `empleado_movimiento` VALUES ('234', 'Entrega de equipo (reparacion).', 'El usuario admin ha entregado un equipo en reparacion el dia 09/01/2014 a las 06:23:34 p.m.', 'Tlanchinol', 'admin', '2014-01-09');
INSERT INTO `empleado_movimiento` VALUES ('235', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-09');
INSERT INTO `empleado_movimiento` VALUES ('236', 'Entrega de equipo (reparacion).', 'El usuario admin ha entregado un equipo en reparacion el dia 09/01/2014 a las 06:41:14 p.m.', 'Tlanchinol', 'admin', '2014-01-09');
INSERT INTO `empleado_movimiento` VALUES ('237', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 09/01/2014a las 07:19:02 p.m..', 'Tlanchinol', 'admin', '2014-01-09');
INSERT INTO `empleado_movimiento` VALUES ('238', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-09');
INSERT INTO `empleado_movimiento` VALUES ('239', 'Alta de equipo en garantia.', 'El usuario admin ha dado de alta un equipo en garantia el dia 09/01/2014 a las 07:56:38 p.m.', 'Tlanchinol', 'admin', '2014-01-09');
INSERT INTO `empleado_movimiento` VALUES ('240', 'Alta de equipo en garantia.', 'El usuario admin ha dado de alta un equipo en garantia el dia 09/01/2014 a las 07:57:30 p.m.', 'Tlanchinol', 'admin', '2014-01-09');
INSERT INTO `empleado_movimiento` VALUES ('241', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 09/01/2014a las 07:58:18 p.m..', 'Tlanchinol', 'admin', '2014-01-09');
INSERT INTO `empleado_movimiento` VALUES ('242', 'Inicio de sesión.', 'El usuario frank inicio sesion corectamente.', 'Chapulhuacan', 'frank', '2014-01-09');
INSERT INTO `empleado_movimiento` VALUES ('243', 'Salida del programa.', 'El usuario frank dejó de usar el sistema el dia 09/01/2014a las 07:58:46 p.m..', 'Chapulhuacan', 'frank', '2014-01-09');
INSERT INTO `empleado_movimiento` VALUES ('244', 'Inicio de sesión.', 'El usuario bety inicio sesion corectamente.', 'Tlanchinol', 'bety', '2014-01-09');
INSERT INTO `empleado_movimiento` VALUES ('245', 'Entrega de equipo (garantia).', 'El usuario bety ha entregado un equipo en garantia el dia 09/01/2014 a las 07:59:23 p.m.', 'Tlanchinol', 'bety', '2014-01-09');
INSERT INTO `empleado_movimiento` VALUES ('246', 'Salida del programa.', 'El usuario bety dejó de usar el sistema el dia 09/01/2014a las 08:00:59 p.m..', 'Tlanchinol', 'bety', '2014-01-09');
INSERT INTO `empleado_movimiento` VALUES ('247', 'Inicio de sesión.', 'El usuario christian inicio sesion corectamente.', 'Chapulhuacan', 'christian', '2014-01-09');
INSERT INTO `empleado_movimiento` VALUES ('248', 'Entrega de equipo (reparacion).', 'El usuario christian ha entregado un equipo en reparacion el dia 09/01/2014 a las 08:01:13 p.m.', 'Chapulhuacan', 'christian', '2014-01-09');
INSERT INTO `empleado_movimiento` VALUES ('249', 'Entrega de equipo (reparacion).', 'El usuario christian ha entregado un equipo en reparacion el dia 09/01/2014 a las 08:01:22 p.m.', 'Chapulhuacan', 'christian', '2014-01-09');
INSERT INTO `empleado_movimiento` VALUES ('250', 'Entrega de equipo (reparacion).', 'El usuario christian ha entregado un equipo en reparacion el dia 09/01/2014 a las 08:01:28 p.m.', 'Chapulhuacan', 'christian', '2014-01-09');
INSERT INTO `empleado_movimiento` VALUES ('251', 'Salida del programa.', 'El usuario christian dejó de usar el sistema el dia 09/01/2014a las 08:03:46 p.m..', 'Chapulhuacan', 'christian', '2014-01-09');
INSERT INTO `empleado_movimiento` VALUES ('252', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-09');
INSERT INTO `empleado_movimiento` VALUES ('253', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 09/01/2014a las 10:04:22 p.m..', 'Tlanchinol', 'admin', '2014-01-09');
INSERT INTO `empleado_movimiento` VALUES ('254', 'Inicio de sesión.', 'El usuario christian inicio sesion corectamente.', 'Chapulhuacan', 'christian', '2014-01-09');
INSERT INTO `empleado_movimiento` VALUES ('255', 'Venta de equipo.', 'El usuario christian ha vendido un equipo el dia 09/01/2014 a las 10:04:59 p.m.', 'Chapulhuacan', 'christian', '2014-01-09');
INSERT INTO `empleado_movimiento` VALUES ('256', 'Salida del programa.', 'El usuario christian dejó de usar el sistema el dia 09/01/2014a las 10:05:17 p.m..', 'Chapulhuacan', 'christian', '2014-01-09');
INSERT INTO `empleado_movimiento` VALUES ('257', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-09');
INSERT INTO `empleado_movimiento` VALUES ('258', 'Venta de equipo.', 'El usuario admin ha vendido un equipo el dia 09/01/2014 a las 10:40:31 p.m.', 'Tlanchinol', 'admin', '2014-01-09');
INSERT INTO `empleado_movimiento` VALUES ('259', 'Venta de equipo.', 'El usuario admin ha vendido un equipo el dia 09/01/2014 a las 10:41:53 p.m.', 'Tlanchinol', 'admin', '2014-01-09');
INSERT INTO `empleado_movimiento` VALUES ('260', 'Venta de equipo.', 'El usuario admin ha vendido un equipo el dia 09/01/2014 a las 10:42:00 p.m.', 'Tlanchinol', 'admin', '2014-01-09');
INSERT INTO `empleado_movimiento` VALUES ('261', 'Inicio de sesión.', 'El usuario frank inicio sesion corectamente.', 'Chapulhuacan', 'frank', '2014-01-09');
INSERT INTO `empleado_movimiento` VALUES ('262', 'Venta de equipo.', 'El usuario frank ha vendido un equipo el dia 09/01/2014 a las 10:42:39 p.m.', 'Chapulhuacan', 'frank', '2014-01-09');
INSERT INTO `empleado_movimiento` VALUES ('263', 'Venta de equipo.', 'El usuario frank ha vendido un equipo el dia 09/01/2014 a las 10:42:46 p.m.', 'Chapulhuacan', 'frank', '2014-01-09');
INSERT INTO `empleado_movimiento` VALUES ('264', 'Venta de equipo.', 'El usuario frank ha vendido un equipo el dia 09/01/2014 a las 10:42:53 p.m.', 'Chapulhuacan', 'frank', '2014-01-09');
INSERT INTO `empleado_movimiento` VALUES ('265', 'Venta de equipo.', 'El usuario frank ha vendido un equipo el dia 09/01/2014 a las 10:43:01 p.m.', 'Chapulhuacan', 'frank', '2014-01-09');
INSERT INTO `empleado_movimiento` VALUES ('266', 'Venta de equipo.', 'El usuario frank ha vendido un equipo el dia 09/01/2014 a las 10:43:16 p.m.', 'Chapulhuacan', 'frank', '2014-01-09');
INSERT INTO `empleado_movimiento` VALUES ('267', 'Inicio de sesión.', 'El usuario bety inicio sesion corectamente.', 'Tlanchinol', 'bety', '2014-01-09');
INSERT INTO `empleado_movimiento` VALUES ('268', 'Venta de equipo.', 'El usuario bety ha vendido un equipo el dia 09/01/2014 a las 10:51:50 p.m.', 'Tlanchinol', 'bety', '2014-01-09');
INSERT INTO `empleado_movimiento` VALUES ('269', 'Venta de equipo.', 'El usuario bety ha vendido un equipo el dia 09/01/2014 a las 10:51:56 p.m.', 'Tlanchinol', 'bety', '2014-01-09');
INSERT INTO `empleado_movimiento` VALUES ('270', 'Venta de equipo.', 'El usuario bety ha vendido un equipo el dia 09/01/2014 a las 10:52:07 p.m.', 'Tlanchinol', 'bety', '2014-01-09');
INSERT INTO `empleado_movimiento` VALUES ('271', 'Salida del programa.', 'El usuario bety dejó de usar el sistema el dia 09/01/2014a las 10:52:10 p.m..', 'Tlanchinol', 'bety', '2014-01-09');
INSERT INTO `empleado_movimiento` VALUES ('272', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-09');
INSERT INTO `empleado_movimiento` VALUES ('273', 'Inicio de sesión.', 'El usuario pao inicio sesion corectamente.', 'Chapulhuacan', 'pao', '2014-01-09');
INSERT INTO `empleado_movimiento` VALUES ('274', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-09');
INSERT INTO `empleado_movimiento` VALUES ('275', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-09');
INSERT INTO `empleado_movimiento` VALUES ('276', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-09');
INSERT INTO `empleado_movimiento` VALUES ('277', 'Venta de equipo.', 'El usuario admin ha vendido un equipo el dia 09/01/2014 a las 11:29:21 p.m.', 'Tlanchinol', 'admin', '2014-01-09');
INSERT INTO `empleado_movimiento` VALUES ('278', 'Venta de equipo.', 'El usuario admin ha vendido un equipo el dia 09/01/2014 a las 11:29:24 p.m.', 'Tlanchinol', 'admin', '2014-01-09');
INSERT INTO `empleado_movimiento` VALUES ('279', 'Venta de equipo.', 'El usuario admin ha vendido un equipo el dia 09/01/2014 a las 11:29:26 p.m.', 'Tlanchinol', 'admin', '2014-01-09');
INSERT INTO `empleado_movimiento` VALUES ('280', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 09/01/2014a las 11:32:22 p.m..', 'Tlanchinol', 'admin', '2014-01-09');
INSERT INTO `empleado_movimiento` VALUES ('281', 'Inicio de sesión.', 'El usuario frank inicio sesion corectamente.', 'Chapulhuacan', 'frank', '2014-01-09');
INSERT INTO `empleado_movimiento` VALUES ('282', 'Alta de equipo en garantia.', 'El usuario frank ha dado de alta un equipo en garantia el dia 09/01/2014 a las 11:40:48 p.m.', 'Chapulhuacan', 'frank', '2014-01-09');
INSERT INTO `empleado_movimiento` VALUES ('283', 'Alta de equipo en garantia.', 'El usuario frank ha dado de alta un equipo en garantia el dia 09/01/2014 a las 11:47:20 p.m.', 'Chapulhuacan', 'frank', '2014-01-09');
INSERT INTO `empleado_movimiento` VALUES ('284', 'Salida del programa.', 'El usuario frank dejó de usar el sistema el dia 09/01/2014a las 11:52:39 p.m..', 'Chapulhuacan', 'frank', '2014-01-09');
INSERT INTO `empleado_movimiento` VALUES ('285', 'Inicio de sesión.', 'El usuario christian inicio sesion corectamente.', 'Chapulhuacan', 'christian', '2014-01-09');
INSERT INTO `empleado_movimiento` VALUES ('286', 'Venta de equipo.', 'El usuario christian ha vendido un equipo el dia 09/01/2014 a las 11:54:16 p.m.', 'Chapulhuacan', 'christian', '2014-01-09');
INSERT INTO `empleado_movimiento` VALUES ('287', 'Venta de equipo.', 'El usuario christian ha vendido un equipo el dia 09/01/2014 a las 11:54:19 p.m.', 'Chapulhuacan', 'christian', '2014-01-09');
INSERT INTO `empleado_movimiento` VALUES ('288', 'Venta de equipo.', 'El usuario christian ha vendido un equipo el dia 09/01/2014 a las 11:54:20 p.m.', 'Chapulhuacan', 'christian', '2014-01-09');
INSERT INTO `empleado_movimiento` VALUES ('289', 'Venta de equipo.', 'El usuario christian ha vendido un equipo el dia 09/01/2014 a las 11:54:22 p.m.', 'Chapulhuacan', 'christian', '2014-01-09');
INSERT INTO `empleado_movimiento` VALUES ('290', 'Venta de equipo.', 'El usuario christian ha vendido un equipo el dia 09/01/2014 a las 11:54:24 p.m.', 'Chapulhuacan', 'christian', '2014-01-09');
INSERT INTO `empleado_movimiento` VALUES ('291', 'Venta de equipo.', 'El usuario christian ha vendido un equipo el dia 09/01/2014 a las 11:54:25 p.m.', 'Chapulhuacan', 'christian', '2014-01-09');
INSERT INTO `empleado_movimiento` VALUES ('292', 'Entrega de equipo (garantia).', 'El usuario christian ha entregado un equipo en garantia el dia 09/01/2014 a las 11:54:34 p.m.', 'Chapulhuacan', 'christian', '2014-01-09');
INSERT INTO `empleado_movimiento` VALUES ('293', 'Entrega de equipo (garantia).', 'El usuario christian ha entregado un equipo en garantia el dia 09/01/2014 a las 11:54:38 p.m.', 'Chapulhuacan', 'christian', '2014-01-09');
INSERT INTO `empleado_movimiento` VALUES ('294', 'Entrega de equipo (garantia).', 'El usuario christian ha entregado un equipo en garantia el dia 09/01/2014 a las 11:54:42 p.m.', 'Chapulhuacan', 'christian', '2014-01-09');
INSERT INTO `empleado_movimiento` VALUES ('295', 'Entrega de equipo (reparacion).', 'El usuario christian ha entregado un equipo en reparacion el dia 09/01/2014 a las 11:54:52 p.m.', 'Chapulhuacan', 'christian', '2014-01-09');
INSERT INTO `empleado_movimiento` VALUES ('296', 'Salida del programa.', 'El usuario christian dejó de usar el sistema el dia 09/01/2014a las 11:54:56 p.m..', 'Chapulhuacan', 'christian', '2014-01-09');
INSERT INTO `empleado_movimiento` VALUES ('297', 'Inicio de sesión.', 'El usuario christian inicio sesion corectamente.', 'Chapulhuacan', 'christian', '2014-01-09');
INSERT INTO `empleado_movimiento` VALUES ('298', 'Alta de equipo en garantia.', 'El usuario christian ha dado de alta un equipo en garantia el dia 09/01/2014 a las 11:57:43 p.m.', 'Chapulhuacan', 'christian', '2014-01-09');
INSERT INTO `empleado_movimiento` VALUES ('299', 'Inicio de sesión.', 'El usuario pao inicio sesion corectamente.', 'Chapulhuacan', 'pao', '2014-01-10');
INSERT INTO `empleado_movimiento` VALUES ('300', 'Salida del programa.', 'El usuario pao dejó de usar el sistema el dia 10/01/2014a las 01:26:07 a.m..', 'Chapulhuacan', 'pao', '2014-01-10');
INSERT INTO `empleado_movimiento` VALUES ('301', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-10');
INSERT INTO `empleado_movimiento` VALUES ('302', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 10/01/2014 a las 01:56:04 a.m.', 'Tlanchinol', 'admin', '2014-01-10');
INSERT INTO `empleado_movimiento` VALUES ('303', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-10');
INSERT INTO `empleado_movimiento` VALUES ('304', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 10/01/2014 a las 01:56:13 a.m.', 'Tlanchinol', 'admin', '2014-01-10');
INSERT INTO `empleado_movimiento` VALUES ('305', 'Inicio de sesión.', 'El usuario christian inicio sesion corectamente.', 'Chapulhuacan', 'christian', '2014-01-10');
INSERT INTO `empleado_movimiento` VALUES ('306', 'Venta de equipo.', 'El usuario christian ha vendido un equipo el dia 10/01/2014 a las 01:56:35 a.m.', 'Chapulhuacan', 'christian', '2014-01-10');
INSERT INTO `empleado_movimiento` VALUES ('307', 'Salida del programa.', 'El usuario christian dejó de usar el sistema el dia 10/01/2014 a las 01:56:41 a.m.', 'Chapulhuacan', 'christian', '2014-01-10');
INSERT INTO `empleado_movimiento` VALUES ('308', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-10');
INSERT INTO `empleado_movimiento` VALUES ('309', 'Venta de equipo.', 'El usuario admin ha vendido un equipo el dia 10/01/2014 a las 02:43:06 a.m.', 'Tlanchinol', 'admin', '2014-01-10');
INSERT INTO `empleado_movimiento` VALUES ('310', 'Venta de equipo.', 'El usuario admin ha vendido un equipo el dia 10/01/2014 a las 02:43:12 a.m.', 'Tlanchinol', 'admin', '2014-01-10');
INSERT INTO `empleado_movimiento` VALUES ('311', 'Venta de equipo.', 'El usuario admin ha vendido un equipo el dia 10/01/2014 a las 02:43:14 a.m.', 'Tlanchinol', 'admin', '2014-01-10');
INSERT INTO `empleado_movimiento` VALUES ('312', 'Venta de equipo.', 'El usuario admin ha vendido un equipo el dia 10/01/2014 a las 02:43:17 a.m.', 'Tlanchinol', 'admin', '2014-01-10');
INSERT INTO `empleado_movimiento` VALUES ('313', 'Venta de equipo.', 'El usuario admin ha vendido un equipo el dia 10/01/2014 a las 02:49:03 a.m.', 'Tlanchinol', 'admin', '2014-01-10');
INSERT INTO `empleado_movimiento` VALUES ('314', 'Venta de equipo.', 'El usuario admin ha vendido un equipo el dia 10/01/2014 a las 02:49:11 a.m.', 'Tlanchinol', 'admin', '2014-01-10');
INSERT INTO `empleado_movimiento` VALUES ('315', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 10/01/2014 a las 02:49:18 a.m.', 'Tlanchinol', 'admin', '2014-01-10');
INSERT INTO `empleado_movimiento` VALUES ('316', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-10');
INSERT INTO `empleado_movimiento` VALUES ('317', 'Entrega de equipo (reparacion).', 'El usuario admin ha entregado un equipo en reparacion el dia 10/01/2014 a las 12:41:57 p.m.', 'Tlanchinol', 'admin', '2014-01-10');
INSERT INTO `empleado_movimiento` VALUES ('318', 'Entrega de equipo (reparacion).', 'El usuario admin ha entregado un equipo en reparacion el dia 10/01/2014 a las 12:42:07 p.m.', 'Tlanchinol', 'admin', '2014-01-10');
INSERT INTO `empleado_movimiento` VALUES ('319', 'Venta de equipo.', 'El usuario admin ha vendido un equipo el dia 10/01/2014 a las 12:42:24 p.m.', 'Tlanchinol', 'admin', '2014-01-10');
INSERT INTO `empleado_movimiento` VALUES ('320', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 10/01/2014 a las 12:42:31 p.m.', 'Tlanchinol', 'admin', '2014-01-10');
INSERT INTO `empleado_movimiento` VALUES ('321', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-10');
INSERT INTO `empleado_movimiento` VALUES ('322', 'Venta de equipo.', 'El usuario admin ha vendido un equipo el dia 10/01/2014 a las 12:45:12 p.m.', 'Tlanchinol', 'admin', '2014-01-10');
INSERT INTO `empleado_movimiento` VALUES ('323', 'Venta de equipo.', 'El usuario admin ha vendido un equipo el dia 10/01/2014 a las 12:45:15 p.m.', 'Tlanchinol', 'admin', '2014-01-10');
INSERT INTO `empleado_movimiento` VALUES ('324', 'Venta de equipo.', 'El usuario admin ha vendido un equipo el dia 10/01/2014 a las 12:45:16 p.m.', 'Tlanchinol', 'admin', '2014-01-10');
INSERT INTO `empleado_movimiento` VALUES ('325', 'Venta de equipo.', 'El usuario admin ha vendido un equipo el dia 10/01/2014 a las 12:45:19 p.m.', 'Tlanchinol', 'admin', '2014-01-10');
INSERT INTO `empleado_movimiento` VALUES ('326', 'Venta de equipo.', 'El usuario admin ha vendido un equipo el dia 10/01/2014 a las 12:45:30 p.m.', 'Tlanchinol', 'admin', '2014-01-10');
INSERT INTO `empleado_movimiento` VALUES ('327', 'Alta de equipo en garantia.', 'El usuario admin ha dado de alta un equipo en garantia el dia 10/01/2014 a las 12:47:03 p.m.', 'Tlanchinol', 'admin', '2014-01-10');
INSERT INTO `empleado_movimiento` VALUES ('328', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-10');
INSERT INTO `empleado_movimiento` VALUES ('329', 'Entrega de equipo (garantia).', 'El usuario admin ha entregado un equipo en garantia el dia 10/01/2014 a las 12:52:59 p.m.', 'Tlanchinol', 'admin', '2014-01-10');
INSERT INTO `empleado_movimiento` VALUES ('330', 'Entrega de equipo (garantia).', 'El usuario admin ha entregado un equipo en garantia el dia 10/01/2014 a las 12:53:05 p.m.', 'Tlanchinol', 'admin', '2014-01-10');
INSERT INTO `empleado_movimiento` VALUES ('331', 'Alta de equipo en garantia.', 'El usuario admin ha dado de alta un equipo en garantia el dia 10/01/2014 a las 12:55:57 p.m.', 'Tlanchinol', 'admin', '2014-01-10');
INSERT INTO `empleado_movimiento` VALUES ('332', 'Entrega de equipo (reparacion).', 'El usuario admin ha entregado un equipo en reparacion el dia 10/01/2014 a las 12:59:17 p.m.', 'Tlanchinol', 'admin', '2014-01-10');
INSERT INTO `empleado_movimiento` VALUES ('333', 'Entrega de equipo (reparacion).', 'El usuario admin ha entregado un equipo en reparacion el dia 10/01/2014 a las 12:59:23 p.m.', 'Tlanchinol', 'admin', '2014-01-10');
INSERT INTO `empleado_movimiento` VALUES ('334', 'Entrega de equipo (reparacion).', 'El usuario admin ha entregado un equipo en reparacion el dia 10/01/2014 a las 12:59:27 p.m.', 'Tlanchinol', 'admin', '2014-01-10');
INSERT INTO `empleado_movimiento` VALUES ('335', 'Entrega de equipo (reparacion).', 'El usuario admin ha entregado un equipo en reparacion el dia 10/01/2014 a las 12:59:45 p.m.', 'Tlanchinol', 'admin', '2014-01-10');
INSERT INTO `empleado_movimiento` VALUES ('336', 'Venta de equipo.', 'El usuario admin ha vendido un equipo el dia 10/01/2014 a las 01:11:22 p.m.', 'Tlanchinol', 'admin', '2014-01-10');
INSERT INTO `empleado_movimiento` VALUES ('337', 'Venta de equipo.', 'El usuario admin ha vendido un equipo el dia 10/01/2014 a las 01:11:25 p.m.', 'Tlanchinol', 'admin', '2014-01-10');
INSERT INTO `empleado_movimiento` VALUES ('338', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 10/01/2014 a las 01:11:33 p.m.', 'Tlanchinol', 'admin', '2014-01-10');
INSERT INTO `empleado_movimiento` VALUES ('339', 'Inicio de sesión.', 'El usuario christian inicio sesion corectamente.', 'Chapulhuacan', 'christian', '2014-01-13');
INSERT INTO `empleado_movimiento` VALUES ('340', 'Salida del programa.', 'El usuario christian dejó de usar el sistema el dia 13/01/2014 a las 11:31:58 a.m.', 'Chapulhuacan', 'christian', '2014-01-13');
INSERT INTO `empleado_movimiento` VALUES ('341', 'Inicio de sesión.', 'El usuario bety inicio sesion corectamente.', 'Tlanchinol', 'bety', '2014-01-13');
INSERT INTO `empleado_movimiento` VALUES ('342', 'Salida del programa.', 'El usuario bety dejó de usar el sistema el dia 13/01/2014 a las 11:32:53 a.m.', 'Tlanchinol', 'bety', '2014-01-13');
INSERT INTO `empleado_movimiento` VALUES ('343', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-14');
INSERT INTO `empleado_movimiento` VALUES ('344', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 14/01/2014 a las 03:20:10 p. m.', 'Tlanchinol', 'admin', '2014-01-14');
INSERT INTO `empleado_movimiento` VALUES ('345', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-14');
INSERT INTO `empleado_movimiento` VALUES ('346', 'Entrega de equipo (garantia).', 'El usuario admin ha entregado un equipo en garantia el dia 14/01/2014 a las 03:21:08 p. m.', 'Tlanchinol', 'admin', '2014-01-14');
INSERT INTO `empleado_movimiento` VALUES ('347', 'Entrega de equipo (garantia).', 'El usuario admin ha entregado un equipo en garantia el dia 14/01/2014 a las 04:07:04 p. m.', 'Tlanchinol', 'admin', '2014-01-14');
INSERT INTO `empleado_movimiento` VALUES ('348', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 14/01/2014 a las 04:13:43 p. m.', 'Tlanchinol', 'admin', '2014-01-14');
INSERT INTO `empleado_movimiento` VALUES ('349', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-14');
INSERT INTO `empleado_movimiento` VALUES ('350', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 14/01/2014 a las 06:09:15 p. m.', 'Tlanchinol', 'admin', '2014-01-14');
INSERT INTO `empleado_movimiento` VALUES ('351', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-14');
INSERT INTO `empleado_movimiento` VALUES ('352', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 14/01/2014 a las 06:10:14 p. m.', 'Tlanchinol', 'admin', '2014-01-14');
INSERT INTO `empleado_movimiento` VALUES ('353', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-14');
INSERT INTO `empleado_movimiento` VALUES ('354', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 14/01/2014 a las 06:33:41 p. m.', 'Tlanchinol', 'admin', '2014-01-14');
INSERT INTO `empleado_movimiento` VALUES ('355', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-14');
INSERT INTO `empleado_movimiento` VALUES ('356', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 14/01/2014 a las 06:34:52 p. m.', 'Tlanchinol', 'admin', '2014-01-14');
INSERT INTO `empleado_movimiento` VALUES ('357', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-14');
INSERT INTO `empleado_movimiento` VALUES ('358', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 14/01/2014 a las 07:01:49 p. m.', 'Tlanchinol', 'admin', '2014-01-14');
INSERT INTO `empleado_movimiento` VALUES ('359', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-14');
INSERT INTO `empleado_movimiento` VALUES ('360', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 14/01/2014 a las 10:54:03 p. m.', 'Tlanchinol', 'admin', '2014-01-14');
INSERT INTO `empleado_movimiento` VALUES ('361', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-14');
INSERT INTO `empleado_movimiento` VALUES ('362', 'Entrega de equipo (garantia).', 'El usuario admin ha entregado un equipo en garantia el dia 14/01/2014 a las 11:00:09 p. m.', 'Tlanchinol', 'admin', '2014-01-14');
INSERT INTO `empleado_movimiento` VALUES ('363', 'Entrega de equipo (garantia).', 'El usuario admin ha entregado un equipo en garantia el dia 14/01/2014 a las 11:00:14 p. m.', 'Tlanchinol', 'admin', '2014-01-14');
INSERT INTO `empleado_movimiento` VALUES ('364', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 14/01/2014 a las 11:00:18 p. m.', 'Tlanchinol', 'admin', '2014-01-14');
INSERT INTO `empleado_movimiento` VALUES ('365', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-14');
INSERT INTO `empleado_movimiento` VALUES ('366', 'Entrega de equipo (garantia).', 'El usuario admin ha entregado un equipo en garantia el dia 14/01/2014 a las 11:01:48 p. m.', 'Tlanchinol', 'admin', '2014-01-14');
INSERT INTO `empleado_movimiento` VALUES ('367', 'Entrega de equipo (garantia).', 'El usuario admin ha entregado un equipo en garantia el dia 14/01/2014 a las 11:01:52 p. m.', 'Tlanchinol', 'admin', '2014-01-14');
INSERT INTO `empleado_movimiento` VALUES ('368', 'Entrega de equipo (garantia).', 'El usuario admin ha entregado un equipo en garantia el dia 14/01/2014 a las 11:01:54 p. m.', 'Tlanchinol', 'admin', '2014-01-14');
INSERT INTO `empleado_movimiento` VALUES ('369', 'Entrega de equipo (garantia).', 'El usuario admin ha entregado un equipo en garantia el dia 14/01/2014 a las 11:31:02 p. m.', 'Tlanchinol', 'admin', '2014-01-14');
INSERT INTO `empleado_movimiento` VALUES ('370', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 14/01/2014 a las 11:42:22 p. m.', 'Tlanchinol', 'admin', '2014-01-14');
INSERT INTO `empleado_movimiento` VALUES ('371', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-14');
INSERT INTO `empleado_movimiento` VALUES ('372', 'Alta de equipo en garantia.', 'El usuario admin ha dado de alta un equipo en garantia el dia 14/01/2014 a las 11:46:36 p. m.', 'Tlanchinol', 'admin', '2014-01-14');
INSERT INTO `empleado_movimiento` VALUES ('373', 'Entrega de equipo (garantia).', 'El usuario admin ha entregado un equipo en garantia el dia 14/01/2014 a las 11:49:21 p. m.', 'Tlanchinol', 'admin', '2014-01-14');
INSERT INTO `empleado_movimiento` VALUES ('374', 'Alta de equipo en garantia.', 'El usuario admin ha dado de alta un equipo en garantia el dia 14/01/2014 a las 11:49:23 p. m.', 'Tlanchinol', 'admin', '2014-01-14');
INSERT INTO `empleado_movimiento` VALUES ('375', 'Alta de equipo en garantia.', 'El usuario admin ha dado de alta un equipo en garantia el dia 14/01/2014 a las 11:51:19 p. m.', 'Tlanchinol', 'admin', '2014-01-14');
INSERT INTO `empleado_movimiento` VALUES ('376', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-14');
INSERT INTO `empleado_movimiento` VALUES ('377', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 14/01/2014 a las 11:54:12 p. m.', 'Tlanchinol', 'admin', '2014-01-14');
INSERT INTO `empleado_movimiento` VALUES ('378', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-14');
INSERT INTO `empleado_movimiento` VALUES ('379', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-15');
INSERT INTO `empleado_movimiento` VALUES ('380', 'Alta de equipo en garantia.', 'El usuario admin ha dado de alta un equipo en garantia el dia 15/01/2014 a las 01:11:56 a. m.', 'Tlanchinol', 'admin', '2014-01-15');
INSERT INTO `empleado_movimiento` VALUES ('381', 'Alta de equipo en garantia.', 'El usuario admin ha dado de alta un equipo en garantia el dia 15/01/2014 a las 01:15:58 a. m.', 'Tlanchinol', 'admin', '2014-01-15');
INSERT INTO `empleado_movimiento` VALUES ('382', 'Alta de equipo en garantia.', 'El usuario admin ha dado de alta un equipo en garantia el dia 15/01/2014 a las 01:19:04 a. m.', 'Tlanchinol', 'admin', '2014-01-15');
INSERT INTO `empleado_movimiento` VALUES ('383', 'Alta de equipo en garantia.', 'El usuario admin ha dado de alta un equipo en garantia el dia 15/01/2014 a las 01:24:12 a. m.', 'Tlanchinol', 'admin', '2014-01-15');
INSERT INTO `empleado_movimiento` VALUES ('384', 'Alta de equipo en garantia.', 'El usuario admin ha dado de alta un equipo en garantia el dia 15/01/2014 a las 01:26:00 a. m.', 'Tlanchinol', 'admin', '2014-01-15');
INSERT INTO `empleado_movimiento` VALUES ('385', 'Alta de equipo en garantia.', 'El usuario admin ha dado de alta un equipo en garantia el dia 15/01/2014 a las 01:45:49 a. m.', 'Tlanchinol', 'admin', '2014-01-15');
INSERT INTO `empleado_movimiento` VALUES ('386', 'Entrega de equipo (reparacion).', 'El usuario admin ha entregado un equipo en reparacion el dia 15/01/2014 a las 01:49:30 a. m.', 'Tlanchinol', 'admin', '2014-01-15');
INSERT INTO `empleado_movimiento` VALUES ('387', 'Alta de equipo en reparacion.', 'El usuario admin ha dado de alta un equipo en reparacion el dia 15/01/2014 a las 01:55:27 a. m.', 'Tlanchinol', 'admin', '2014-01-15');
INSERT INTO `empleado_movimiento` VALUES ('388', 'Alta de equipo en reparacion.', 'El usuario admin ha dado de alta un equipo en reparacion el dia 15/01/2014 a las 01:57:12 a. m.', 'Tlanchinol', 'admin', '2014-01-15');
INSERT INTO `empleado_movimiento` VALUES ('389', 'Alta de equipo en reparacion.', 'El usuario admin ha dado de alta un equipo en reparacion el dia 15/01/2014 a las 02:03:55 a. m.', 'Tlanchinol', 'admin', '2014-01-15');
INSERT INTO `empleado_movimiento` VALUES ('390', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 15/01/2014 a las 02:17:22 a. m.', 'Tlanchinol', 'admin', '2014-01-15');
INSERT INTO `empleado_movimiento` VALUES ('391', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-15');
INSERT INTO `empleado_movimiento` VALUES ('392', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 15/01/2014 a las 10:28:01 p. m.', 'Tlanchinol', 'admin', '2014-01-15');
INSERT INTO `empleado_movimiento` VALUES ('393', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-16');
INSERT INTO `empleado_movimiento` VALUES ('394', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 16/01/2014 a las 06:30:49 p. m.', 'Tlanchinol', 'admin', '2014-01-16');
INSERT INTO `empleado_movimiento` VALUES ('395', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-16');
INSERT INTO `empleado_movimiento` VALUES ('396', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 16/01/2014 a las 06:33:07 p. m.', 'Tlanchinol', 'admin', '2014-01-16');
INSERT INTO `empleado_movimiento` VALUES ('397', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-16');
INSERT INTO `empleado_movimiento` VALUES ('398', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 16/01/2014 a las 06:34:06 p. m.', 'Tlanchinol', 'admin', '2014-01-16');
INSERT INTO `empleado_movimiento` VALUES ('399', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-16');
INSERT INTO `empleado_movimiento` VALUES ('400', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 16/01/2014 a las 06:36:21 p. m.', 'Tlanchinol', 'admin', '2014-01-16');
INSERT INTO `empleado_movimiento` VALUES ('401', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-16');
INSERT INTO `empleado_movimiento` VALUES ('402', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 16/01/2014 a las 06:44:17 p. m.', 'Tlanchinol', 'admin', '2014-01-16');
INSERT INTO `empleado_movimiento` VALUES ('403', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-16');
INSERT INTO `empleado_movimiento` VALUES ('404', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 16/01/2014 a las 06:44:50 p. m.', 'Tlanchinol', 'admin', '2014-01-16');
INSERT INTO `empleado_movimiento` VALUES ('405', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-16');
INSERT INTO `empleado_movimiento` VALUES ('406', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 16/01/2014 a las 06:49:54 p. m.', 'Tlanchinol', 'admin', '2014-01-16');
INSERT INTO `empleado_movimiento` VALUES ('407', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-16');
INSERT INTO `empleado_movimiento` VALUES ('408', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 16/01/2014 a las 06:50:16 p. m.', 'Tlanchinol', 'admin', '2014-01-16');
INSERT INTO `empleado_movimiento` VALUES ('409', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-16');
INSERT INTO `empleado_movimiento` VALUES ('410', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 16/01/2014 a las 06:53:07 p. m.', 'Tlanchinol', 'admin', '2014-01-16');
INSERT INTO `empleado_movimiento` VALUES ('411', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-16');
INSERT INTO `empleado_movimiento` VALUES ('412', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 16/01/2014 a las 06:53:39 p. m.', 'Tlanchinol', 'admin', '2014-01-16');
INSERT INTO `empleado_movimiento` VALUES ('413', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-16');
INSERT INTO `empleado_movimiento` VALUES ('414', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 16/01/2014 a las 06:55:10 p. m.', 'Tlanchinol', 'admin', '2014-01-16');
INSERT INTO `empleado_movimiento` VALUES ('415', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-16');
INSERT INTO `empleado_movimiento` VALUES ('416', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 16/01/2014 a las 09:36:26 p. m.', 'Tlanchinol', 'admin', '2014-01-16');
INSERT INTO `empleado_movimiento` VALUES ('417', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-16');
INSERT INTO `empleado_movimiento` VALUES ('418', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 16/01/2014 a las 09:39:10 p. m.', 'Tlanchinol', 'admin', '2014-01-16');
INSERT INTO `empleado_movimiento` VALUES ('419', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-16');
INSERT INTO `empleado_movimiento` VALUES ('420', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 16/01/2014 a las 09:39:46 p. m.', 'Tlanchinol', 'admin', '2014-01-16');
INSERT INTO `empleado_movimiento` VALUES ('421', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-16');
INSERT INTO `empleado_movimiento` VALUES ('422', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-16');
INSERT INTO `empleado_movimiento` VALUES ('423', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 2014-01-16 a las 09:51:22 p. m.', 'Tlanchinol', 'admin', '2014-01-16');
INSERT INTO `empleado_movimiento` VALUES ('424', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-16');
INSERT INTO `empleado_movimiento` VALUES ('425', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 2014-01-16 a las 10:04:23 p. m.', 'Tlanchinol', 'admin', '2014-01-16');
INSERT INTO `empleado_movimiento` VALUES ('426', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-16');
INSERT INTO `empleado_movimiento` VALUES ('427', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 2014-01-16 a las 10:14:49 p. m.', 'Tlanchinol', 'admin', '2014-01-16');
INSERT INTO `empleado_movimiento` VALUES ('428', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-17');
INSERT INTO `empleado_movimiento` VALUES ('429', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 17/01/2014 a las 12:46:23 a. m.', 'Tlanchinol', 'admin', '2014-01-17');
INSERT INTO `empleado_movimiento` VALUES ('430', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-17');
INSERT INTO `empleado_movimiento` VALUES ('431', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 2014-01-17 a las 02:15:51 a. m.', 'Tlanchinol', 'admin', '2014-01-17');
INSERT INTO `empleado_movimiento` VALUES ('432', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-17');
INSERT INTO `empleado_movimiento` VALUES ('433', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 2014-01-17 a las 02:16:35 a. m.', 'Tlanchinol', 'admin', '2014-01-17');
INSERT INTO `empleado_movimiento` VALUES ('434', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-17');
INSERT INTO `empleado_movimiento` VALUES ('435', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 17/01/2014 a las 02:21:35 a. m.', 'Tlanchinol', 'admin', '2014-01-17');
INSERT INTO `empleado_movimiento` VALUES ('436', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-17');
INSERT INTO `empleado_movimiento` VALUES ('437', 'Alta de equipo en garantia.', 'El usuario admin ha dado de alta un equipo en garantia el dia 17/01/2014 a las 02:26:54 a. m.', 'Tlanchinol', 'admin', '2014-01-17');
INSERT INTO `empleado_movimiento` VALUES ('438', 'Alta de equipo en garantia.', 'El usuario admin ha dado de alta un equipo en garantia el dia 17/01/2014 a las 02:31:34 a. m.', 'Tlanchinol', 'admin', '2014-01-17');
INSERT INTO `empleado_movimiento` VALUES ('439', 'Entrega de equipo (garantia).', 'El usuario admin ha entregado un equipo en garantia el dia 17/01/2014 a las 02:31:44 a. m.', 'Tlanchinol', 'admin', '2014-01-17');
INSERT INTO `empleado_movimiento` VALUES ('440', 'Alta de equipo en garantia.', 'El usuario admin ha dado de alta un equipo en garantia el dia 17/01/2014 a las 02:33:44 a. m.', 'Tlanchinol', 'admin', '2014-01-17');

-- ----------------------------
-- Table structure for `equipo_almacen`
-- ----------------------------
DROP TABLE IF EXISTS `equipo_almacen`;
CREATE TABLE `equipo_almacen` (
  `idequipo_almacen` int(11) NOT NULL AUTO_INCREMENT,
  `modelo_celular` varchar(45) COLLATE latin1_spanish_ci DEFAULT NULL,
  `imei_celular` int(20) DEFAULT NULL,
  `id_equipo` int(10) unsigned zerofill DEFAULT '0000000000',
  `iccid_celular` varchar(45) COLLATE latin1_spanish_ci DEFAULT NULL,
  `idsucursal` int(11) DEFAULT NULL,
  `precioCelular` decimal(10,0) NOT NULL,
  `marca_celular` varchar(45) COLLATE latin1_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`idequipo_almacen`),
  KEY `idsucursal_idx` (`idsucursal`) USING BTREE,
  CONSTRAINT `equipo_almacen_ibfk_1` FOREIGN KEY (`idsucursal`) REFERENCES `sucursal` (`idsucursal`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- ----------------------------
-- Records of equipo_almacen
-- ----------------------------
INSERT INTO `equipo_almacen` VALUES ('1', 'Nokia', '223', '0000000001', '232323', '1', '899', 'Nokia');
INSERT INTO `equipo_almacen` VALUES ('2', 'XT 300', '1313223424', '0000000002', '12313213213', '1', '399', 'Sony Ericsson');
INSERT INTO `equipo_almacen` VALUES ('3', 'Chat', '231313131', '0000000003', '455467567', '1', '799', 'LG');
INSERT INTO `equipo_almacen` VALUES ('6', 'iPhone 4S', '333444', '0000000006', '908489399', '1', '8000', 'Apple');
INSERT INTO `equipo_almacen` VALUES ('8', 'XT 300', '1313223423', '0000000008', '234567', '1', '399', 'Sony Ericsson');
INSERT INTO `equipo_almacen` VALUES ('10', 'P708', '2', '0000000010', '2', '2', '300', 'LG');
INSERT INTO `equipo_almacen` VALUES ('11', 'P709', '333', '0000000011', '333', '1', '300', 'LG');
INSERT INTO `equipo_almacen` VALUES ('12', 'P708', '323', '0000000012', '343', '2', '300', 'LG');
INSERT INTO `equipo_almacen` VALUES ('14', 'INSPIRE 3D 3G', '431', '0000000014', '432', '1', '300', 'HTC');
INSERT INTO `equipo_almacen` VALUES ('16', 'INSPIRE 3D 3G', '434', '0000000016', '67890', '1', '300', 'HTC');
INSERT INTO `equipo_almacen` VALUES ('17', '9900 Blanco', '56732234', '0000000017', '589789', '2', '10379', 'Blackberry');
INSERT INTO `equipo_almacen` VALUES ('18', '9900 Negro', '567566', '0000000018', '589589', '1', '10379', 'Blackberry');
INSERT INTO `equipo_almacen` VALUES ('19', '9900 Negro', '9992', '0000000019', '689923', '1', '10379', 'Blackberry');

-- ----------------------------
-- Table structure for `equipo_entregado`
-- ----------------------------
DROP TABLE IF EXISTS `equipo_entregado`;
CREATE TABLE `equipo_entregado` (
  `idequipo_entregado` int(11) NOT NULL AUTO_INCREMENT,
  `fecha_entrega` date DEFAULT NULL,
  `tipo` varchar(45) DEFAULT NULL,
  `empleado` varchar(45) DEFAULT NULL,
  `imei_equipo` varchar(45) DEFAULT NULL,
  `iccid_equipo` varchar(45) DEFAULT NULL,
  `sucursal` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idequipo_entregado`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of equipo_entregado
-- ----------------------------
INSERT INTO `equipo_entregado` VALUES ('1', '2014-01-09', 'Garantia', 'bety', '999888999', '9999', 'Tlanchinol');
INSERT INTO `equipo_entregado` VALUES ('2', '2014-01-09', 'Garantia', 'bety', '299992388299', '88813389', 'Tlanchinol');
INSERT INTO `equipo_entregado` VALUES ('3', '2014-01-09', 'Reparacion', 'admin', '2342342424', null, 'Tlanchinol');
INSERT INTO `equipo_entregado` VALUES ('4', '2014-01-09', 'Reparacion', 'admin', '1231', null, 'Tlanchinol');
INSERT INTO `equipo_entregado` VALUES ('5', '2014-01-09', 'Garantia', 'bety', '234970324079234', '8883778', 'Tlanchinol');
INSERT INTO `equipo_entregado` VALUES ('6', '2014-01-09', 'Reparacion', 'christian', '1', null, 'Chapulhuacan');
INSERT INTO `equipo_entregado` VALUES ('7', '2014-01-09', 'Reparacion', 'christian', '2342424', null, 'Chapulhuacan');
INSERT INTO `equipo_entregado` VALUES ('8', '2014-01-09', 'Reparacion', 'christian', '23234234234234', null, 'Chapulhuacan');
INSERT INTO `equipo_entregado` VALUES ('9', '2014-01-09', 'Garantia', 'christian', '123456', '933498', 'Chapulhuacan');
INSERT INTO `equipo_entregado` VALUES ('10', '2014-01-09', 'Garantia', 'christian', '997744', '913291', 'Chapulhuacan');
INSERT INTO `equipo_entregado` VALUES ('11', '2014-01-09', 'Garantia', 'christian', '898289938888499', '1231213', 'Chapulhuacan');
INSERT INTO `equipo_entregado` VALUES ('12', '2014-01-09', 'Reparacion', 'christian', '341234234243', null, 'Chapulhuacan');
INSERT INTO `equipo_entregado` VALUES ('13', '2014-01-10', 'Reparacion', 'admin', '3433445', null, 'Tlanchinol');
INSERT INTO `equipo_entregado` VALUES ('14', '2014-01-10', 'Reparacion', 'admin', '8888888888888888888', null, 'Tlanchinol');
INSERT INTO `equipo_entregado` VALUES ('15', '2014-01-10', 'Garantia', 'admin', '234970324079234', '98897', 'Tlanchinol');
INSERT INTO `equipo_entregado` VALUES ('16', '2014-01-10', 'Garantia', 'admin', '9840292890', '92938399', 'Tlanchinol');
INSERT INTO `equipo_entregado` VALUES ('17', '2014-01-10', 'Reparacion', 'admin', '2342342424', null, 'Tlanchinol');
INSERT INTO `equipo_entregado` VALUES ('18', '2014-01-10', 'Reparacion', 'admin', '234970324079234', null, 'Tlanchinol');
INSERT INTO `equipo_entregado` VALUES ('19', '2014-01-10', 'Reparacion', 'admin', '299992388299', null, 'Tlanchinol');
INSERT INTO `equipo_entregado` VALUES ('20', '2014-01-10', 'Reparacion', 'admin', '234970324079234', null, 'Tlanchinol');
INSERT INTO `equipo_entregado` VALUES ('21', '2014-01-14', 'Garantia', 'admin', '999888999', '9999', 'Tlanchinol');
INSERT INTO `equipo_entregado` VALUES ('22', '2014-01-14', 'Garantia', 'admin', '234970324079234', '98897', 'Tlanchinol');
INSERT INTO `equipo_entregado` VALUES ('23', '2014-01-14', 'Garantia', 'admin', '234970324079234', '8883778', 'Tlanchinol');
INSERT INTO `equipo_entregado` VALUES ('24', '2014-01-14', 'Garantia', 'admin', '22', '2134345345', 'Tlanchinol');
INSERT INTO `equipo_entregado` VALUES ('25', '2014-01-14', 'Garantia', 'admin', '9840292890', '92938399', 'Tlanchinol');
INSERT INTO `equipo_entregado` VALUES ('26', '2014-01-14', 'Garantia', 'admin', '', '', 'Tlanchinol');
INSERT INTO `equipo_entregado` VALUES ('27', '2014-01-14', 'Garantia', 'admin', '', '', 'Tlanchinol');
INSERT INTO `equipo_entregado` VALUES ('28', '2014-01-14', 'Garantia', 'admin', '', '', 'Tlanchinol');
INSERT INTO `equipo_entregado` VALUES ('29', '2014-01-14', 'Garantia', 'admin', '513764222183965', '8965880812100011146', 'Tlanchinol');
INSERT INTO `equipo_entregado` VALUES ('30', '2014-01-15', 'Reparacion', 'admin', '3456567', null, 'Tlanchinol');
INSERT INTO `equipo_entregado` VALUES ('31', '2014-01-17', 'Garantia', 'admin', '357117056385350', '895202117831002263', 'Tlanchinol');

-- ----------------------------
-- Table structure for `equipo_garantia`
-- ----------------------------
DROP TABLE IF EXISTS `equipo_garantia`;
CREATE TABLE `equipo_garantia` (
  `idequipo_garantia` int(11) NOT NULL AUTO_INCREMENT,
  `idequipo` int(10) unsigned zerofill DEFAULT '0000000000',
  `marca_equipo` varchar(45) COLLATE latin1_spanish_ci DEFAULT NULL,
  `imei_equipo` varchar(45) COLLATE latin1_spanish_ci DEFAULT NULL,
  `accesorios` varchar(150) COLLATE latin1_spanish_ci DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `iccid_equipo` varchar(20) COLLATE latin1_spanish_ci DEFAULT NULL,
  `idempleado` int(11) DEFAULT NULL,
  `observaciones` varchar(100) COLLATE latin1_spanish_ci DEFAULT NULL,
  `modelo_equipo` varchar(30) COLLATE latin1_spanish_ci DEFAULT NULL,
  `idsucursal` int(11) DEFAULT NULL,
  PRIMARY KEY (`idequipo_garantia`),
  KEY `idempleado_idx` (`idempleado`) USING BTREE,
  KEY `id_empleado_idx` (`idempleado`) USING BTREE,
  KEY `id_sucursal_idx` (`idsucursal`) USING BTREE,
  KEY `id__sucursal_idx` (`idsucursal`) USING BTREE,
  CONSTRAINT `equipo_garantia_ibfk_1` FOREIGN KEY (`idempleado`) REFERENCES `empleado` (`idempleado`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `equipo_garantia_ibfk_2` FOREIGN KEY (`idsucursal`) REFERENCES `sucursal` (`idsucursal`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- ----------------------------
-- Records of equipo_garantia
-- ----------------------------
INSERT INTO `equipo_garantia` VALUES ('4', '0000000004', 'HP', '898289938888499', 'Bateria litio 22', '2014-01-08', '1231213', '21', 'Polvoso', 'DV 4000', '1');
INSERT INTO `equipo_garantia` VALUES ('8', '0000000008', 'Apple', '997744', 'Un skin', '2014-01-09', '913291', '21', 'Muy bien cuidado', 'iPhone 4', '1');
INSERT INTO `equipo_garantia` VALUES ('9', '0000000009', 'Apple', '123456', 'Un skin y otra cosa', '2014-01-09', '933498', '21', 'Muy bien cuidado', 'iPhone 5', '1');
INSERT INTO `equipo_garantia` VALUES ('10', '0000000010', 'Apple', '9992233', 'Bla bla bla', '2014-01-09', '887652', '22', 'Bla bla', 'iPhone 5s', '1');
INSERT INTO `equipo_garantia` VALUES ('14', '0000000011', 'Samsung', '513764333785555', 'tapa, cable de datos, ', '2014-01-14', '896600081207820050', '19', 'display roto', 'GT-E1205L', '2');
INSERT INTO `equipo_garantia` VALUES ('15', '0000000012', 'Samsung', '333444555666444', 'tapa, cable de datos, ', '2014-01-14', '895220201207820050', '19', 'display roto', 'GT-E1205L', '2');
INSERT INTO `equipo_garantia` VALUES ('16', '0000000013', 'alcatel', '516673031842298', '', '2014-01-15', '8952200678100055588', '19', '', 'OT-808 ROSA', '2');
INSERT INTO `equipo_garantia` VALUES ('17', '0000000014', 'alcatel', '516673031842298', '', '2014-01-15', '895220066880006663', '19', '', 'OT-808 Blanco', '2');
INSERT INTO `equipo_garantia` VALUES ('18', '0000000015', 'APPLE', '507893201843378', 'funda, audifonos', '2014-01-15', '895220207370053215', '19', 'telefono golpeado', 'IPHONE 4 16GB BLANCO SPA', '2');
INSERT INTO `equipo_garantia` VALUES ('19', '0000000016', 'APPLE', '352256503335678', 'funda, audifonos', '2014-01-15', '895520204569966616', '19', '', 'IPHONE 4 16GB NEGRO SPA', '2');
INSERT INTO `equipo_garantia` VALUES ('20', '0000000017', 'lanix', '555555555555555', '', '2014-01-15', '893550504569956117', '19', '', 'S200', '2');
INSERT INTO `equipo_garantia` VALUES ('21', '0000000018', 'motorola', '356325620883578', '', '2014-01-15', '899930354455078120', '19', '', 'XT925 RAZR HD', '2');
INSERT INTO `equipo_garantia` VALUES ('22', '0000000019', 'Motorola', '358727056353550', 'ninguno', '2014-01-17', '895202117831002263', '19', 'equipo con carcasa rayada', 'Razr x', '2');
INSERT INTO `equipo_garantia` VALUES ('24', '0000000020', 'Motorola', '307312075680399', 'ninguno', '2014-01-17', '892020227831001162', '19', 'equipo con carcasa rayada', 'Razr y', '2');

-- ----------------------------
-- Table structure for `equipo_reparacion`
-- ----------------------------
DROP TABLE IF EXISTS `equipo_reparacion`;
CREATE TABLE `equipo_reparacion` (
  `idequipo_reparacion` int(11) NOT NULL AUTO_INCREMENT,
  `idequipo` int(11) unsigned DEFAULT '0',
  `marca_equipo` varchar(45) COLLATE latin1_spanish_ci DEFAULT NULL,
  `imei_equipo` varchar(45) COLLATE latin1_spanish_ci DEFAULT NULL,
  `modelo_equipo` varchar(45) COLLATE latin1_spanish_ci DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `observaciones` varchar(145) COLLATE latin1_spanish_ci DEFAULT NULL,
  `fecha_entrega` date DEFAULT NULL,
  `idsucursal` int(11) DEFAULT NULL,
  `idempleado` int(11) DEFAULT NULL,
  PRIMARY KEY (`idequipo_reparacion`),
  KEY `FK_SUC_REP_idx` (`idsucursal`) USING BTREE,
  KEY `fk_idempleado_idx` (`idempleado`),
  CONSTRAINT `equipo_reparacion_ibfk_1` FOREIGN KEY (`idsucursal`) REFERENCES `sucursal` (`idsucursal`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_idempleado` FOREIGN KEY (`idempleado`) REFERENCES `empleado` (`idempleado`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- ----------------------------
-- Records of equipo_reparacion
-- ----------------------------
INSERT INTO `equipo_reparacion` VALUES ('8', '4', 'yyy', '12312313', 'jjkkkk', '2014-01-08', null, null, '2', '19');
INSERT INTO `equipo_reparacion` VALUES ('9', '4', 'Apple iPhone', '99999999999999', '5', '2014-01-08', null, null, '2', '19');
INSERT INTO `equipo_reparacion` VALUES ('10', '4', '', '2123132', '', '2014-01-08', '', null, '2', '19');
INSERT INTO `equipo_reparacion` VALUES ('11', '4', 'dfsdf2', '2123132', 'sfsdfs', '2014-01-08', 'adfsdfsdfsdf', null, '2', '19');
INSERT INTO `equipo_reparacion` VALUES ('12', '5', 'Apple', '35662456', 'iPhone 4', '2014-01-08', 'Tieneuna carcasa', null, '2', '19');
INSERT INTO `equipo_reparacion` VALUES ('13', '6', 'kjhkj', '234234234', 'Moadsasd', '2014-01-08', 'Ninguno', null, '2', '19');
INSERT INTO `equipo_reparacion` VALUES ('17', '10', '1231321', '2342342', '1324234234', '2014-01-08', '132124234', null, '2', '19');
INSERT INTO `equipo_reparacion` VALUES ('18', '11', 'Apple', '303207681845688', 'iPhone 5', '2014-01-15', 'equipo en buenas condiciones', null, '2', '19');
INSERT INTO `equipo_reparacion` VALUES ('19', '12', 'Apple', '608805891835578', 'iPhone 5S', '2014-01-15', 'equipo en buenas condiciones', null, '2', '19');
INSERT INTO `equipo_reparacion` VALUES ('20', '13', 'Samsung', '707805897856455', 'S5310 POCKET BLANCO', '2014-01-15', 'equipo en buenas condiciones', null, '2', '19');

-- ----------------------------
-- Table structure for `municipio`
-- ----------------------------
DROP TABLE IF EXISTS `municipio`;
CREATE TABLE `municipio` (
  `idmunicipio` int(11) NOT NULL AUTO_INCREMENT,
  `municipio` varchar(70) COLLATE latin1_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`idmunicipio`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- ----------------------------
-- Records of municipio
-- ----------------------------
INSERT INTO `municipio` VALUES ('1', 'Chapulhuacan');
INSERT INTO `municipio` VALUES ('2', 'Tlanchinol');
INSERT INTO `municipio` VALUES ('3', 'Tepehuacan');
INSERT INTO `municipio` VALUES ('4', 'Pisaflores');

-- ----------------------------
-- Table structure for `permiso_usuario`
-- ----------------------------
DROP TABLE IF EXISTS `permiso_usuario`;
CREATE TABLE `permiso_usuario` (
  `idpermiso_usuario` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(80) COLLATE latin1_spanish_ci DEFAULT NULL,
  `idempleado` int(11) DEFAULT NULL,
  `permiso_usuariocol` varchar(45) COLLATE latin1_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`idpermiso_usuario`),
  KEY `FK_Permiso_empleado_idx` (`idempleado`) USING BTREE,
  CONSTRAINT `permiso_usuario_ibfk_1` FOREIGN KEY (`idempleado`) REFERENCES `empleado` (`idempleado`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci COMMENT='Ésta tabla contiene los permisos que tiene cada usuario\n{tambien se debe de agregar los permisos a la tabla de usuarios}';

-- ----------------------------
-- Records of permiso_usuario
-- ----------------------------

-- ----------------------------
-- Table structure for `recarga`
-- ----------------------------
DROP TABLE IF EXISTS `recarga`;
CREATE TABLE `recarga` (
  `idrecarga` int(11) NOT NULL AUTO_INCREMENT,
  `idcodigo_recarga` int(11) DEFAULT NULL,
  PRIMARY KEY (`idrecarga`),
  KEY `id_idx` (`idcodigo_recarga`) USING BTREE,
  CONSTRAINT `recarga_ibfk_1` FOREIGN KEY (`idcodigo_recarga`) REFERENCES `codigo_recarga` (`idcodigo_recarga`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- ----------------------------
-- Records of recarga
-- ----------------------------

-- ----------------------------
-- Table structure for `sucursal`
-- ----------------------------
DROP TABLE IF EXISTS `sucursal`;
CREATE TABLE `sucursal` (
  `idsucursal` int(11) NOT NULL AUTO_INCREMENT,
  `sucursal` varchar(45) COLLATE latin1_spanish_ci DEFAULT NULL,
  `idmunicipio` int(11) DEFAULT NULL,
  PRIMARY KEY (`idsucursal`),
  KEY `idmunicipio_idx` (`idmunicipio`) USING BTREE,
  CONSTRAINT `sucursal_ibfk_1` FOREIGN KEY (`idmunicipio`) REFERENCES `municipio` (`idmunicipio`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- ----------------------------
-- Records of sucursal
-- ----------------------------
INSERT INTO `sucursal` VALUES ('1', 'Chapulhuacan', '1');
INSERT INTO `sucursal` VALUES ('2', 'Tlanchinol', '2');
INSERT INTO `sucursal` VALUES ('3', 'Tepehuacan de Guerrero', '3');
INSERT INTO `sucursal` VALUES ('4', 'Pisaflores', '4');

-- ----------------------------
-- Table structure for `venta`
-- ----------------------------
DROP TABLE IF EXISTS `venta`;
CREATE TABLE `venta` (
  `idventa` int(11) NOT NULL AUTO_INCREMENT,
  `idventa_detalle` int(11) DEFAULT NULL,
  PRIMARY KEY (`idventa`),
  KEY `idventa_detalle_idx` (`idventa_detalle`) USING BTREE,
  CONSTRAINT `venta_ibfk_1` FOREIGN KEY (`idventa_detalle`) REFERENCES `venta_detalle` (`idventa_detalle`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- ----------------------------
-- Records of venta
-- ----------------------------

-- ----------------------------
-- Table structure for `venta_detalle`
-- ----------------------------
DROP TABLE IF EXISTS `venta_detalle`;
CREATE TABLE `venta_detalle` (
  `idventa_detalle` int(11) NOT NULL AUTO_INCREMENT,
  `idequipo_almacen` int(11) DEFAULT NULL,
  `fecha_venta` date DEFAULT NULL,
  `modelo_celular` varchar(45) COLLATE latin1_spanish_ci DEFAULT NULL,
  `marca_celular` varchar(45) COLLATE latin1_spanish_ci DEFAULT NULL,
  `imei_celular` varchar(45) COLLATE latin1_spanish_ci DEFAULT NULL,
  `empleado` varchar(45) COLLATE latin1_spanish_ci DEFAULT NULL,
  `precio` decimal(10,0) DEFAULT NULL,
  `sucursal` varchar(45) COLLATE latin1_spanish_ci DEFAULT NULL,
  `iccid_celular` varchar(45) COLLATE latin1_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`idventa_detalle`),
  KEY `FK_EAlmacen_idx` (`idequipo_almacen`) USING BTREE,
  CONSTRAINT `venta_detalle_ibfk_1` FOREIGN KEY (`idequipo_almacen`) REFERENCES `equipo_almacen` (`idequipo_almacen`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci COMMENT='/*Falta agregar los idempleado y idequipo_almacen*/';

-- ----------------------------
-- Records of venta_detalle
-- ----------------------------
INSERT INTO `venta_detalle` VALUES ('1', null, '2014-01-09', 'iPhone 4S', 'Apple', '333443', 'admin', '8001', 'Tlanchinol', null);
INSERT INTO `venta_detalle` VALUES ('2', null, '2014-01-09', 'iPhone 5S', 'Apple', '1213121', 'admin', '10300', 'Tlanchinol', null);
INSERT INTO `venta_detalle` VALUES ('3', null, '2014-01-09', 'iPhone 5', 'Apple', '112233', 'admin', '10000', 'Tlanchinol', null);
INSERT INTO `venta_detalle` VALUES ('4', null, '2014-01-09', 'Nokia', 'Nokia', '18993', 'frank', '899', 'Chapulhuacan', null);
INSERT INTO `venta_detalle` VALUES ('5', null, '2014-01-09', 'XT 300', 'Sony Ericsson', '1313223424', 'frank', '399', 'Chapulhuacan', null);
INSERT INTO `venta_detalle` VALUES ('6', null, '2014-01-09', 'Chat', 'LG', '231313131', 'frank', '799', 'Chapulhuacan', null);
INSERT INTO `venta_detalle` VALUES ('7', null, '2014-01-09', 'iPhone 4S', 'Apple', '333444', 'frank', '8000', 'Chapulhuacan', null);
INSERT INTO `venta_detalle` VALUES ('8', null, '2014-01-09', 'XT 300', 'Sony Ericsson', '1313223423', 'frank', '399', 'Chapulhuacan', null);
INSERT INTO `venta_detalle` VALUES ('9', null, '2014-01-09', 'iPhone 5S', 'Apple', '1213121', 'bety', '10300', 'Tlanchinol', null);
INSERT INTO `venta_detalle` VALUES ('10', null, '2014-01-09', 'iPhone 5', 'Apple', '112233', 'bety', '10000', 'Tlanchinol', null);
INSERT INTO `venta_detalle` VALUES ('11', null, '2014-01-09', 'iPhone 4S', 'Apple', '333443', 'bety', '8000', 'Tlanchinol', null);
INSERT INTO `venta_detalle` VALUES ('12', null, '2014-01-09', 'iPhone 5S', 'Apple', '1213121', 'admin', '10300', 'Tlanchinol', '3847952345566666');
INSERT INTO `venta_detalle` VALUES ('13', null, '2014-01-09', 'iPhone 4S', 'Apple', '333443', 'admin', '8000', 'Tlanchinol', '123456');
INSERT INTO `venta_detalle` VALUES ('14', null, '2014-01-09', 'iPhone 5', 'Apple', '112233', 'admin', '10000', 'Tlanchinol', '122334455667');
INSERT INTO `venta_detalle` VALUES ('15', null, '2014-01-09', 'Chat', 'LG', '231313131', 'christian', '799', 'Chapulhuacan', '455467567');
INSERT INTO `venta_detalle` VALUES ('16', null, '2014-01-09', 'XT 300', 'Sony Ericsson', '1313223423', 'christian', '399', 'Chapulhuacan', '234567');
INSERT INTO `venta_detalle` VALUES ('17', null, '2014-01-09', 'iPhone 4S', 'Apple', '333444', 'christian', '8000', 'Chapulhuacan', '908489399');
INSERT INTO `venta_detalle` VALUES ('18', null, '2014-01-09', 'Chat', 'LG', '231313131', 'christian', '799', 'Chapulhuacan', '455467567');
INSERT INTO `venta_detalle` VALUES ('19', null, '2014-01-09', 'XT 300', 'Sony Ericsson', '1313223424', 'christian', '399', 'Chapulhuacan', '12313213213');
INSERT INTO `venta_detalle` VALUES ('20', null, '2014-01-09', 'Nokia', 'Nokia', '18993', 'christian', '899', 'Chapulhuacan', '232323');
INSERT INTO `venta_detalle` VALUES ('21', null, '2014-01-10', 'P709', 'LG', '333', 'christian', '300', 'Chapulhuacan', '333');
INSERT INTO `venta_detalle` VALUES ('22', null, '2014-01-10', 'Chic WF Blanco', 'Azumi', '343434', 'admin', '639', 'Tlanchinol', '987654');
INSERT INTO `venta_detalle` VALUES ('23', null, '2014-01-10', 'INSPIRE 3D 3G', 'HTC', '445543', 'admin', '300', 'Tlanchinol', '33333');
INSERT INTO `venta_detalle` VALUES ('24', null, '2014-01-10', 'P708', 'LG', '2', 'admin', '300', 'Tlanchinol', '2');
INSERT INTO `venta_detalle` VALUES ('25', null, '2014-01-10', 'P708', 'LG', '555', 'admin', '300', 'Tlanchinol', '444');
INSERT INTO `venta_detalle` VALUES ('26', null, '2014-01-10', 'E450F WOLVERINE LENTES NEGRO,BLANCO 3G', 'LG', '1', 'admin', '300', 'Tlanchinol', '1');
INSERT INTO `venta_detalle` VALUES ('27', null, '2014-01-10', 'Chic WF Blanco', 'Azumi', '343434', 'admin', '639', 'Tlanchinol', '987654');
INSERT INTO `venta_detalle` VALUES ('28', null, '2014-01-10', 'E450F WOLVERINE LENTES NEGRO,BLANCO 3G', 'LG', '1', 'admin', '300', 'Tlanchinol', '1');
INSERT INTO `venta_detalle` VALUES ('29', null, '2014-01-10', 'iPhone 5S', 'Apple', '1213121', 'admin', '10300', 'Tlanchinol', '3847952345566666');
INSERT INTO `venta_detalle` VALUES ('30', null, '2014-01-10', 'iPhone 5', 'Apple', '112233', 'admin', '10000', 'Tlanchinol', '122334455667');
INSERT INTO `venta_detalle` VALUES ('31', null, '2014-01-10', 'iPhone 4S', 'Apple', '333443', 'admin', '8000', 'Tlanchinol', '123456');
INSERT INTO `venta_detalle` VALUES ('32', null, '2014-01-10', 'Chic WF Blanco', 'Azumi', '343434', 'admin', '639', 'Tlanchinol', '987654');
INSERT INTO `venta_detalle` VALUES ('33', null, '2014-01-10', 'P708', 'LG', '555', 'admin', '300', 'Tlanchinol', '444');
INSERT INTO `venta_detalle` VALUES ('34', null, '2014-01-10', 'INSPIRE 3D 3G', 'HTC', '445543', 'admin', '300', 'Tlanchinol', '33333');
INSERT INTO `venta_detalle` VALUES ('35', null, '2014-01-10', 'E450F WOLVERINE LENTES NEGRO,BLANCO 3G', 'LG', '1', 'admin', '300', 'Tlanchinol', '1');
