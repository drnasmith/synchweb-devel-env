ALTER TABLE BLSubSample 
  ADD `blSampleImageId` int(11) unsigned AFTER `diffractionPlanId`,
  ADD CONSTRAINT BLSubSample_blSampleImagefk_1 FOREIGN KEY (blSampleImageId) REFERENCES BLSampleImage(blSampleImageId);

