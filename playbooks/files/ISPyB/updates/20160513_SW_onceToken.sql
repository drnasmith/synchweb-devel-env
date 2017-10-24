drop table if exists SW_onceToken;

create table SW_onceToken (
onceTokenId int(11) unsigned not null auto_increment,
token varchar(128),
personId int(10) unsigned,
proposalId int(10) unsigned,
validity varchar(200),
primary key (onceTokenId),
CONSTRAINT SW_onceToken_fk1 FOREIGN KEY (personId) REFERENCES Person (personId),
CONSTRAINT SW_onceToken_fk2 FOREIGN KEY (proposalId) REFERENCES Proposal (proposalId)
) COMMENT = 'One-time use tokens needed for token auth in order to grant access to file downloads and webcams (and some images)';

alter table SW_onceToken add recordTimeStamp timestamp not null default current_timestamp;

