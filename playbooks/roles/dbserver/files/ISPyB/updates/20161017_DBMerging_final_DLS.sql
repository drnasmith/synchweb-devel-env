
-- Rename DHLTermsAccepted to CourierTermsAccepted:

rename table DHLTermsAccepted to CourierTermsAccepted;
alter table CourierTermsAccepted change dhlTermsAcceptedId courierTermsAcceptedId int(10) unsigned auto_increment;
alter table CourierTermsAccepted drop foreign key CourierTermsAccepted_ibfk_1;
alter table CourierTermsAccepted drop foreign key CourierTermsAccepted_ibfk_2;
alter table CourierTermsAccepted drop key DHLTermsAccepted_FKIndex1;
alter table CourierTermsAccepted drop key DHLTermsAccepted_FKIndex2;
alter table CourierTermsAccepted add CONSTRAINT CourierTermsAccepted_ibfk_1 FOREIGN KEY (proposalId) REFERENCES Proposal (proposalId);
alter table CourierTermsAccepted add CONSTRAINT CourierTermsAccepted_ibfk_2 FOREIGN KEY (personId) REFERENCES Person (personId);
ALTER TABLE CourierTermsAccepted comment = 'Records acceptances of the courier T and C';

-- Fix Position table:

UPDATE Position SET posX=X, posY=Y, posZ=Z;
ALTER TABLE Position DROP X, DROP Y, DROP Z, DROP RELATIVETOPOS;
ALTER TABLE Position 
  ADD X double as (posX) virtual,
  ADD Y double as (posY) virtual,
  ADD Z double as (posZ) virtual;

-- Drop table BLSample_has_EnergyScan, use FK in EnergyScan instead:

ALTER TABLE `EnergyScan` ADD `blSampleId` INT( 10 ) NULL AFTER `sessionId` ;
ALTER TABLE `EnergyScan` MODIFY `blSampleId` INT( 10 ) UNSIGNED;

ALTER TABLE `EnergyScan` 
  ADD CONSTRAINT ES_ibfk_2 FOREIGN KEY (blSampleId) REFERENCES BLSample (blSampleId); 

update EnergyScan, BLSample_has_EnergyScan
set EnergyScan.blSampleId = BLSample_has_EnergyScan.blSampleId
  where EnergyScan.energyScanId = BLSample_has_EnergyScan.energyScanId ;

-- drop table BLSample_has_EnergyScan;

CREATE TABLE IF NOT EXISTS `PhasingStep` (
  `phasingStepId` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `previousPhasingStepId` INT UNSIGNED NULL,
  `programRunId` INT UNSIGNED NULL,
  `spaceGroupId` INT UNSIGNED NULL,
  `autoProcScalingId` INT UNSIGNED NULL,
  `phasingAnalysisId` INT UNSIGNED NULL,
  `phasingStepType` enum('Prepare','SubStructDeter','Phasing','ModelBuilding') DEFAULT NULL,
  `method` VARCHAR(45) NULL,
  `solventContent` VARCHAR(45) NULL,
  `enantiomorph` VARCHAR(45) NULL,
  `lowRes` VARCHAR(45) NULL,
  `highRes` VARCHAR(45) NULL,
  `recordTimeStamp` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`phasingStepId`),
  INDEX `FK_programRun_id` (`programRunId` ASC),
  INDEX `FK_spacegroup_id` (`spaceGroupId` ASC),
  INDEX `FK_autoprocScaling_id` (`autoProcScalingId` ASC),
  INDEX `FK_phasingAnalysis_id` (`phasingAnalysisId` ASC),
  CONSTRAINT `FK_program` FOREIGN KEY (`programRunId`) REFERENCES `PhasingProgramRun` (`phasingProgramRunId`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_spacegroup` FOREIGN KEY (`spaceGroupId`) REFERENCES `SpaceGroup` (`spaceGroupId`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_autoprocScaling` FOREIGN KEY (`autoProcScalingId`) REFERENCES `AutoProcScaling` (`autoProcScalingId`) ON DELETE NO ACTION ON UPDATE NO ACTION)
ENGINE = InnoDB;

ALTER TABLE `PhasingStep` 
  CHANGE COLUMN `phasingStepType` `phasingStepType` ENUM('PREPARE', 'SUBSTRUCTUREDETERMINATION', 'PHASING', 'MODELBUILDING') NULL DEFAULT NULL ;

ALTER TABLE `PhasingStatistics` 
  ADD COLUMN `phasingStepId` INT(10) UNSIGNED NULL AFTER `phasingHasScalingId2`,
  ADD INDEX `fk_PhasingStatistics_phasingStep_idx` (`phasingStepId` ASC);

ALTER TABLE `PhasingStatistics` 
  ADD CONSTRAINT `fk_PhasingStatistics_phasingStep` FOREIGN KEY (`phasingStepId`) REFERENCES `PhasingStep` (`phasingStepId`) ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE `WorkflowStep` 
  ADD COLUMN `crystalSizeX` VARCHAR(45) NULL AFTER `comments`,
  ADD COLUMN `crystalSizeY` VARCHAR(45) NULL AFTER `crystalSizeX`,
  ADD COLUMN `crystalSizeZ` VARCHAR(45) NULL AFTER `crystalSizeY`,
  ADD COLUMN `maxDozorScore` VARCHAR(45) NULL AFTER `crystalSizeZ`;

-- Old version: enum('Rcullis','CC','PhasingPower','FOM','','Best CC','CC(1/2)','Weak CC','CFOM','Pseudo_free_CC','CC of partial model')
ALTER TABLE `PhasingStatistics` 
  CHANGE COLUMN `metric` `metric` ENUM('Rcullis','Average Fragment Length','Chain Count','Residues Count','CC','PhasingPower','FOM','<d"/sig>','Best CC','CC(1/2)','Weak CC','CFOM','Pseudo_free_CC','CC of partial model') NULL DEFAULT NULL COMMENT 'metric' ;

-- Old version: enum('Map','Logfile')
ALTER TABLE `PhasingProgramAttachment` 
  CHANGE COLUMN `fileType` `fileType` ENUM('Map','Logfile','PDB','CSV','INS', 'RES', 'TXT') NULL DEFAULT NULL COMMENT 'file type' ;

ALTER TABLE `XFEFluorescenceSpectrum` 
  ADD COLUMN `workingDirectory` VARCHAR(512) NULL AFTER `flux_end`;

ALTER TABLE `EnergyScan` 
  ADD COLUMN `workingDirectory` VARCHAR(45) NULL AFTER `flux_end`;

