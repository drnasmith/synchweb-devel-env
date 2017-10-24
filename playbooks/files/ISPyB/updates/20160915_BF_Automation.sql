drop table if exists BF_autoFault;
drop table if exists BF_automationFault;
drop table if exists BF_automationError;

create table BF_automationError (
  automationErrorId int(10) unsigned auto_increment,
  errorType varchar(40) NOT NULL,
  solution text,
  PRIMARY KEY (automationErrorId)
);

create table BF_automationFault (
  automationFaultId int(10) unsigned auto_increment,
  automationErrorId int(10) unsigned,
  containerId int(10) unsigned,
  severity enum('1','2','3'),
  stacktrace text,
  resolved boolean,
  faultTimeStamp timestamp default current_timestamp,
  PRIMARY KEY (automationFaultId),
  CONSTRAINT BF_automationFault_ibfk1 FOREIGN KEY (automationErrorId) REFERENCES BF_automationError (automationErrorId),
  CONSTRAINT BF_automationFault_ibfk2 FOREIGN KEY (containerId) REFERENCES Container (containerId)
);

insert into BF_automationError (errorType, solution) values ('SH_SOFTWARE', '');
insert into BF_automationError (errorType, solution) values ('SH_HARDWARE', '');
insert into BF_automationError (errorType, solution) values ('DC_SOFTWARE', '');
insert into BF_automationError (errorType, solution) values ('DC_HARDWARE', '');