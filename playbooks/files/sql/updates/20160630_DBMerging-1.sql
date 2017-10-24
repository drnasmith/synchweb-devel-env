/*
alter table Person drop passwd;
alter table XFEFluorescenceSpectrum drop WAVELENGTH;
DROP TABLE `DatamatrixInSampleChanger`;
DROP TABLE `UntrustedRegion`;
DROP TABLE `WorkflowDehydration`;
ALTER TABLE DiffractionPlan DROP FOREIGN KEY DiffractionPlan_ibfk_1;
ALTER TABLE DiffractionPlan DROP xmlDocumentId;
DROP TABLE XmlDocument;
DROP TABLE XmlSchema;
DROP TABLE IspybAutoProcAttachment;
  
ALTER TABLE `Person` DROP FOREIGN KEY `Person_ibfk_1` ;
ALTER TABLE `Person` ADD FOREIGN KEY ( `laboratoryId` ) REFERENCES `Laboratory` (`laboratoryId`) ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE `Person` ADD `siteId` INT NULL AFTER `laboratoryId` ;
ALTER TABLE `Person` ADD INDEX ( `siteId` ) ;

ALTER TABLE `Screening`  ADD `dataCollectionGroupId` INT NULL AFTER `diffractionPlanId`; -- No FK

CREATE TABLE IF NOT EXISTS `ProposalHasPerson` (
  `proposalHasPersonId` int(10) unsigned NOT NULL,
  `proposalId` int(10) unsigned NOT NULL,
  `personId` int(10) unsigned NOT NULL,
  PRIMARY KEY (`proposalHasPersonId`),
  KEY `fk_ProposalHasPerson_Proposal` (`proposalId`),
  KEY `fk_ProposalHasPerson_Personal` (`personId`),
  CONSTRAINT `fk_ProposalHasPerson_Personal` FOREIGN KEY (`personId`) REFERENCES `Person` (`personId`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_ProposalHasPerson_Proposal` FOREIGN KEY (`proposalId`) REFERENCES `Proposal` (`proposalId`) ON DELETE NO ACTION ON UPDATE NO ACTION
);

*/

CREATE TABLE `WorkflowType` (
  `workflowTypeId` INT NOT NULL AUTO_INCREMENT,
  `workflowTypeName` VARCHAR(45) NULL,
  `comments` VARCHAR(2048) NULL,
  `recordTimeStamp` TIMESTAMP NULL,
  PRIMARY KEY (`workflowTypeId`));
  
ALTER TABLE `Workflow` 
  ADD COLUMN `workflowTypeId` INT NULL AFTER `workflowType`,
  CHANGE `workflowType` `workflowType` 
    ENUM('Undefined','BioSAXS Post Processing','EnhancedCharacterisation','LineScan','MeshScan','Dehydration','KappaReorientation','BurnStrategy','XrayCentering','DiffractionTomography','TroubleShooting','VisualReorientation','HelicalCharacterisation','GroupedProcessing','MXPressE','MXPressO','MXPressL','MXScore', 'MXPressI', 'MXPressM', 'MXPressA') 
    CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL;

CREATE TABLE `WorkflowStep` (
  `workflowStepId` INT NOT NULL AUTO_INCREMENT,
  `workflowId` INT(11) UNSIGNED NOT NULL,
  `type` VARCHAR(45) NULL,
  `status` VARCHAR(45) NULL,
  `folderPath` VARCHAR(1024) NULL,
  `imageResultFilePath` VARCHAR(1024) NULL,
  `htmlResultFilePath` VARCHAR(1024) NULL,
  `resultFilePath` VARCHAR(1024) NULL,
  `comments` VARCHAR(2048) NULL,
  `recordTimeStamp` TIMESTAMP NULL,
  PRIMARY KEY (`workflowStepId`));

ALTER TABLE `WorkflowStep` 
  ADD INDEX `step_to_workflow_fk_idx` (`workflowId` ASC),
  ADD CONSTRAINT `step_to_workflow_fk` FOREIGN KEY (`workflowId`) REFERENCES `Workflow` (`workflowId`) ON DELETE NO ACTION ON UPDATE NO ACTION;



