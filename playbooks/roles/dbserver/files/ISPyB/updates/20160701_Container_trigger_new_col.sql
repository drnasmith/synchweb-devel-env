ALTER TABLE Container ADD COLUMN scLocationUpdated datetime NULL DEFAULT NULL;

DROP TRIGGER Container_sc_loc_update;

DELIMITER ///

CREATE DEFINER=`ispyb_root`@`%` TRIGGER Container_sc_loc_update BEFORE UPDATE ON Container
    FOR EACH ROW
    BEGIN
        IF IFNULL(NEW.sampleChangerLocation, -999) <> IFNULL(OLD.sampleChangerLocation, -999) THEN  
            SET NEW.scLocationUpdated = now();
        END IF;
    END;
///

DELIMITER ;
