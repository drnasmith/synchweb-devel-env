alter table GridInfo 
  add CONSTRAINT GridInfo_ibfk_2 FOREIGN KEY (dataCollectionGroupId) REFERENCES DataCollectionGroup (dataCollectionGroupId);
