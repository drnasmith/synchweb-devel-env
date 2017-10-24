-- Only on dev so far
-- From the ESRF + our MESH

ALTER TABLE `DiffractionPlan` 
CHANGE `experimentKind` 
`experimentKind` ENUM('Default','MXPressE','MXPressO','MXPressE_SAD','MXScore','MXPressM'
 ,'MAD','SAD','Fixed','Ligand binding','Refinement','OSC','MAD - Inverse Beam','SAD - Inverse Beam','MESH');
 
 ALTER TABLE `DiffractionPlan`  ADD `preferredBeamDiameter` FLOAT NULL AFTER `preferredBeamSizeY`;