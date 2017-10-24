-- Only run on dev DB so far:

ALTER TABLE DiffractionPlan
  MODIFY experimentKind enum('Default','MXPressE','MXPressO','MXPressE_SAD','MXScore','MXPressM','MAD','SAD','Fixed','Ligand binding','Refinement',
    'OSC','MAD - Inverse Beam','SAD - Inverse Beam','MESH','XFE', 'Bragg', 'PDF', 'PDF+Bragg');
  
  