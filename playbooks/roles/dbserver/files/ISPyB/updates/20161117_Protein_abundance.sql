alter table Protein 
  add abundance float;  -- This was the wrong table. Deprecated. Not removed yet as the application depends on it (for now).

alter table Protein 
  modify abundance float comment 'Deprecated';
  
alter table Crystal 
  add abundance float;
  