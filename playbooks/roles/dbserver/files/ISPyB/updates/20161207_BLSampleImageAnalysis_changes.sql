-- Dev only so far ..

ALTER TABLE BLSampleImageAnalysis
  CHANGE oavSnapshotFullPath oavSnapshotBefore varchar(255),
  ADD oavSnapshotAfter varchar(255) after oavSnapshotBefore,
  DROP FOREIGN KEY BLSampleImageAnalysis_ibfk2,
  DROP blSubSampleId,
  ADD scaleFactor float AFTER goodnessOfFit,
  ADD resultCode varchar(15) AFTER scaleFactor;