-- This script assumes the following users have been created:
--
-- ispyb_root@'%'
-- ispyb_web@'%
-- ispyb_gda@'%'
-- ispyb_dbserver@'%'
-- ispyb_scripts@'%'
-- ispyb_api@'%'
-- webadmin@'%'

-- Grants for ispyb_root@'%' :

grant all on ispyb.* to 'ispyb_root'@'%';
grant show databases on *.* to ispyb_root@'%';


-- Grants for ispyb_web@'%' :

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
grant insert, update, delete on ispyb.ContainerHistory to 'ispyb_web'@'%';
grant insert, update, delete on ispyb.ContainerQueue to 'ispyb_web'@'%';
grant insert, update, delete on ispyb.ContainerQueueSample to 'ispyb_web'@'%';
grant insert, update, delete on ispyb.BLSample to 'ispyb_web'@'%';
grant insert, update, delete on ispyb.BLSubSample to 'ispyb_web'@'%';
grant insert, update, delete on ispyb.BLSampleGroup to 'ispyb_web'@'%';
grant insert, update, delete on ispyb.BLSampleGroup_has_BLSample to 'ispyb_web'@'%';
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
GRANT INSERT, UPDATE, DELETE ON ispyb.ComponentLattice TO 'ispyb_web'@'%';

grant insert, update, delete on ispyb.AdminActivity to 'ispyb_web'@'%';
grant insert, update, delete on ispyb.AdminVar to 'ispyb_web'@'%';

grant insert, update, delete on ispyb.DewarRegistry to 'ispyb_web'@'%';
grant insert, update, delete on ispyb.DewarReport to 'ispyb_web'@'%';

grant insert, update, delete on ispyb.ContainerRegistry to 'ispyb_web'@'%';
grant insert, update, delete on ispyb.ContainerRegistry_has_Proposal to 'ispyb_web'@'%';
grant insert, update, delete on ispyb.ContainerReport to 'ispyb_web'@'%';

grant insert, update, delete on ispyb.BF_component to 'ispyb_web'@'%';
grant insert, update, delete on ispyb.BF_component_beamline to 'ispyb_web'@'%';
grant insert, update, delete on ispyb.BF_fault to 'ispyb_web'@'%';
grant insert, update, delete on ispyb.BF_subcomponent to 'ispyb_web'@'%';
grant insert, update, delete on ispyb.BF_subcomponent_beamline to 'ispyb_web'@'%';
grant insert, update, delete on ispyb.BF_system to 'ispyb_web'@'%';
grant insert, update, delete on ispyb.BF_system_beamline to 'ispyb_web'@'%';

grant insert, update, delete on ispyb.CourierTermsAccepted to 'ispyb_web'@'%';
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

grant select, insert, update, delete on ispyb.BLSample_has_DataCollectionPlan to 'ispyb_web'@'%';
grant select, insert, update, delete on ispyb.DataCollectionPlan_has_Detector to 'ispyb_web'@'%';
grant select, insert, update, delete on ispyb.ScanParametersModel to 'ispyb_web'@'%';
grant select, insert, update, delete on ispyb.ScanParametersService to 'ispyb_web'@'%';

grant select, insert, update, delete on ispyb.XRFFluorescenceMappingROI to 'ispyb_web'@'%';
grant select, insert, update, delete on ispyb.XRFFluorescenceMapping to 'ispyb_web'@'%';

grant select, insert, update, delete on ispyb.Reprocessing to 'ispyb_web'@'%';
grant select, insert, update, delete on ispyb.ReprocessingParameter to 'ispyb_web'@'%';
grant select, insert, update, delete on ispyb.ReprocessingImageSweep to 'ispyb_web'@'%';

grant select on ispybconfig.* to ispyb_web@'%';

-- Grants for ispyb_imager@'%' :

