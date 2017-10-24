ALTER TABLE XFEFluorescenceSpectrum
  CHANGE BLSUBSAMPLEID blSubSampleId int(11) unsigned,
  ADD CONSTRAINT XFE_ibfk_3 FOREIGN KEY (blSubSampleId) REFERENCES BLSubSample (blSubSampleId);
  