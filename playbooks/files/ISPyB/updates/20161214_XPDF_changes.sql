DROP TABLE IF EXISTS DiffractionPlan_has_Detector;
DROP TABLE IF EXISTS BLSample_has_DiffractionPlan;
DROP TABLE IF EXISTS BLSampleGroup_has_BLSample;
DROP TABLE IF EXISTS BLSampleGroup;
DROP TABLE IF EXISTS Protein_has_Lattice;
DROP TABLE IF EXISTS BeamlineAction;

ALTER TABLE Crystal 
  DROP packingFraction;
ALTER TABLE BLSample
  DROP dimension1,
  DROP dimension2,
  DROP dimension3,
  DROP shape;

CREATE TABLE DiffractionPlan_has_Detector (
	diffractionPlanId int(11) unsigned NOT NULL,
    detectorId int(11) NOT NULL,
    exposureTime double,
    distance double,
    orientation double,
    PRIMARY KEY (`diffractionPlanId`, `detectorId`),
	CONSTRAINT DiffractionPlan_has_Detector_ibfk1 FOREIGN KEY (diffractionPlanId) REFERENCES DiffractionPlan (diffractionPlanId),
    CONSTRAINT DiffractionPlan_has_Detector_ibfk2 FOREIGN KEY (detectorId) REFERENCES Detector (detectorId)
);

CREATE TABLE BLSample_has_DiffractionPlan (
	blSampleId int(11) unsigned NOT NULL,
    diffractionPlanId int(11) unsigned NOT NULL,
    PRIMARY KEY (`blSampleId`, `diffractionPlanId`),    
	CONSTRAINT BLSample_has_DiffractionPlan_ibfk1 FOREIGN KEY (blSampleId) REFERENCES BLSample (blSampleId),
    CONSTRAINT BLSample_has_DiffractionPlan_ibfk2 FOREIGN KEY (diffractionPlanId) REFERENCES DiffractionPlan (diffractionPlanId)
);

CREATE TABLE BLSampleGroup (
    blSampleGroupId int(11) unsigned auto_increment NOT NULL PRIMARY KEY
);

CREATE TABLE BLSampleGroup_has_BLSample (
    blSampleGroupId int(11) unsigned NOT NULL,
	blSampleId int(11) unsigned NOT NULL,
    `order` mediumint,
    `type` enum('background', 'container', 'sample', 'calibrant'),
    PRIMARY KEY (`blSampleGroupId`, `blSampleId`),    
	CONSTRAINT BLSampleGroup_has_BLSample_ibfk1 FOREIGN KEY (blSampleGroupId) REFERENCES BLSampleGroup (blSampleGroupId),
    CONSTRAINT BLSampleGroup_has_BLSample_ibfk2 FOREIGN KEY (blSampleId) REFERENCES BLSample (blSampleId)
);

CREATE TABLE Protein_has_Lattice (
	proteinId int(10) unsigned PRIMARY KEY,
    cell_a double,
    cell_b double,
    cell_c double,
    cell_alpha double,
    cell_beta double,
    cell_gamma double,
    CONSTRAINT Protein_has_Lattice_ibfk1 FOREIGN KEY (proteinId) REFERENCES Protein (proteinId)
);

CREATE TABLE BeamlineAction (
	beamlineActionId int(11) unsigned auto_increment PRIMARY KEY,
    sessionId int(11) unsigned,
    startTimestamp timestamp,
    endTimestamp timestamp,
	message varchar(255),
    parameter varchar(50),
    `value` varchar(30),
    loglevel enum('DEBUG', 'CRITICAL', 'INFO'),
    status enum('PAUSED', 'RUNNING', 'TERMINATED', 'COMPLETE', 'ERROR', 'EPICSFAIL'),
	CONSTRAINT BeamlineAction_ibfk1 FOREIGN KEY (sessionId) REFERENCES BLSession (sessionId)
);

ALTER TABLE Crystal 
  ADD packingFraction float;
  
ALTER TABLE BLSample
  ADD dimension1 double,
  ADD dimension2 double,
  ADD dimension3 double,
  ADD shape varchar(15);
  
  