grant select on ispyb.Proposal to 'ispyb_imager'@'%';
grant select, update, insert on ispyb.BLSession to 'ispyb_imager'@'%';
grant select on ispyb.Shipping to 'ispyb_imager'@'%';
grant select on ispyb.Dewar to 'ispyb_imager'@'%';
grant update,select on ispyb.`Container` to 'ispyb_imager'@'%'; 
grant select on ispyb.BLSample to 'ispyb_imager'@'%';
grant select on ispyb.LabContact to 'ispyb_imager'@'%';
grant select on ispyb.Person to 'ispyb_imager'@'%';
grant select on ispyb.Laboratory to 'ispyb_imager'@'%';
grant select, insert, update, delete on ispyb.Schedule to 'ispyb_imager'@'%';
grant select, insert, update, delete on ispyb.ScheduleComponent to 'ispyb_imager'@'%';
grant select, insert, update, delete on ispyb.ContainerInspection to 'ispyb_imager'@'%';
grant select, insert, update, delete on ispyb.InspectionType to 'ispyb_imager'@'%';
grant select, insert, update, delete on ispyb.BLSampleImage to 'ispyb_imager'@'%';
grant select on ispyb.Imager to 'ispyb_imager'@'%';
grant select on ispyb.Protein to 'ispyb_imager'@'%';
grant select on ispyb.Crystal to 'ispyb_imager'@'%';

-- Grants for ispyb_gda@'%' :

grant select, insert, update, delete on ispyb.Shipping to 'ispyb_gda'@'%';
grant select, insert, update, delete on ispyb.ShippingHasSession to 'ispyb_gda'@'%';
grant select, insert, update, delete on ispyb.Dewar to 'ispyb_gda'@'%';
grant select, insert, update, delete on ispyb.DewarTransportHistory to 'ispyb_gda'@'%';
grant select, insert, update, delete on ispyb.`Container` to 'ispyb_gda'@'%';
grant select, insert, update, delete on ispyb.BLSample to 'ispyb_gda'@'%';
grant select, insert, update, delete on ispyb.BLSubSample to 'ispyb_gda'@'%';
grant select, insert, update, delete on ispyb.Crystal to 'ispyb_gda'@'%';
grant select, insert, update, delete on ispyb.Crystal_has_UUID to 'ispyb_gda'@'%';
grant select, insert, update, delete on ispyb.Protein to 'ispyb_gda'@'%';
grant select, insert, update, delete on ispyb.Protein_has_PDB to 'ispyb_gda'@'%';
grant select, insert, update, delete on ispyb.PDB to 'ispyb_gda'@'%';
grant select, insert, update, delete on ispyb.DiffractionPlan to 'ispyb_gda'@'%';
grant select, insert, update, delete on ispyb.ExperimentKindDetails to 'ispyb_gda'@'%';
grant select on ispyb.Proposal to 'ispyb_gda'@'%';
grant select on ispyb.BLSession to 'ispyb_gda'@'%';
grant select on ispyb.DataCollection to 'ispyb_gda'@'%';
grant select on ispyb.DataCollectionGroup to 'ispyb_gda'@'%';
grant select on ispyb.AutoProcIntegration to 'ispyb_gda'@'%';
grant select on ispyb.AutoProcProgram to 'ispyb_gda'@'%';
grant select on ispyb.AutoProcProgramAttachment to 'ispyb_gda'@'%';

-- Grants for ispyb_gda@'%' on ispybstage (should be same as on ispyb):

grant select, insert, update, delete on ispybstage.Shipping to 'ispyb_gda'@'%';
grant select, insert, update, delete on ispybstage.ShippingHasSession to 'ispyb_gda'@'%';
grant select, insert, update, delete on ispybstage.Dewar to 'ispyb_gda'@'%';
grant select, insert, update, delete on ispybstage.DewarTransportHistory to 'ispyb_gda'@'%';
grant select, insert, update, delete on ispybstage.`Container` to 'ispyb_gda'@'%';
grant select, insert, update, delete on ispybstage.BLSample to 'ispyb_gda'@'%';
grant select, insert, update, delete on ispybstage.BLSubSample to 'ispyb_gda'@'%';
grant select, insert, update, delete on ispybstage.Crystal to 'ispyb_gda'@'%';
grant select, insert, update, delete on ispybstage.Crystal_has_UUID to 'ispyb_gda'@'%';
grant select, insert, update, delete on ispybstage.Protein to 'ispyb_gda'@'%';
grant select, insert, update, delete on ispybstage.Protein_has_PDB to 'ispyb_gda'@'%';
grant select, insert, update, delete on ispybstage.PDB to 'ispyb_gda'@'%';
grant select, insert, update, delete on ispybstage.DiffractionPlan to 'ispyb_gda'@'%';
grant select, insert, update, delete on ispybstage.ExperimentKindDetails to 'ispyb_gda'@'%';
grant select on ispybstage.Proposal to 'ispyb_gda'@'%';
grant select on ispybstage.BLSession to 'ispyb_gda'@'%';
grant select on ispybstage.DataCollection to 'ispyb_gda'@'%';
grant select on ispybstage.DataCollectionGroup to 'ispyb_gda'@'%';
grant select on ispybstage.AutoProcIntegration to 'ispyb_gda'@'%';
grant select on ispybstage.AutoProcProgram to 'ispyb_gda'@'%';
grant select on ispybstage.AutoProcProgramAttachment to 'ispyb_gda'@'%';

