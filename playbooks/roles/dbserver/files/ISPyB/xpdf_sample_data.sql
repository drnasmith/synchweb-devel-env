SET @boatyid = (SELECT personId FROM Person WHERE Person.login = 'boaty');
SET @xpdftitle = 'XPDF Commissioning Directory 2017';
INSERT INTO Proposal (proposalCode,proposalNumber,title,personId) VALUES ('cm',31415,@xpdftitle,@boatyid);
SET @newpropid = (SELECT proposalId FROM Proposal WHERE Proposal.title = @xpdftitle);
INSERT INTO Shipping (proposalId,shippingName,shippingStatus,blTimeStamp,creationDate) VALUES (@newpropid,"cm31415-1_Shipment","processing",NOW(),NOW());
SET @shipid = (SELECT shippingId FROM Shipping WHERE Shipping.proposalId = @newpropid);
INSERT INTO BLSession (proposalId,startDate,endDate,beamLineName,visit_number) VALUES (@newpropid,20170101000000,20171231235959,'i15-1',1);
SET @sessid = (SELECT sessionId FROM BLSession WHERE BLSession.proposalId = @newpropid);
INSERT INTO Session_has_Person (sessionId, personId) VALUES (@sessid, @boatyid);


INSERT INTO Dewar (shippingId,code,dewarStatus,bltimeStamp) VALUES (@shipid,"cm31415-1_Box1","processing",NOW());
-- SET @dewarid = (SELECT dewarId FROM Dewar WHERE Dewar.shippingId = @shipid);
SET @dewarid = (SELECT LAST_INSERT_ID());

-- Default Container
INSERT INTO Container (dewarId,code,containerType,capacity,blTimeStamp,containerStatus) VALUES (@dewarId, "31415_default", "default", 0, NOW(), "processing");
SET @defcontid = (SELECT LAST_INSERT_ID());

-- Proteins, Crystals for XPDF containers
INSERT INTO Protein (proposalId,name,molecularMass,bltimeStamp,sequence,density) VALUES (@newpropid, "fused quartz", 60.08, NOW(), "SiO2", 2.20);
SET @sioid = (SELECT LAST_INSERT_ID());
INSERT INTO Protein (proposalId,name,molecularMass,bltimeStamp,sequence,density) VALUES (@newpropid, "diamond", 12.0, NOW(), "C", 3.53);
SET @diaid = (SELECT LAST_INSERT_ID());

INSERT INTO Crystal (name, proteinId, recordTimestamp,abundance,theoreticalDensity) VALUES ("0p3mm_capillary", @sioid, NOW(), 1.0, 2.20);
SET @capxid = (SELECT LAST_INSERT_ID());
INSERT INTO Crystal (name, proteinId, recordTimestamp, abundance, theoreticalDensity) VALUES ("Diamond__anvil", @diaid, NOW(), 1.0, 3.53);
SET @daxid = (SELECT LAST_INSERT_ID());
INSERT INTO Crystal (name, proteinId, recordTimestamp,abundance,theoreticalDensity) VALUES ("Furnace", @sioid, NOW(), 1.0, 2.25);
SET @fnxid = (SELECT LAST_INSERT_ID());

-- Canonical instances of container
INSERT INTO BLSample (crystalId,containerId,name,location,comments,POSITIONID,recordTimeStamp, dimension1, dimension2, dimension3, shape, packingFraction) VALUES (@capxid, @defcontid, "0p3mm_capillary", 0, "Canonical instance", 0, NOW(), 0.14, 0.15, 20, "cylinder", 1.0);
SET @capcansid = (SELECT LAST_INSERT_ID());
INSERT INTO BLSample (crystalId,containerId,name,location,comments,POSITIONID,recordTimeStamp, dimension1, dimension2, dimension3, shape, packingFraction) VALUES (@daxid, @defcontid, "Diamond__Anvil__Cell", 0, "Canonical instance", 0, NOW(), 2.5, 5.0, 5.0, "plate", 1.0);
SET @daccansid = (SELECT LAST_INSERT_ID());
INSERT INTO BLSample (crystalId,containerId,name,location,comments,POSITIONID,recordTimeStamp, dimension1, dimension2, dimension3, shape, packingFraction) VALUES (@fnxid, @defcontid, "Furnace", 0, "Canonical instance", 0, NOW(), 0.5, 20, 20, "plate", 1.0);
SET @fnxcansid = (SELECT LAST_INSERT_ID());

