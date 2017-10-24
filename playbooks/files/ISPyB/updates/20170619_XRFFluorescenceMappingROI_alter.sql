ALTER TABLE XRFFluorescenceMappingROI 
    DROP colour,
    ADD r tinyint unsigned COMMENT 'R colour component', 
    ADD g tinyint unsigned COMMENT 'G colour component', 
    ADD b tinyint unsigned COMMENT 'B colour component'; 
