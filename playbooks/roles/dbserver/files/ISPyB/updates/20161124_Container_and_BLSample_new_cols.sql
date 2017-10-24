ALTER TABLE Container 
  ADD experimentType varchar(20),
  ADD storageTemperature float;

ALTER TABLE BLSample
  ADD volume float;

