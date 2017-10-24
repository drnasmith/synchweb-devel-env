ALTER TABLE ProposalHasPerson
  DROP IF EXISTS role;
  
ALTER TABLE ProposalHasPerson
  ADD role enum('Co-Investigator','Principal Investigator','Alternate Contact');