-- Grants for ispyb_gda@'%' on wychwood

grant select, insert, update, delete on wychwood.* to 'ispyb_gda'@'%';

-- Grants for ispyb_dbserver@'%' on ispyb:

grant select on ispyb.Proposal to 'ispyb_dbserver'@'%';
grant select on ispyb.BLSession to 'ispyb_dbserver'@'%';
grant select on ispyb.Person to 'ispyb_dbserver'@'%';
grant select on ispyb.LabContact to 'ispyb_dbserver'@'%';
grant select on ispyb.Laboratory to 'ispyb_dbserver'@'%';
grant select on ispyb.SpaceGroup to 'ispyb_dbserver'@'%';

grant select, insert, update on ispyb.BLSample to 'ispyb_dbserver'@'%';
grant select, insert, update on ispyb.BLSample_has_EnergyScan to 'ispyb_dbserver'@'%';
grant select, insert, update on ispyb.Container to 'ispyb_dbserver'@'%';
grant select, insert, update on ispyb.Dewar to 'ispyb_dbserver'@'%';
grant select, insert, update on ispyb.Shipping to 'ispyb_dbserver'@'%';
grant select, insert on ispyb.ShippingHasSession to 'ispyb_dbserver'@'%';
grant select, insert, update on ispyb.Protein to 'ispyb_dbserver'@'%';
grant select, insert, update on ispyb.Crystal to 'ispyb_dbserver'@'%';

grant select, insert, update on ispyb.DiffractionPlan to 'ispyb_dbserver'@'%';

grant select, insert, update on ispyb.Image to 'ispyb_dbserver'@'%';
grant select, insert, update on ispyb.ImageQualityIndicators to 'ispyb_dbserver'@'%';
grant select, insert, update on ispyb.Detector to 'ispyb_dbserver'@'%';
grant select, insert, update on ispyb.Position to 'ispyb_dbserver'@'%';
grant select, insert, update on ispyb.Aperture to 'ispyb_dbserver'@'%';

grant select, insert, update on ispyb.DataCollection to 'ispyb_dbserver'@'%';
grant select, insert, update on ispyb.DataCollectionGroup to 'ispyb_dbserver'@'%';
grant select, insert, update on ispyb.EnergyScan to 'ispyb_dbserver'@'%';
grant select, insert, update on ispyb.XFEFluorescenceSpectrum to 'ispyb_dbserver'@'%';
grant select, insert, update on ispyb.GridInfo to 'ispyb_dbserver'@'%';

grant select, insert, update on ispyb.AutoProc to 'ispyb_dbserver'@'%';
grant select, insert, update on ispyb.AutoProcIntegration to 'ispyb_dbserver'@'%';
grant select, insert, update on ispyb.AutoProcScaling to 'ispyb_dbserver'@'%';
grant select, insert, update on ispyb.AutoProcScalingStatistics to 'ispyb_dbserver'@'%';
grant select, insert, update on ispyb.AutoProcScaling_has_Int to 'ispyb_dbserver'@'%';
grant select, insert, update on ispyb.AutoProcProgram to 'ispyb_dbserver'@'%';
grant select, insert, update on ispyb.AutoProcProgramAttachment to 'ispyb_dbserver'@'%';
grant select, insert, update on ispyb.AutoProcStatus to 'ispyb_dbserver'@'%';

grant select, insert, update on ispyb.Phasing to 'ispyb_dbserver'@'%';
grant select, insert, update on ispyb.PhasingAnalysis to 'ispyb_dbserver'@'%';
grant select, insert, update on ispyb.Phasing_has_Scaling to 'ispyb_dbserver'@'%';
grant select, insert, update on ispyb.PhasingStatistics to 'ispyb_dbserver'@'%';
grant select, insert, update on ispyb.PhasingProgramRun to 'ispyb_dbserver'@'%';
grant select, insert, update on ispyb.PhasingProgramAttachment to 'ispyb_dbserver'@'%';
grant select, insert, update on ispyb.SubstructureDetermination to 'ispyb_dbserver'@'%';
grant select, insert, update on ispyb.PreparePhasingData to 'ispyb_dbserver'@'%';
grant select, insert, update on ispyb.ModelBuilding to 'ispyb_dbserver'@'%';