-- Example sample changer
INSERT INTO Container (dewarId,code,containerType,capacity,bltimeStamp) VALUES (@dewarid,"DCPlanChanger","XpdfSampleChanger7",7,NOW());
SET @containerid = (SELECT LAST_INSERT_ID());

--Proteins, Crystals for sample data
INSERT INTO Protein (proposalId,name,molecularMass,bltimeStamp,sequence,density) VALUES (@newpropid,"calcium nitrate",164.1,NOW(),"Ca(NO3)2",2.504);
SET @caniid = (SELECT LAST_INSERT_ID());
INSERT INTO Protein (proposalId,name,molecularMass,bltimeStamp,sequence,density) VALUES (@newpropid,"terbium",158.93,NOW(),"Tb",8.23);
SET @tbid = (SELECT LAST_INSERT_ID());
INSERT INTO Protein (proposalId,name,molecularMass,bltimeStamp,sequence,density) VALUES (@newpropid,"praseodymium",140.91,NOW(),"Pr",6.77);
SET @prid = (SELECT LAST_INSERT_ID());
INSERT INTO Protein (proposalId,name,molecularMass,bltimeStamp,sequence,density) VALUES (@newpropid,"neodymium",144.24,NOW(),"Nd",7.01);
SET @ndid = (SELECT LAST_INSERT_ID());

INSERT INTO Crystal (name, proteinId,recordTimeStamp,abundance,theoreticalDensity) VALUES ("Norwegian__saltpeter", @caniid,NOW(),1,2.504);
SET @canixid = (SELECT LAST_INSERT_ID());
INSERT INTO Crystal (name, proteinId,recordTimeStamp,abundance,theoreticalDensity) VALUES ("Powdered__terbium", @tbid,NOW(),1,8.23);
SET @tbxid = (SELECT LAST_INSERT_ID());
INSERT INTO Crystal (name, proteinId,recordTimeStamp,abundance,theoreticalDensity) VALUES ("Powdered__praseodymium", @prid,NOW(),1,6.89);
SET @prxid = (SELECT LAST_INSERT_ID());
INSERT INTO Crystal (name, proteinId,recordTimeStamp,abundance,theoreticalDensity) VALUES ("Powdered__neodymium", @ndid,NOW(),1,7.0);
SET @ndxid = (SELECT LAST_INSERT_ID());
INSERT INTO Crystal (name, proteinId,recordTimeStamp,abundance,theoreticalDensity) VALUES ("Mixed__didymium", @prid,NOW(),0.5,6.889);
SET @dymxid = (SELECT LAST_INSERT_ID());
INSERT INTO BLSampleType_has_Component (blSampleTypeId,componentId,abundance) VALUES (@dymxid,@ndid,0.5);

-- Instances
-- Norwegian saltpeter in a capillary in a furnace
INSERT INTO BLSample (crystalId,containerId,name,location,comments,POSITIONID,recordTimeStamp,packingFraction) VALUES (@canixid,@defcontid,"Norwegian__saltpeter",0,"Norgessalpeter in a capillary",0,NOW(),0.75);
SET @nosasid = (SELECT LAST_INSERT_ID());
INSERT INTO BLSample (crystalId, containerId, name, location, comments, POSITIONID, recordTimeStamp, dimension1, dimension2, dimension3, shape, packingFraction) SELECT crystalId, @defcontid, name, 0, "", 0, NOW(), dimension1, dimension2, dimension3, shape, packingFraction FROM BLSample WHERE BLSampleId = @capcansid;
SET @nosacapid = (SELECT LAST_INSERT_ID());
INSERT INTO BLSample (crystalId, containerId, name, location, comments, POSITIONID, recordTimeStamp, dimension1, dimension2, dimension3, shape, packingFraction) SELECT crystalId, @defcontid, name, 0, "", 0, NOW(), dimension1, dimension2, dimension3, shape, packingFraction FROM BLSample WHERE BLSampleId = @fnxcansid;
SET @nosafnxid = (SELECT LAST_INSERT_ID());

