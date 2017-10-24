-- Changes needed for VMXi (MXSW-403)
-- Only on dev so far

ALTER TABLE DiffractionPlan 
DROP monochromator,
DROP wavelength,
DROP transmission,
DROP boxSizeX,
DROP boxSizeY,
DROP kappaStart,
DROP axisStart,
DROP axisRange,
DROP numberOfImages,
DROP FOREIGN KEY DiffractionPlan_ibfk1,
DROP presetForProposalId,
DROP beamLineName; 

ALTER TABLE DiffractionPlan 
ADD monochromator varchar(8),
ADD wavelength float,
ADD transmission float,
ADD boxSizeX float,
ADD boxSizeY float,
ADD kappaStart float,
ADD axisStart float,
ADD axisRange float,
ADD numberOfImages mediumint,
ADD presetForProposalId int(10) unsigned,
ADD beamLineName varchar(45),
ADD CONSTRAINT DiffractionPlan_ibfk1 FOREIGN KEY (presetForProposalId) REFERENCES Proposal (proposalId);