grant select, insert, update on ispyb.Screening to 'ispyb_dbserver'@'%';
grant select, insert, update on ispyb.ScreeningStrategy to 'ispyb_dbserver'@'%';
grant select, insert, update on ispyb.ScreeningInput to 'ispyb_dbserver'@'%';
grant select, insert, update on ispyb.ScreeningOutput to 'ispyb_dbserver'@'%';
grant select, insert, update on ispyb.ScreeningOutputLattice to 'ispyb_dbserver'@'%';
grant select, insert, update on ispyb.ScreeningRank to 'ispyb_dbserver'@'%';
grant select, insert, update on ispyb.ScreeningRankSet to 'ispyb_dbserver'@'%';
grant select, insert, update on ispyb.ScreeningStrategyWedge to 'ispyb_dbserver'@'%';
grant select, insert, update on ispyb.ScreeningStrategySubWedge to 'ispyb_dbserver'@'%';


-- Grants for ispyb_dbserver@'%' on ispybstage:

grant select on ispybstage.Proposal to 'ispyb_dbserver'@'%';
grant select on ispybstage.BLSession to 'ispyb_dbserver'@'%';
grant select on ispybstage.Person to 'ispyb_dbserver'@'%';
grant select on ispybstage.LabContact to 'ispyb_dbserver'@'%';
grant select on ispybstage.Laboratory to 'ispyb_dbserver'@'%';
grant select on ispybstage.SpaceGroup to 'ispyb_dbserver'@'%';

grant select, insert, update on ispybstage.BLSample to 'ispyb_dbserver'@'%';
grant select, insert, update on ispybstage.BLSample_has_EnergyScan to 'ispyb_dbserver'@'%';
grant select, insert, update on ispybstage.Container to 'ispyb_dbserver'@'%';
grant select, insert, update on ispybstage.Dewar to 'ispyb_dbserver'@'%';
grant select, insert, update on ispybstage.Shipping to 'ispyb_dbserver'@'%';
grant select, insert on ispybstage.ShippingHasSession to 'ispyb_dbserver'@'%';
grant select, insert, update on ispybstage.Protein to 'ispyb_dbserver'@'%';
grant select, insert, update on ispybstage.Crystal to 'ispyb_dbserver'@'%';

grant select, insert, update on ispybstage.DiffractionPlan to 'ispyb_dbserver'@'%';

grant select, insert, update on ispybstage.Image to 'ispyb_dbserver'@'%';
grant select, insert, update on ispybstage.ImageQualityIndicators to 'ispyb_dbserver'@'%';
grant select, insert, update on ispybstage.Detector to 'ispyb_dbserver'@'%';
grant select, insert, update on ispybstage.Position to 'ispyb_dbserver'@'%';
grant select, insert, update on ispybstage.Aperture to 'ispyb_dbserver'@'%';

grant select, insert, update on ispybstage.DataCollection to 'ispyb_dbserver'@'%';
grant select, insert, update on ispybstage.DataCollectionGroup to 'ispyb_dbserver'@'%';
grant select, insert, update on ispybstage.EnergyScan to 'ispyb_dbserver'@'%';
grant select, insert, update on ispybstage.XFEFluorescenceSpectrum to 'ispyb_dbserver'@'%';
grant select, insert, update on ispybstage.GridInfo to 'ispyb_dbserver'@'%';

grant select, insert, update on ispybstage.AutoProc to 'ispyb_dbserver'@'%';
grant select, insert, update on ispybstage.AutoProcIntegration to 'ispyb_dbserver'@'%';
grant select, insert, update on ispybstage.AutoProcScaling to 'ispyb_dbserver'@'%';
grant select, insert, update on ispybstage.AutoProcScalingStatistics to 'ispyb_dbserver'@'%';
grant select, insert, update on ispybstage.AutoProcScaling_has_Int to 'ispyb_dbserver'@'%';
grant select, insert, update on ispybstage.AutoProcProgram to 'ispyb_dbserver'@'%';
grant select, insert, update on ispybstage.AutoProcProgramAttachment to 'ispyb_dbserver'@'%';
grant select, insert, update on ispybstage.AutoProcStatus to 'ispyb_dbserver'@'%';

