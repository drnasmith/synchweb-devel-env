-- dev only so far

ALTER TABLE BLSample_has_DataCollectionPlan
  CHANGE `order` planOrder tinyint(3);

ALTER TABLE BLSampleGroup_has_BLSample 
  CHANGE `order` groupOrder mediumint(9);
