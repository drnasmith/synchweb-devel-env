DROP TABLE IF EXISTS DiffractionPlan_has_Detector;
DROP TABLE IF EXISTS BLSample_has_DiffractionPlan;
DROP TABLE IF EXISTS DataCollectionPlan_has_Detector;
DROP TABLE IF EXISTS BLSample_has_DataCollectionPlan;

CREATE TABLE DataCollectionPlan_has_Detector (
	dataCollectionPlanId int(11) unsigned NOT NULL,
    detectorId int(11) NOT NULL,
    exposureTime double,
    distance double,
    orientation double,
    PRIMARY KEY (`dataCollectionPlanId`, `detectorId`),
	CONSTRAINT DataCollectionPlan_has_Detector_ibfk1 FOREIGN KEY (dataCollectionPlanId) REFERENCES DiffractionPlan (diffractionPlanId),
    CONSTRAINT DataCollectionPlan_has_Detector_ibfk2 FOREIGN KEY (detectorId) REFERENCES Detector (detectorId)
);

CREATE TABLE BLSample_has_DataCollectionPlan (
	blSampleId int(11) unsigned NOT NULL,
    dataCollectionPlanId int(11) unsigned NOT NULL,
    PRIMARY KEY (`blSampleId`, `dataCollectionPlanId`),    
	CONSTRAINT BLSample_has_DataCollectionPlan_ibfk1 FOREIGN KEY (blSampleId) REFERENCES BLSample (blSampleId),
    CONSTRAINT BLSample_has_DataCollectionPlan_ibfk2 FOREIGN KEY (dataCollectionPlanId) REFERENCES DiffractionPlan (diffractionPlanId)
);