grant select, insert, update on ispybstage.Phasing to 'ispyb_dbserver'@'%';
grant select, insert, update on ispybstage.PhasingAnalysis to 'ispyb_dbserver'@'%';
grant select, insert, update on ispybstage.Phasing_has_Scaling to 'ispyb_dbserver'@'%';
grant select, insert, update on ispybstage.PhasingStatistics to 'ispyb_dbserver'@'%';
grant select, insert, update on ispybstage.PhasingProgramRun to 'ispyb_dbserver'@'%';
grant select, insert, update on ispybstage.PhasingProgramAttachment to 'ispyb_dbserver'@'%';
grant select, insert, update on ispybstage.SubstructureDetermination to 'ispyb_dbserver'@'%';
grant select, insert, update on ispybstage.PreparePhasingData to 'ispyb_dbserver'@'%';
grant select, insert, update on ispybstage.ModelBuilding to 'ispyb_dbserver'@'%';

grant select, insert, update on ispybstage.Screening to 'ispyb_dbserver'@'%';
grant select, insert, update on ispybstage.ScreeningStrategy to 'ispyb_dbserver'@'%';
grant select, insert, update on ispybstage.ScreeningInput to 'ispyb_dbserver'@'%';
grant select, insert, update on ispybstage.ScreeningOutput to 'ispyb_dbserver'@'%';
grant select, insert, update on ispybstage.ScreeningOutputLattice to 'ispyb_dbserver'@'%';
grant select, insert, update on ispybstage.ScreeningRank to 'ispyb_dbserver'@'%';
grant select, insert, update on ispybstage.ScreeningRankSet to 'ispyb_dbserver'@'%';
grant select, insert, update on ispybstage.ScreeningStrategyWedge to 'ispyb_dbserver'@'%';
grant select, insert, update on ispybstage.ScreeningStrategySubWedge to 'ispyb_dbserver'@'%';



-- Grants for ispyb_scripts@'%' :

grant select, update on ispyb.DataCollection to 'ispyb_scripts'@'%';
grant select, update on ispyb.DataCollectionGroup to 'ispyb_scripts'@'%';
grant select, update on ispyb.DataCollectionComment to 'ispyb_scripts'@'%';
GRANT SELECT, INSERT ON `ispyb`.`DataCollectionFileAttachment` TO 'ispyb_scripts'@'%';
grant select on ispyb.GridInfo to 'ispyb_scripts'@'%';
grant select, update on ispyb.EnergyScan to 'ispyb_scripts'@'%';
grant select on ispyb.BLSample_has_EnergyScan to 'ispyb_scripts'@'%';
grant select, update on ispyb.XFEFluorescenceSpectrum to 'ispyb_scripts'@'%';
grant select, update on ispyb.Image to 'ispyb_scripts'@'%';
grant select, insert, update on ispyb.ImageQualityIndicators to 'ispyb_scripts'@'%';
grant select on ispyb.Proposal to 'ispyb_scripts'@'%';
grant select on ispyb.BLSession to 'ispyb_scripts'@'%';
grant select on ispyb.Shipping to 'ispyb_scripts'@'%';
grant select on ispyb.ShippingHasSession to 'ispyb_scripts'@'%';
grant select on ispyb.Dewar to 'ispyb_scripts'@'%';
grant select on ispyb.`Container` to 'ispyb_scripts'@'%';
grant select, update on ispyb.ContainerQueue to 'ispyb_scripts'@'%';
grant select on ispyb.BLSample to 'ispyb_scripts'@'%';
grant select on ispyb.BLSubSample to 'ispyb_scripts'@'%';
grant select on ispyb.Crystal to 'ispyb_scripts'@'%';
grant select on ispyb.Crystal_has_UUID to 'ispyb_scripts'@'%';
grant select on ispyb.Protein to 'ispyb_scripts'@'%';
grant select, insert, update on ispyb.Protein_has_PDB to 'ispyb_scripts'@'%';
grant select, insert, update on ispyb.PDB to 'ispyb_scripts'@'%';
grant select on ispyb.Person to 'ispyb_scripts'@'%';
grant select on ispyb.Session_has_Person to 'ispyb_scripts'@'%';
grant select on ispyb.Laboratory to 'ispyb_scripts'@'%';
GRANT SELECT ON `ispyb`.`AutoProc` TO 'ispyb_scripts'@'%';
grant select, insert on ispyb.AutoProcProgram to 'ispyb_scripts'@'%';
grant select on ispyb.AutoProcIntegration to 'ispyb_scripts'@'%';
grant select on ispyb.AutoProcScaling_has_Int to 'ispyb_scripts'@'%';
grant select on ispyb.AutoProcScaling to 'ispyb_scripts'@'%';
grant select on ispyb.AutoProcScalingStatistics to 'ispyb_scripts'@'%';
grant select on ispyb.Phasing_has_Scaling to 'ispyb_scripts'@'%';
grant select on ispyb.AutoProcProgramAttachment to 'ispyb_scripts'@'%';
grant select, update, insert on ispyb.Screening to 'ispyb_scripts'@'%';
grant select, update, insert on ispyb.ScreeningInput to 'ispyb_scripts'@'%';
grant select, update, insert on ispyb.ScreeningOutput to 'ispyb_scripts'@'%';
grant select, update, insert on ispyb.ScreeningOutputLattice to 'ispyb_scripts'@'%';
grant select, update, insert on ispyb.ScreeningRank to 'ispyb_scripts'@'%';
grant select, update, insert on ispyb.ScreeningRankSet to 'ispyb_scripts'@'%';
grant select, update, insert on ispyb.ScreeningStrategy to 'ispyb_scripts'@'%';
grant select, update, insert on ispyb.ScreeningStrategySubWedge to 'ispyb_scripts'@'%';
grant select, update, insert on ispyb.ScreeningStrategyWedge to 'ispyb_scripts'@'%';
grant select, update, insert on ispyb.RobotAction to 'ispyb_scripts'@'%';
GRANT SELECT ON `ispyb`.`LabContact` TO 'ispyb_scripts'@'%';