INSERT INTO BLSampleGroup () VALUES ();
SET @nosagrpid = (SELECT LAST_INSERT_ID());
INSERT INTO BLSampleGroup_has_BLSample (blsamplegroupid, blsampleid, grouporder, `type`) VALUES (@nosagrpid, @nosasid, 0, "sample");
INSERT INTO BLSampleGroup_has_BLSample (blsamplegroupid, blsampleid, grouporder, `type`) VALUES (@nosagrpid, @nosacapid, 1, "container");
INSERT INTO BLSampleGroup_has_BLSample (blsamplegroupid, blsampleid, grouporder, `type`) VALUES (@nosagrpid, @nosafnxid, 2, "container");

-- Terbium in a capillary
INSERT INTO BLSample (crystalId,containerId,name,location,comments,POSITIONID,recordTimeStamp,packingFraction) VALUES (@tbxid,@containerid,"Powdered__terbium",1,"Terbium in a capillary",1,NOW(),0.85);
SET @tbsid = (SELECT LAST_INSERT_ID());
INSERT INTO BLSample (crystalId, containerId, name, location, comments, POSITIONID, recordTimeStamp, dimension1, dimension2, dimension3, shape, packingFraction) SELECT crystalId, @containerid, name, 1, "", 1, NOW(), dimension1, dimension2, dimension3, shape, packingFraction FROM BLSample WHERE BLSampleId = @capcansid;
SET @tbcapid = (SELECT LAST_INSERT_ID());

INSERT INTO BLSampleGroup () VALUES ();
SET @tbgrpid = (SELECT LAST_INSERT_ID());
INSERT INTO BLSampleGroup_has_BLSample (blsamplegroupid, blsampleid, grouporder, `type`) VALUES (@tbgrpid, @tbsid, 0, "sample");
INSERT INTO BLSampleGroup_has_BLSample (blsamplegroupid, blsampleid, grouporder, `type`) VALUES (@tbgrpid, @tbcapid, 1, "container");

-- Didymium in a capillary
INSERT INTO BLSample (crystalId,containerId,name,location,comments,POSITIONID,recordTimeStamp,packingFraction) VALUES (@dymxid,@containerid,"Mixed_didymium",2,"Neodymium and praseodymium in a capillary",2,NOW(),0.79);
SET @dymsid = (SELECT LAST_INSERT_ID());
INSERT INTO BLSample (crystalId, containerId, name, location, comments, POSITIONID, recordTimeStamp, dimension1, dimension2, dimension3, shape, packingFraction) SELECT crystalId, @containerid, name, 2, "", 2, NOW(), dimension1, dimension2, dimension3, shape, packingFraction FROM BLSample WHERE BLSampleId = @capcansid;
SET @dymcapid = (SELECT LAST_INSERT_ID());

INSERT INTO BLSampleGroup () VALUES ();
SET @dymgrpid = (SELECT LAST_INSERT_ID());
INSERT INTO BLSampleGroup_has_BLSample (blsamplegroupid, blsampleid, grouporder, `type`) VALUES (@dymgrpid, @dymsid, 0, "sample");
INSERT INTO BLSampleGroup_has_BLSample (blsamplegroupid, blsampleid, grouporder, `type`) VALUES (@dymgrpid, @dymcapid, 1, "container");

-- Didymium in a diamond anvil cell
INSERT INTO BLSample (crystalId,containerId,name,location,comments,POSITIONID,recordTimeStamp,packingFraction) VALUES (@dymxid,@defcontid,"Mixed_didymium",0,"Neodymium and praseodymium DAC",0,NOW(),0.79);
SET @dymsid = (SELECT LAST_INSERT_ID());
INSERT INTO BLSample (crystalId, containerId, name, location, comments, POSITIONID, recordTimeStamp, dimension1, dimension2, dimension3, shape, packingFraction) SELECT crystalId, @defcontid, name, 0, "", 0, NOW(), dimension1, dimension2, dimension3, shape, packingFraction FROM BLSample WHERE BLSampleId = @daccansid;
SET @dacsid = (SELECT LAST_INSERT_ID());

INSERT INTO BLSampleGroup () VALUES ();
SET @dacgrpid = (SELECT LAST_INSERT_ID());
INSERT INTO BLSampleGroup_has_BLSample (blsamplegroupid, blsampleid, grouporder, `type`) VALUES (@dacgrpid, @dymsid, 0, "sample");
INSERT INTO BLSampleGroup_has_BLSample (blsamplegroupid, blsampleid, grouporder, `type`) VALUES (@dacgrpid, @dacsid, 1, "container");

