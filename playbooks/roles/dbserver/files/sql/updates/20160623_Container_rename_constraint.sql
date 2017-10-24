alter table Container 
  drop foreign key BLSession_ibfk_3;
alter table Container 
  add constraint Container_ibfk6 FOREIGN KEY (sessionId) REFERENCES BLSession (sessionId);
