alter table DiffractionPlan drop FOREIGN KEY DataCollectionPlan_ibfk2;
alter table DiffractionPlan drop dataCollectionPlanGroupId;
drop table DataCollectionPlanGroup;
