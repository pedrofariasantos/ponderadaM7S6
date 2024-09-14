-- ---
-- Globals
-- ---
-- SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
-- SET FOREIGN_KEY_CHECKS=0;
-- ---
-- Table 'OCRD'
--
-- ---
DROP TABLE IF EXISTS `OCRD`;
		
CREATE TABLE `OCRD` (
  `CardCode` VARCHAR NULL DEFAULT NULL,
  `CardName` VARCHAR NULL DEFAULT NULL,
  `CardForeignName` VARCHAR NULL DEFAULT NULL,
  `CardType` VARCHAR NULL DEFAULT NULL,
  `GroupCode` INTEGER NULL DEFAULT NULL,
  `Phone1` INTEGER NULL DEFAULT NULL,
  `Phone2` INTEGER NULL DEFAULT NULL,
  `Cellular` INTEGER NULL DEFAULT NULL,
  `Fax` INTEGER NULL DEFAULT NULL,
  `EmailAddress` VARCHAR NULL DEFAULT NULL,
  `ShippingType` VARCHAR NULL DEFAULT NULL,
  `WebSite` VARCHAR NULL DEFAULT NULL,
  `CompanyPrivate` VARCHAR NULL DEFAULT NULL,
  PRIMARY KEY (`CardCode`)
);
-- ---
-- Table 'CRD1'
--
-- ---
DROP TABLE IF EXISTS `CRD1`;
		
CREATE TABLE `CRD1` (
  `id` VARCHAR NULL AUTO_INCREMENT DEFAULT NULL,
  `CardCode` VARCHAR NULL DEFAULT NULL,
  `AdresType` VARCHAR NULL DEFAULT NULL,
  `Address` VARCHAR NULL DEFAULT NULL,
  `AddrType` VARCHAR NULL DEFAULT NULL,
  `Street` VARCHAR NULL DEFAULT NULL,
  `StreetNo` INTEGER NULL DEFAULT NULL,
  `Block` VARCHAR NULL DEFAULT NULL,
  `City` VARCHAR NULL DEFAULT NULL,
  `County` INTEGER NULL DEFAULT NULL,
  `State` VARCHAR NULL DEFAULT NULL,
  `ZipCode` INTEGER NULL DEFAULT NULL,
  `Country` VARCHAR NULL DEFAULT NULL,
  `Building` VARCHAR NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
);
-- ---
-- Table 'CRD7'
--
-- ---
DROP TABLE IF EXISTS `CRD7`;
		
CREATE TABLE `CRD7` (
  `id` VARCHAR NULL AUTO_INCREMENT DEFAULT NULL,
  `CardCode` VARCHAR NULL DEFAULT NULL,
  `LineNum` BINARY NULL DEFAULT NULL,
  `Address` VARCHAR NULL DEFAULT NULL,
  `CNAECode` INTEGER NULL DEFAULT NULL,
  `TaxId0` VARCHAR NULL DEFAULT NULL,
  `TaxId1` VARCHAR NULL DEFAULT NULL,
  `TaxId2` VARCHAR NULL DEFAULT NULL,
  `TaxId3` VARCHAR NULL DEFAULT NULL,
  `TaxId4` VARCHAR NULL DEFAULT NULL,
  `TaxId5` VARCHAR NULL DEFAULT NULL,
  `TaxId6` VARCHAR NULL DEFAULT NULL,
  `TaxId7` VARCHAR NULL DEFAULT NULL,
  `TaxId8` VARCHAR NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
);
-- ---
-- Table 'OCRB'
--
-- ---
DROP TABLE IF EXISTS `OCRB`;
		
CREATE TABLE `OCRB` (
  `id` VARCHAR NULL AUTO_INCREMENT DEFAULT NULL,
  `Cardcode` VARCHAR NULL DEFAULT NULL,
  `LineNum` BINARY NULL DEFAULT NULL,
  `County` VARCHAR NULL DEFAULT NULL,
  `BankCode` VARCHAR NULL DEFAULT NULL,
  `Branch` VARCHAR NULL DEFAULT NULL,
  `UserNo1` VARCHAR NULL DEFAULT NULL,
  `AccountNo` VARCHAR NULL DEFAULT NULL,
  `UserNo2` VARCHAR NULL DEFAULT NULL,
  `AccountName` MEDIUMTEXT NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
);
-- ---
-- Foreign Keys
-- ---
ALTER TABLE `CRD1` ADD FOREIGN KEY (CardCode) REFERENCES `OCRD` (`CardCode`);
ALTER TABLE `CRD7` ADD FOREIGN KEY (CardCode) REFERENCES `OCRD` (`CardCode`);
ALTER TABLE `OCRB` ADD FOREIGN KEY (Cardcode) REFERENCES `OCRD` (`CardCode`);
-- ---
-- Table Properties
-- ---
-- ALTER TABLE `OCRD` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `CRD1` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `CRD7` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `OCRB` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ---
-- Test Data
-- ---
-- INSERT INTO `OCRD` (`CardCode`,`CardName`,`CardForeignName`,`CardType`,`GroupCode`,`Phone1`,`Phone2`,`Cellular`,`Fax`,`EmailAddress`,`ShippingType`,`WebSite`,`CompanyPrivate`) VALUES
-- ('','','','','','','','','','','','','');
-- INSERT INTO `CRD1` (`id`,`CardCode`,`AdresType`,`Address`,`AddrType`,`Street`,`StreetNo`,`Block`,`City`,`County`,`State`,`ZipCode`,`Country`,`Building`) VALUES
-- ('','','','','','','','','','','','','','');
-- INSERT INTO `CRD7` (`id`,`CardCode`,`LineNum`,`Address`,`CNAECode`,`TaxId0`,`TaxId1`,`TaxId2`,`TaxId3`,`TaxId4`,`TaxId5`,`TaxId6`,`TaxId7`,`TaxId8`) VALUES
-- ('','','','','','','','','','','','','','');
-- INSERT INTO `OCRB` (`id`,`Cardcode`,`LineNum`,`County`,`BankCode`,`Branch`,`UserNo1`,`AccountNo`,`UserNo2`,`AccountName`) VALUES
-- ('','','','','','','','','','');