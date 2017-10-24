-- Only on dev so far

alter table Session_has_Person 
	modify role enum('Local Contact','Local Contact 2','Staff','Team Leader','Co-Investigator','Principal Investigator','Alternate Contact','Data Access', 'Team Member')


