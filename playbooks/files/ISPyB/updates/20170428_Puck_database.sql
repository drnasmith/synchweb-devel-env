ALTER TABLE Container 
  DROP containerRegistryId,
  DROP FOREIGN KEY  Container_ibfk8;

DROP TABLE IF EXISTS ContainerReport;
DROP TABLE IF EXISTS ContainerRegistry_has_Proposal;
DROP TABLE IF EXISTS ContainerRegistry;

CREATE TABLE ContainerRegistry (
  containerRegistryId int(11) unsigned AUTO_INCREMENT PRIMARY KEY,
  barcode varchar(20),
  comments varchar(255),
  recordTimestamp datetime DEFAULT current_timestamp
);

ALTER TABLE Container 
  ADD containerRegistryId int(11) unsigned NULL DEFAULT NULL,
  ADD CONSTRAINT Container_ibfk8 FOREIGN KEY (containerRegistryId) REFERENCES ContainerRegistry(containerRegistryId);

CREATE TABLE ContainerRegistry_has_Proposal (
  containerRegistryHasProposalId int(11) unsigned AUTO_INCREMENT PRIMARY KEY,
  containerRegistryId int(11) unsigned,
  proposalId int(10) unsigned,
  personId int(10) unsigned COMMENT 'Person registering the container',
  recordTimestamp datetime DEFAULT current_timestamp,
  UNIQUE KEY (containerRegistryId, proposalId),
  CONSTRAINT ContainerRegistry_has_Proposal_ibfk1 FOREIGN KEY (containerRegistryId) REFERENCES ContainerRegistry(containerRegistryId),
  CONSTRAINT ContainerRegistry_has_Proposal_ibfk2 FOREIGN KEY (proposalId) REFERENCES Proposal(proposalId),
  CONSTRAINT ContainerRegistry_has_Proposal_ibfk3 FOREIGN KEY (personId) REFERENCES Person(personId)
);

CREATE TABLE ContainerReport (
  containerReportId int(11) unsigned AUTO_INCREMENT PRIMARY KEY,
  containerRegistryId int(11) unsigned,
  personId int(10) unsigned COMMENT 'Person making report',
  report text,
  attachmentFilePath varchar(255),
  recordTimestamp datetime,
  CONSTRAINT ContainerReport_ibfk1 FOREIGN KEY (containerRegistryId) REFERENCES ContainerRegistry(containerRegistryId),
  CONSTRAINT ContainerReport_ibfk2 FOREIGN KEY (personId) REFERENCES Person(personId)
);
