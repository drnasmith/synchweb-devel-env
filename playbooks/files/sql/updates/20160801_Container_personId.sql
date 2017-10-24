alter table Container 
  drop foreign key Container_ibfk5,
  drop column labContactId;

alter table Container 
  add ownerId int(10) unsigned NULL DEFAULT NULL, 
  add CONSTRAINT Container_ibfk5 FOREIGN KEY (ownerId) REFERENCES Person (personId);