-- Praseodymium in a capillary
INSERT INTO BLSample (crystalId,containerId,name,location,comments,POSITIONID,recordTimeStamp,packingFraction) VALUES (@dymxid,@containerid,"Praseo",3,"Praseodymium in a capillary",3,NOW(),0.74);
SET @prsid = (SELECT LAST_INSERT_ID());
INSERT INTO BLSample (crystalId, containerId, name, location, comments, POSITIONID, recordTimeStamp, dimension1, dimension2, dimension3, shape, packingFraction) SELECT crystalId, @containerid, name, 3, "", 3, NOW(), dimension1, dimension2, dimension3, shape, packingFraction FROM BLSample WHERE BLSampleId = @capcansid;
SET @prcapid = (SELECT LAST_INSERT_ID());

INSERT INTO BLSampleGroup () VALUES ();
SET @prgrpid = (SELECT LAST_INSERT_ID());
INSERT INTO BLSampleGroup_has_BLSample (blsamplegroupid, blsampleid, grouporder, `type`) VALUES (@prgrpid, @prsid, 0, "sample");
INSERT INTO BLSampleGroup_has_BLSample (blsamplegroupid, blsampleid, grouporder, `type`) VALUES (@prgrpid, @prcapid, 1, "container");

-- Neodymium in a capillary
INSERT INTO BLSample (crystalId,containerId,name,location,comments,POSITIONID,recordTimeStamp,packingFraction) VALUES (@ndxid,@containerid,"Neo",4,"Neodymium in a capillary",4,NOW(),0.81);
SET @ndsid = (SELECT LAST_INSERT_ID());
INSERT INTO BLSample (crystalId, containerId, name, location, comments, POSITIONID, recordTimeStamp, dimension1, dimension2, dimension3, shape, packingFraction) SELECT crystalId, @containerid, name, 4, "", 4, NOW(), dimension1, dimension2, dimension3, shape, packingFraction FROM BLSample WHERE BLSampleId = @capcansid;
SET @ndcapid = (SELECT LAST_INSERT_ID());

INSERT INTO BLSampleGroup () VALUES ();
SET @ndgrpid = (SELECT LAST_INSERT_ID());
INSERT INTO BLSampleGroup_has_BLSample (blsamplegroupid, blsampleid, grouporder, `type`) VALUES (@ndgrpid, @ndsid, 0, "sample");
INSERT INTO BLSampleGroup_has_BLSample (blsamplegroupid, blsampleid, grouporder, `type`) VALUES (@ndgrpid, @ndcapid, 1, "container");

-- Add missed columns
ALTER TABLE DiffractionPlan ADD COLUMN energy FLOAT COMMENT "eV";

-- PDF detector
INSERT INTO Detector (detectorType,detectorManufacturer,detectorModel,detectorPixelSizeHorizontal,detectorPixelSizeVertical,detectorDistanceMin,detectorDistanceMax,density,composition) VALUES ("PDF","Perkin-Elmer","3K",0.2,0.2,300,1000,4.28,"CsI");
SET @pdfdetid = (SELECT LAST_INSERT_ID());
-- Bragg detector
INSERT INTO Detector (detectorType,detectorManufacturer,detectorModel,detectorPixelSizeHorizontal,detectorPixelSizeVertical,detectorDistanceMin,detectorDistanceMax,density,composition) VALUES ("Bragg","Perkin-Elmer","4K",0.2,0.2,1000,3000,4.28,"CsI");
SET @braggdetid = (SELECT LAST_INSERT_ID());

-- Cryostream service
INSERT INTO ScanParametersService (name,description) VALUES ("Cryostream","Cold air between 77 K and RT-20 K");
SET @cryoserviceid = (SELECT LAST_INSERT_ID());
-- Diamond Anvil Cell service
INSERT INTO ScanParametersService (name,description) VALUES ("Diamond Anvil Cell","High pressure environment");
SET @dacserviceid = (SELECT LAST_INSERT_ID());
-- Furnace service
INSERT INTO ScanParametersService (name, description) VALUES ("Furnace", "Up to 650 K");
SET @fnxserviceid = (SELECT LAST_INSERT_ID());


