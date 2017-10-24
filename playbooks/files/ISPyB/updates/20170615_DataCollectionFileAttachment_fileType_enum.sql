ALTER TABLE DataCollectionFileAttachment MODIFY fileType enum('snapshot', 'log', 'xy', 'recip') 
COMMENT 'snapshot: image file, usually of the sample. 
log: a text file with logging info. 
xy: x and y data in text format. 
recip: a compressed csv file with reciprocal space coordinates.';