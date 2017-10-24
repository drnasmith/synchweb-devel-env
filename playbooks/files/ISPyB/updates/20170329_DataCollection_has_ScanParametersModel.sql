CREATE TABLE DataCollection_has_ScanParametersModel (
    dataCollectionId int(11) unsigned NOT NULL,
    scanParametersModelId int(11) unsigned NOT NULL,
	PRIMARY KEY (dataCollectionId, scanParametersModelId),
	CONSTRAINT DataCollection_has_ScanParametersModel_ibfk1
      FOREIGN KEY (dataCollectionId) REFERENCES DataCollection(dataCollectionId) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT DataCollection_has_ScanParametersModel_ibfk2
      FOREIGN KEY (scanParametersModelId) REFERENCES ScanParametersModel(scanParametersModelId) ON DELETE CASCADE ON UPDATE CASCADE
);