-- Plan 1, furnace
INSERT INTO DiffractionPlan (comments,experimentKind,preferredBeamSizeX,preferredBeamSizeY,requiredResolution,energy,monoBandwidth) VALUES ("Plan 1","PDF",70,70,1,76600,0.1);
SET @planoneid = (SELECT LAST_INSERT_ID());
INSERT INTO ScanParametersModel (scanParametersServiceId,dataCollectionPlanId,sequenceNumber,start,stop,step) VALUES (@fnxserviceid,@planoneid,1,350,500,10);
-- Plan 2, cryojet
INSERT INTO DiffractionPlan (comments,experimentKind,preferredBeamSizeX,preferredBeamSizeY,requiredResolution,energy,monoBandwidth) VALUES ("Plan 2","PDF",70,70,1,76600,0.1);
SET @plantwoid = (SELECT LAST_INSERT_ID());
INSERT INTO ScanParametersModel (scanParametersServiceId,dataCollectionPlanId,sequenceNumber,start,stop,step) VALUES (@cryoserviceid,@plantwoid,1,50,200,10);
-- Plan 3, DAC and cryojet
INSERT INTO DiffractionPlan (comments,experimentKind,preferredBeamSizeX,preferredBeamSizeY,requiredResolution,energy,monoBandwidth) VALUES ("Plan 3","PDF",70,70,1,76600,0.1);
SET @planthreeid = (SELECT LAST_INSERT_ID());
INSERT INTO ScanParametersModel (scanParametersServiceId,dataCollectionPlanId,sequenceNumber,start,stop,step) VALUES (@dacserviceid,@planthreeid,2,2,20,2);
INSERT INTO ScanParametersModel (scanParametersServiceId,dataCollectionPlanId,sequenceNumber,array) VALUES (@cryoserviceid,@planthreeid,1,"100 150 175 190 200");
-- Plan 4, no scan, two detectors
INSERT INTO DiffractionPlan (comments,experimentKind,preferredBeamSizeX,preferredBeamSizeY,requiredResolution,energy,monoBandwidth) VALUES ("Plan 4","PDF",70,70,1,66000,0.1);
SET @planfourid = (SELECT LAST_INSERT_ID());

-- Detectors on each plan
INSERT INTO DataCollectionPlan_has_Detector (dataCollectionPlanHasDetectorId,dataCollectionPlanId,detectorId,exposureTime,distance,roll) VALUES (1,@planoneid,@pdfdetid,60,800,0);
INSERT INTO DataCollectionPlan_has_Detector (dataCollectionPlanHasDetectorId,dataCollectionPlanId,detectorId,exposureTime,distance,roll) VALUES (2,@plantwoid,@pdfdetid,60,800,0);
INSERT INTO DataCollectionPlan_has_Detector (dataCollectionPlanHasDetectorId,dataCollectionPlanId,detectorId,exposureTime,distance,roll) VALUES (3,@planthreeid,@pdfdetid,60,800,45);
INSERT INTO DataCollectionPlan_has_Detector (dataCollectionPlanHasDetectorId,dataCollectionPlanId,detectorId,exposureTime,distance,roll) VALUES (4,@planfourid,@pdfdetid,60,800,45);
INSERT INTO DataCollectionPlan_has_Detector (dataCollectionPlanHasDetectorId,dataCollectionPlanId,detectorId,exposureTime,distance,roll) VALUES (5,@planfourid,@braggdetid,60,2400,45);

-- Plans on samples
INSERT INTO BLSample_has_DataCollectionPlan (blSampleId,dataCollectionPlanId, planorder) VALUES (@nosasid,@planoneid, 1);
INSERT INTO BLSample_has_DataCollectionPlan (blSampleId,dataCollectionPlanId, planorder) VALUES (@tbsid,@plantwoid, 1);
INSERT INTO BLSample_has_DataCollectionPlan (blSampleId,dataCollectionPlanId, planorder) VALUES (@prsid,@plantwoid, 2);
INSERT INTO BLSample_has_DataCollectionPlan (blSampleId,dataCollectionPlanId, planorder) VALUES (@ndsid,@plantwoid, 3);
INSERT INTO BLSample_has_DataCollectionPlan (blSampleId,dataCollectionPlanId, planorder) VALUES (@dymsid,@plantwoid, 1);
INSERT INTO BLSample_has_DataCollectionPlan (blSampleId,dataCollectionPlanId, planorder) VALUES (@dymsid,@planthreeid, 1);
INSERT INTO BLSample_has_DataCollectionPlan (blSampleId,dataCollectionPlanId, planorder) VALUES (@tbsid,@planfourid, 4);
