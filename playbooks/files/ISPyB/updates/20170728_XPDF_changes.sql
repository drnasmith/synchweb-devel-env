ALTER TABLE BLSample_has_DataCollectionPlan
  DROP IF EXISTS `order`;

ALTER TABLE ScanParametersModel
  DROP IF EXISTS duration;

ALTER TABLE BLSample_has_DataCollectionPlan
  ADD `order` tinyint unsigned;

ALTER TABLE ScanParametersModel
  ADD duration mediumint unsigned COMMENT 'Duration for parameter change in seconds';
