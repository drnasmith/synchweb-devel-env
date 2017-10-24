DROP TABLE IF EXISTS DataCollectionPlan_has_Detector;

CREATE TABLE DataCollectionPlan_has_Detector (
    dataCollectionPlanHasDetectorId int(11) unsigned auto_increment PRIMARY KEY,
	dataCollectionPlanId int(11) unsigned NOT NULL,
    detectorId int(11) NOT NULL,
    exposureTime double,
    distance double,
    roll double,
    UNIQUE KEY (`dataCollectionPlanId`, `detectorId`),
	CONSTRAINT DataCollectionPlan_has_Detector_ibfk1 FOREIGN KEY (dataCollectionPlanId) REFERENCES DiffractionPlan (diffractionPlanId),
    CONSTRAINT DataCollectionPlan_has_Detector_ibfk2 FOREIGN KEY (detectorId) REFERENCES Detector (detectorId)
);
