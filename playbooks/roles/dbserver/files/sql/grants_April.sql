#You have to create a database user, and give the necessary grants:

#create user ispyb_web@'%' identified by 'your preferred password';

#-- Grants for ispyb_web@'%' :

grant select on ispyb.* to 'ispyb_web'@'%';
grant select, update on ispyb.BLSession to 'ispyb_web'@'%';
grant update on ispyb.DataCollection to 'ispyb_web'@'%';
grant select, update on ispyb.EnergyScan to 'ispyb_web'@'%';
grant select, update on ispyb.XFEFluorescenceSpectrum to 'ispyb_web'@'%';
grant update on ispyb.DataCollectionGroup to 'ispyb_web'@'%';
grant insert, update, delete on ispyb.DataCollectionComment to 'ispyb_web'@'%';
grant insert, update, delete on ispyb.Shipping to 'ispyb_web'@'%';
grant insert, update, delete on ispyb.ShippingHasSession to 'ispyb_web'@'%';
grant insert, update, delete on ispyb.Dewar to 'ispyb_web'@'%';
grant insert, update, delete on ispyb.DewarTransportHistory to 'ispyb_web'@'%';
grant insert, update, delete on ispyb.DewarLocation to 'ispyb_web'@'%';
grant insert, update, delete on ispyb.`Container` to 'ispyb_web'@'%';
grant insert, update, delete on ispyb.BLSample to 'ispyb_web'@'%';
grant insert, update, delete on ispyb.BLSubSample to 'ispyb_web'@'%';
grant select, insert, update on ispyb.Position to 'ispyb_web'@'%';
grant insert, update, delete on ispyb.Crystal to 'ispyb_web'@'%';
grant insert, update, delete on ispyb.Crystal_has_UUID to 'ispyb_web'@'%';
grant insert, update, delete on ispyb.Protein to 'ispyb_web'@'%';
grant insert, update, delete on ispyb.Protein_has_PDB to 'ispyb_web'@'%';
grant insert, update, delete on ispyb.PDB to 'ispyb_web'@'%';
grant insert, update, delete on ispyb.PDBEntry to 'ispyb_web'@'%';
grant insert, update, delete on ispyb.DiffractionPlan to 'ispyb_web'@'%';
grant insert, update, delete on ispyb.ExperimentKindDetails to 'ispyb_web'@'%';
grant insert, update, delete on ispyb.LabContact to 'ispyb_web'@'%';
grant insert, update, delete on ispyb.Person to 'ispyb_web'@'%';
grant insert, update, delete on ispyb.Laboratory to 'ispyb_web'@'%';
grant insert, update, delete on ispyb.`Project` to 'ispyb_web'@'%';
grant insert, update, delete on ispyb.Project_has_BLSample to 'ispyb_web'@'%';
grant insert, update, delete on ispyb.Project_has_DCGroup to 'ispyb_web'@'%';
grant insert, update, delete on ispyb.Project_has_EnergyScan to 'ispyb_web'@'%';
grant insert, update, delete on ispyb.Project_has_Person to 'ispyb_web'@'%';
grant insert, update, delete on ispyb.Project_has_Protein to 'ispyb_web'@'%';
grant insert, update, delete on ispyb.Project_has_Session to 'ispyb_web'@'%';
grant insert, update, delete on ispyb.Project_has_Shipping to 'ispyb_web'@'%';
grant insert, update, delete on ispyb.Project_has_User to 'ispyb_web'@'%';
grant insert, update, delete on ispyb.Project_has_XFEFSpectrum to 'ispyb_web'@'%';
grant insert, update, delete on ispyb.PHPSession to 'ispyb_web'@'%';

grant insert, update, delete on ispyb.UserGroup_has_Permission to 'ispyb_web'@'%';
grant insert, update, delete on ispyb.Permission to 'ispyb_web'@'%';
grant insert, update, delete on ispyb.UserGroup_has_Person to 'ispyb_web'@'%';
GRANT INSERT, UPDATE, DELETE ON `ispyb`.`UserGroup` TO 'ispyb_web'@'%';

grant insert, update, delete on ispyb.Component_has_SubType to 'ispyb_web'@'%';
grant insert, update, delete on ispyb.BLSampleType_has_Component to 'ispyb_web'@'%';
grant insert, update, delete on ispyb.ComponentSubType to 'ispyb_web'@'%';
grant insert, update, delete on ispyb.ConcentrationType to 'ispyb_web'@'%';
grant insert, update, delete on ispyb.ComponentType to 'ispyb_web'@'%';

grant insert, update, delete on ispyb.AdminActivity to 'ispyb_web'@'%';
grant insert, update, delete on ispyb.AdminVar to 'ispyb_web'@'%';

grant insert, update, delete on ispyb.DewarRegistry to 'ispyb_web'@'%';
grant insert, update, delete on ispyb.DewarReport to 'ispyb_web'@'%';

grant insert, update, delete on ispyb.BF_component to 'ispyb_web'@'%';
grant insert, update, delete on ispyb.BF_component_beamline to 'ispyb_web'@'%';
grant insert, update, delete on ispyb.BF_fault to 'ispyb_web'@'%';
grant insert, update, delete on ispyb.BF_subcomponent to 'ispyb_web'@'%';
grant insert, update, delete on ispyb.BF_subcomponent_beamline to 'ispyb_web'@'%';
grant insert, update, delete on ispyb.BF_system to 'ispyb_web'@'%';
grant insert, update, delete on ispyb.BF_system_beamline to 'ispyb_web'@'%';

grant insert, update, delete on ispyb.DHLTermsAccepted to 'ispyb_web'@'%';
grant insert, update, delete on ispyb.CalendarHash to 'ispyb_web'@'%';

grant insert, update, delete on ispyb.Schedule to 'ispyb_web'@'%';

grant insert, update, delete on ispyb.ScheduleComponent to 'ispyb_web'@'%';

grant insert, update, delete on ispyb.Screen to 'ispyb_web'@'%';
grant insert, update, delete on ispyb.ScreenComponent to 'ispyb_web'@'%';
grant insert, update, delete on ispyb.ScreenComponentGroup to 'ispyb_web'@'%';
grant insert, update, delete on ispyb.ContainerInspection to 'ispyb_web'@'%';

grant insert, update, delete on ispyb.ComponentSubType to 'ispyb_web'@'%';
grant insert, update, delete on ispyb.ComponentType to 'ispyb_web'@'%';      
grant insert, update, delete on ispyb.Component_has_SubType to 'ispyb_web'@'%';
grant insert, update, delete on ispyb.ConcentrationType to 'ispyb_web'@'%';  

grant insert, update, delete on ispyb.BLSampleImageScore to 'ispyb_web'@'%';
grant insert, update, delete on ispyb.BLSampleImage to 'ispyb_web'@'%';

grant select, insert, update on ispyb.Log4Stat to 'ispyb_web'@'%';
grant select, insert, update, delete on ispyb.SW_onceToken to 'ispyb_web'@'%';
