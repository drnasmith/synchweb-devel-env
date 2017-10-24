-- pt-online-schema-change --execute --alter-foreign-keys-method auto --alter "MODIFY experimentType enum('SAD','SAD - Inverse Beam','OSC','Collect - Multiwedge','MAD','Helical','Multi-positional','Mesh','Burn','MAD - Inverse Beam','Characterization','Dehydration','tomo','experiment','EM','PDF','PDF+Bragg','Bragg')" D=ispyb,t=DataCollectionGroup,h=localhost

ALTER TABLE DataCollectionGroup 
  MODIFY experimentType enum('SAD','SAD - Inverse Beam','OSC','Collect - Multiwedge','MAD','Helical','Multi-positional','Mesh','Burn','MAD - Inverse Beam','Characterization','Dehydration','tomo','experiment','EM','PDF', 'PDF+Bragg', 'Bragg');
  