grant select, insert, update, delete on ispyb.Reprocessing to 'ispyb_scripts'@'%';
grant select on ispyb.ReprocessingParameter to 'ispyb_scripts'@'%';
grant select on ispyb.ReprocessingImageSweep to 'ispyb_scripts'@'%';


GRANT EXECUTE ON PROCEDURE `ispyb`.`update_session_paths` TO 'ispyb_scripts'@'%';

-- Grants for webadmin
grant select,insert,update,delete on ispyb.* to 'webadmin'@'%';
grant process on *.* to 'webadmin'@'%';
GRANT USAGE ON mysql.* TO 'webadmin'@'%';
GRANT SELECT (
    Host, User, Select_priv, Insert_priv, Update_priv, Delete_priv,
    Create_priv, Drop_priv, Reload_priv, Shutdown_priv, Process_priv,
    File_priv, Grant_priv, References_priv, Index_priv, Alter_priv,
    Show_db_priv, Super_priv, Create_tmp_table_priv, Lock_tables_priv,
    Execute_priv, Repl_slave_priv, Repl_client_priv
    ) ON mysql.user TO 'webadmin'@'%';
GRANT SELECT ON mysql.db TO 'webadmin'@'%';
GRANT SELECT ON mysql.host TO 'webadmin'@'%';
GRANT SELECT (Host, Db, User, Table_name, Table_priv, Column_priv)
    ON mysql.tables_priv TO 'webadmin'@'%';
grant select on mysql.slow_log to 'webadmin'@'%';
grant show view on ispyb.v_run to 'webadmin'@'%';
grant show databases on *.* to webadmin@'%';

-- Grants for ispyb_ro
grant select on ispyb.* to 'ispyb_ro'@'%';

-- Grants for ispyb_root
GRANT USAGE ON *.* TO 'ispyb_root'@'%';
GRANT ALL PRIVILEGES ON ispyb.* TO 'ispyb_root'@'%';
grant select on mysql.slow_log to 'ispyb_root'@'%';
grant all on ispybconfig.* to ispyb_root@'%';

