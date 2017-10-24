ALTER TABLE Container
  ADD requestedImagerId int(11) unsigned,
  ADD CONSTRAINT Container_ibfk7 FOREIGN KEY (requestedImagerId) REFERENCES Imager (imagerId),
  ADD requestedReturn boolean DEFAULT False COMMENT 'True for requesting return, False means container will be disposed',
  ADD comments varchar(255);
