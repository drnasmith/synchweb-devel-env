-- Only in dev database so far.

DROP TABLE IF EXISTS BLSampleImageMeasurement;

CREATE TABLE BLSampleImageMeasurement (
  blSampleImageMeasurementId int(11) unsigned auto_increment NOT NULL,
  blSampleImageId int(11) unsigned NOT NULL,
  blSubSampleId int(11) unsigned,
  startPosX double,
  startPosY double,
  endPosX double,
  endPosY double,
  blTimeStamp datetime,
  PRIMARY KEY (`blSampleImageMeasurementId`),
  CONSTRAINT BLSampleImageMeasurement_ibfk_1 FOREIGN KEY (`blSampleImageId`) REFERENCES `BLSampleImage` (`blSampleImageId`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT BLSampleImageMeasurement_ibfk_2 FOREIGN KEY (`blSubSampleId`) REFERENCES `BLSubSample` (`blSubSampleId`) ON DELETE NO ACTION ON UPDATE NO ACTION
) COMMENT = 'For measuring crystal growth over time';
