ALTER TABLE EnergyScan
  ADD blSubSampleId int(11) unsigned,
  ADD CONSTRAINT ES_ibfk_3 FOREIGN KEY (blSubSampleId) REFERENCES BLSubSample (blSubSampleId);
  