-- Grants for ispyb_api
grant execute on function ispyb.retrieve_visit_id to 'ispyb_api'@'%';
grant execute on function ispyb.retrieve_datacollection_id to 'ispyb_api'@'%';
grant execute on function ispyb.upsert_sample to 'ispyb_api'@'%';
grant execute on function ispyb.upsert_dcgroup to 'ispyb_api'@'%';
grant execute on function ispyb.upsert_dc to 'ispyb_api'@'%';
grant execute on function ispyb.upsert_image to 'ispyb_api'@'%';
grant execute on function ispyb.upsert_program_run to 'ispyb_api'@'%';
grant execute on function ispyb.upsert_processing to 'ispyb_api'@'%';
grant execute on function ispyb.upsert_integration to 'ispyb_api'@'%';
grant execute on function ispyb.insert_scaling to 'ispyb_api'@'%';
grant execute on function ispyb.upsert_mrrun to 'ispyb_api'@'%';
grant execute on function ispyb.upsert_mrrun_blob to 'ispyb_api'@'%';
grant execute on procedure ispyb.retrieve_current_sessions to 'ispyb_api'@'%';
grant execute on procedure ispyb.retrieve_current_cm_sessions to 'ispyb_api'@'%';
grant execute on procedure ispyb.retrieve_active_plates to 'ispyb_api'@'%';
grant execute on procedure ispyb.retrieve_current_sessions_for_person to 'ispyb_api'@'%';
GRANT EXECUTE ON PROCEDURE `ispyb`.`retrieve_persons_for_proposal` TO 'ispyb_api'@'%';
grant execute on procedure ispyb.retrieve_most_recent_session to 'ispyb_api'@'%';
grant execute on function ispyb.retrieve_proposal_title to 'ispyb_api'@'%';
grant execute on procedure ispyb.retrieve_containers_submitted_non_ls to 'ispyb_api'@'%';

GRANT EXECUTE ON PROCEDURE `ispyb`.`insert_screening` TO 'ispyb_api'@'%';
GRANT EXECUTE ON PROCEDURE ispyb.insert_screening_input TO ispyb_api@'%';
GRANT EXECUTE ON PROCEDURE `ispyb`.`insert_screening_output` TO 'ispyb_api'@'%';
GRANT EXECUTE ON PROCEDURE `ispyb`.`insert_screening_output_lattice` TO 'ispyb_api'@'%';
GRANT EXECUTE ON PROCEDURE `ispyb`.`insert_screening_strategy` TO 'ispyb_api'@'%';
GRANT EXECUTE ON PROCEDURE `ispyb`.`insert_screening_strategy_wedge` TO 'ispyb_api'@'%';
GRANT EXECUTE ON PROCEDURE `ispyb`.`insert_screening_strategy_sub_wedge` TO 'ispyb_api'@'%';
GRANT EXECUTE ON PROCEDURE `ispyb`.`update_container_assign` TO 'ispyb_api'@'%';

GRANT EXECUTE ON PROCEDURE `ispyb`.`retrieve_reprocessing_by_dc` TO 'ispyb_api'@'%';
GRANT EXECUTE ON PROCEDURE `ispyb`.`update_reprocessing_status` TO 'ispyb_api'@'%';

GRANT EXECUTE ON PROCEDURE `ispyb`.`upsert_processing_program` to 'ispyb_api'@'%';
GRANT EXECUTE ON PROCEDURE `ispyb`.`upsert_processing_program_attachment` to 'ispyb_api'@'%';
GRANT EXECUTE ON PROCEDURE `ispyb`.`upsert_processing` to 'ispyb_api'@'%';
GRANT EXECUTE ON PROCEDURE `ispyb`.`insert_processing_scaling` to 'ispyb_api'@'%';
GRANT EXECUTE ON PROCEDURE `ispyb`.`upsert_processing_integration` to 'ispyb_api'@'%';

GRANT EXECUTE ON PROCEDURE `ispyb`.`insert_quality_indicators` TO 'ispyb_api'@'%';
GRANT EXECUTE ON PROCEDURE ispyb.upsert_mrrun to 'ispyb_api'@'%';
GRANT EXECUTE ON PROCEDURE ispyb.upsert_mrrun_blob to 'ispyb_api'@'%';


-- Grants for ispyb_gda_core
grant execute on procedure ispyb.upsert_dc_group to 'ispyb_gda_core'@'%';
grant execute on procedure ispyb.upsert_dc_main to 'ispyb_gda_core'@'%';
grant execute on procedure ispyb.update_dc_experiment to 'ispyb_gda_core'@'%';
grant execute on procedure ispyb.update_dc_machine to 'ispyb_gda_core'@'%';
grant execute on procedure ispyb.upsert_dcg_grid to 'ispyb_gda_core'@'%';
grant execute on procedure ispyb.insert_beamline_action to 'ispyb_gda_core'@'%';

-- Grants for ispyb_gda_client
grant execute on procedure ispyb.retrieve_current_sessions_for_person to 'ispyb_gda_client'@'%';
grant execute on procedure ispyb.retrieve_current_sessions to 'ispyb_gda_client'@'%';
grant execute on procedure ispyb.retrieve_most_recent_session to 'ispyb_gda_client'@'%';
grant execute on function ispyb.retrieve_proposal_title to 'ispyb_gda_client'@'%';
GRANT EXECUTE ON PROCEDURE `ispyb`.`retrieve_lcs_for_session` TO 'ispyb_gda_client'@'%';

