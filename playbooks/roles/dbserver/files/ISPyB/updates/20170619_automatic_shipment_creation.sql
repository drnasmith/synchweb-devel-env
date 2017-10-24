ALTER TABLE CourierTermsAccepted
  DROP FOREIGN KEY IF EXISTS CourierTermsAccepted_ibfk_3,
  DROP IF EXISTS shippingId;

ALTER TABLE Shipping
  DROP IF EXISTS deliveryAgent_flightCodeTimestamp,
  DROP IF EXISTS deliveryAgent_label,
  DROP IF EXISTS readyByTime,
  DROP IF EXISTS closeTime,
  DROP IF EXISTS physicalLocation,
  DROP IF EXISTS deliveryAgent_pickupConfirmationTimestamp,
  DROP IF EXISTS deliveryAgent_pickupConfirmation,
  DROP IF EXISTS deliveryAgent_readyByTime,
  DROP IF EXISTS deliveryAgent_callinTime,
  DROP IF EXISTS deliveryAgent_productcode,
  DROP FOREIGN KEY IF EXISTS Shipping_ibfk_4,
  DROP IF EXISTS deliveryAgent_flightCodePersonId;
  
ALTER TABLE Dewar
  DROP IF EXISTS weight, 
  DROP IF EXISTS deliveryAgent_barcode;
  
ALTER TABLE Laboratory
  DROP IF EXISTS postcode;

ALTER TABLE CourierTermsAccepted
  ADD shippingId int(11) unsigned,
  ADD CONSTRAINT CourierTermsAccepted_ibfk_3
      FOREIGN KEY (shippingId) REFERENCES Shipping(shippingId) ON DELETE CASCADE ON UPDATE CASCADE;
      
ALTER TABLE Shipping 
  ADD deliveryAgent_flightCodeTimestamp timestamp NULL DEFAULT NULL COMMENT 'Date flight code created, if automatic',
  ADD deliveryAgent_label text COMMENT 'Base64 encoded pdf of airway label',
  ADD readyByTime time COMMENT 'Time shipment will be ready',
  ADD closeTime time COMMENT 'Time after which shipment cannot be picked up',
  ADD physicalLocation varchar(50) COMMENT 'Where shipment can be picked up from: i.e. Stores',
  ADD deliveryAgent_pickupConfirmationTimestamp timestamp NULL DEFAULT NULL COMMENT 'Date picked confirmed',
  ADD deliveryAgent_pickupConfirmation varchar(10) COMMENT 'Confirmation number of requested pickup',
  ADD deliveryAgent_readyByTime time COMMENT 'Confirmed ready-by time',
  ADD deliveryAgent_callinTime time COMMENT 'Confirmed courier call-in time',
  ADD deliveryAgent_productCode varchar(10) COMMENT 'A code that identifies which shipment service was used',
  ADD deliveryAgent_flightCodePersonId int(10) unsigned COMMENT 'The person who created the AWB (for auditing)',
  ADD CONSTRAINT Shipping_ibfk_4
      FOREIGN KEY (deliveryAgent_flightCodePersonId) REFERENCES Person(personId);
  

ALTER TABLE Dewar
  ADD weight float COMMENT 'Dewar weight in kg',
  ADD deliveryAgent_barcode varchar(30) COMMENT 'Courier piece barcode (not the airway bill)';

ALTER TABLE Laboratory
  ADD IF NOT EXISTS postcode varchar(15);

/*
ALTER TABLE Shipping
  ADD deliveryAgent_productCode varchar(10) COMMENT 'A code that identifies which shipment service was used';
  
ALTER TABLE Dewar
  ADD deliveryAgent_barcode varchar(30) COMMENT 'Courier piece barcode (not the airway bill)';
  
*/