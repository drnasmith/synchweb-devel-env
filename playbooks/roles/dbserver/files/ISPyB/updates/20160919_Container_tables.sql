-- Only on DEV so far

drop table if exists ContainerHistory;
drop table if exists ContainerQueueSample;
drop table if exists ContainerQueue;

create table ContainerHistory (
  containerHistoryId int(11) unsigned auto_increment,
  containerId int(10) unsigned,
  location varchar(45),
  blTimeStamp timestamp default current_timestamp,
  PRIMARY KEY (containerHistoryId),
  CONSTRAINT ContainerHistory_ibfk1 FOREIGN KEY (containerId) REFERENCES Container (containerId) ON DELETE CASCADE ON UPDATE CASCADE
);

create table ContainerQueue (
  containerQueueId int(11) unsigned auto_increment,
  containerId int(10) unsigned,
  createdTimeStamp timestamp default current_timestamp,
  completedTimeStamp timestamp default current_timestamp,
  PRIMARY KEY (containerQueueId),
  CONSTRAINT ContainerQueue_ibfk1 FOREIGN KEY (containerId) REFERENCES Container (containerId) ON DELETE CASCADE ON UPDATE CASCADE
);

create table ContainerQueueSample (
  containerQueueSampleId int(11) unsigned auto_increment,
  containerQueueId int(11) unsigned,
  blSubSampleId int(11) unsigned,
  PRIMARY KEY (containerQueueSampleId),
  CONSTRAINT ContainerQueueSample_ibfk1 FOREIGN KEY (containerQueueId) REFERENCES ContainerQueue (containerQueueId) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT ContainerQueueSample_ibfk2 FOREIGN KEY (blSubSampleId) REFERENCES BLSubSample (blSubSampleId) ON DELETE CASCADE ON UPDATE CASCADE
);

ALTER TABLE ContainerQueue MODIFY completedTimeStamp timestamp NULL DEFAULT NULL;

/* 
-- Should this FK be in DCGroup instead?
ALTER TABLE DataCollection 
ADD containerQueueId int(11) unsigned,
ADD CONSTRAINT DataCollection_ibfk9 FOREIGN KEY (containerQueueId) REFERENCES ContainerQueue (containerQueueId);
*/