-- Grants for ispyb_gda_vmxi
grant execute on procedure ispyb.retrieve_test to 'ispyb_gda_vmxi'@'%';
grant execute on procedure ispyb.retrieve_container_ls_position to 'ispyb_gda_vmxi'@'%';
grant execute on procedure ispyb.retrieve_container_info to 'ispyb_gda_vmxi'@'%';
grant execute on procedure ispyb.retrieve_container_on_gonio to 'ispyb_gda_vmxi'@'%';
grant execute on procedure ispyb.update_container_ls_position to 'ispyb_gda_vmxi'@'%';
grant execute on procedure ispyb.update_container_status to 'ispyb_gda_vmxi'@'%';
grant execute on procedure ispyb.retrieve_containers_on_beamline_with_status to 'ispyb_gda_vmxi'@'%';
grant execute on procedure ispyb.finish_container to 'ispyb_gda_vmxi'@'%';
grant execute on procedure ispyb.retrieve_container_ls_queue to 'ispyb_gda_vmxi'@'%';
grant execute on procedure ispyb.retrieve_container_queue_timestamp to 'ispyb_gda_vmxi'@'%';
grant execute on procedure ispyb.retrieve_container_queue_most_recent_completed_timestamp to 'ispyb_gda_vmxi'@'%';
grant execute on procedure ispyb.retrieve_container_subsamples to 'ispyb_gda_vmxi'@'%';
grant execute on procedure ispyb.insert_container_error to 'ispyb_gda_vmxi'@'%';
grant execute on procedure ispyb.clear_container_error to 'ispyb_gda_vmxi'@'%';

grant execute on procedure ispyb.retrieve_session_id to 'ispyb_gda_vmxi'@'%';
grant execute on procedure ispyb.retrieve_dc_infos_for_subsample to 'ispyb_gda_vmxi'@'%';
grant execute on procedure ispyb.upsert_dc_group to 'ispyb_gda_vmxi'@'%';
grant execute on procedure ispyb.upsert_dc_main to 'ispyb_gda_vmxi'@'%';
grant execute on procedure ispyb.update_dc_experiment to 'ispyb_gda_vmxi'@'%';
grant execute on procedure ispyb.update_dc_machine to 'ispyb_gda_vmxi'@'%';
grant execute on procedure ispyb.upsert_sample_image_analysis to 'ispyb_gda_vmxi'@'%';
grant execute on procedure ispyb.upsert_dcg_grid to 'ispyb_gda_vmxi'@'%';
grant execute on procedure ispyb.update_dc_position to 'ispyb_gda_vmxi'@'%';

GRANT EXECUTE ON PROCEDURE `ispyb`.`update_dc_experiment_v2` TO 'ispyb_gda_vmxi'@'%';

GRANT EXECUTE ON PROCEDURE `ispyb`.`upsert_dc_main_v2` to 'ispyb_gda_vmxi'@'%';

-- Grants for ispyb_i04_1
grant select on ispyb.v_RecentlyActiveContainers to ispyb_i04_1@'%';

-- Grants for ispyb_gda_xpdf
GRANT EXECUTE ON PROCEDURE `ispyb`.`retrieve_dc_plans_for_sample` TO 'ispyb_gda_xpdf'@'%';
GRANT EXECUTE ON PROCEDURE `ispyb`.`retrieve_samples_assigned_for_proposal` TO 'ispyb_gda_xpdf'@'%';
GRANT EXECUTE ON PROCEDURE `ispyb`.`retrieve_components_for_sample_type` TO 'ispyb_gda_xpdf'@'%';
GRANT EXECUTE ON PROCEDURE `ispyb`.`insert_beamline_action` TO 'ispyb_gda_xpdf'@'%';
GRANT EXECUTE ON PROCEDURE `ispyb`.`retrieve_sample_groups_for_sample` TO 'ispyb_gda_xpdf'@'%';
GRANT EXECUTE ON PROCEDURE `ispyb`.`retrieve_component_lattices_for_component` TO 'ispyb_gda_xpdf'@'%';
GRANT EXECUTE ON PROCEDURE `ispyb`.`retrieve_detector` TO 'ispyb_gda_xpdf'@'%';
