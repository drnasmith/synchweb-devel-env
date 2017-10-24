alter table Proposal drop column externalId; 
alter table Proposal add externalId binary(16) NULL DEFAULT NULL;

alter table BLSession drop column externalId; 
alter table BLSession add externalId binary(16) NULL DEFAULT NULL;

alter table Person drop column externalId; 
alter table Person add externalId binary(16) NULL DEFAULT NULL;

alter table Protein add externalId binary(16) NULL DEFAULT NULL;