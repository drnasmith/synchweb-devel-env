-- dev only so far

DROP TABLE IF EXISTS DataCollectionFileAttachment;

CREATE TABLE DataCollectionFileAttachment (
    dataCollectionFileAttachmentId int(11) unsigned NOT NULL auto_increment,
    dataCollectionId int(11) unsigned NOT NULL,
    fileFullPath varchar(255) NOT NULL,
    fileType enum('snapshot', 'log', 'xy') NOT NULL,    
    createTime timestamp DEFAULT NOW() NOT NULL, 
    PRIMARY KEY (dataCollectionFileAttachmentId),
    CONSTRAINT `dataCollectionFileAttachmentId_fk1` FOREIGN KEY (`dataCollectionId`) REFERENCES `DataCollection`(`dataCollectionId`) ON DELETE CASCADE ON UPDATE CASCADE
);