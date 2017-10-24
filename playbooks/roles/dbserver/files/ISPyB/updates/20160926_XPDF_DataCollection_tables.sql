DROP TABLE IF EXISTS ScanParametersModel;
ALTER TABLE DiffractionPlan
    DROP FOREIGN KEY DataCollectionPlan_ibfk2,
    DROP FOREIGN KEY DataCollectionPlan_ibfk3, 
    DROP dataCollectionPlanGroupId,
    DROP detectorId,
    DROP distance,
    DROP orientation,
    DROP monoBandwidth;
DROP TABLE IF EXISTS DataCollectionPlanGroup;
DROP TABLE IF EXISTS ScanParametersService;
ALTER TABLE Protein 
    DROP theoreticalDensity;

CREATE TABLE DataCollectionPlanGroup (
    dataCollectionPlanGroupId int(11) unsigned auto_increment,
    sessionId int(11) unsigned,
    blSampleId int(11) unsigned,    
    PRIMARY KEY (`dataCollectionPlanGroupId`),
    CONSTRAINT DataCollectionPlanGroup_ibfk1 FOREIGN KEY (sessionId) REFERENCES BLSession (sessionId) ON UPDATE CASCADE,
    CONSTRAINT DataCollectionPlanGroup_ibfk2 FOREIGN KEY (blSampleId) REFERENCES BLSample (blSampleId) ON UPDATE CASCADE    
);

ALTER TABLE DiffractionPlan
    ADD dataCollectionPlanGroupId int(11) unsigned,
    ADD detectorId int(11),
    ADD distance double,
    ADD orientation double, -- enum('0', '45'),
    ADD monoBandwidth double,
    ADD CONSTRAINT DataCollectionPlan_ibfk2 FOREIGN KEY (dataCollectionPlanGroupId) REFERENCES DataCollectionPlanGroup (dataCollectionPlanGroupId) ON UPDATE CASCADE,
    ADD CONSTRAINT DataCollectionPlan_ibfk3 FOREIGN KEY (detectorId) REFERENCES Detector (detectorId) ON UPDATE CASCADE;

CREATE TABLE ScanParametersService (
    scanParametersServiceId int(10) unsigned auto_increment,
    name varchar(45),
    description varchar(45),
    PRIMARY KEY (`scanParametersServiceId`)
);

CREATE TABLE ScanParametersModel (
    scanParametersModelId int(11) unsigned auto_increment,
    scanParametersServiceId int(10) unsigned,
    dataCollectionPlanId int(11) unsigned,
    modelNumber tinyint unsigned,
    start double,
    stop double,
    step double,
    array text,
    PRIMARY KEY (`scanParametersModelId`),
    CONSTRAINT PDF_Model_ibfk1 FOREIGN KEY (scanParametersServiceId) REFERENCES ScanParametersService (scanParametersServiceId) ON UPDATE CASCADE,
    CONSTRAINT PDF_Model_ibfk2 FOREIGN KEY (dataCollectionPlanId) REFERENCES DiffractionPlan (diffractionPlanId) ON UPDATE CASCADE
);

ALTER TABLE Protein
    ADD theoreticalDensity float;

-- Weight fraction should be stored in BLSampleType_has_Component.abundance
-- Chemical formula should be stored in Protein.sequence (Protein to be renamed to: Component, and sequence to: content)

