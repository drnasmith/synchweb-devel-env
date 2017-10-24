DROP TRIGGER IF EXISTS Container_before_insert;

DELIMITER ;;
CREATE TRIGGER Container_before_insert BEFORE INSERT ON Container FOR EACH ROW 
BEGIN
IF ((NEW.imagerId IS NOT NULL) OR (NEW.requestedImagerId IS NOT NULL)) AND NEW.barcode IS NULL THEN 
  SET NEW.barcode = new.code;
END IF;
END;;
DELIMITER ;

/*

DELIMITER ;;
CREATE TRIGGER Container_update_barcode_code BEFORE UPDATE ON Container FOR EACH ROW 
BEGIN
IF NEW.barcode IS NULL THEN 
  SET NEW.barcode = new.code;
END IF;
END;;
DELIMITER ;

*/