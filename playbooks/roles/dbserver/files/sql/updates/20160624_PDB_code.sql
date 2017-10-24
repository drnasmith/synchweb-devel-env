-- alter table PDB change `CODE` `code` varchar(4); 

#pt-online-schema-change --execute --alter-foreign-keys-method=auto --alter "CHANGE \`CODE\` \`code\` varchar(4)" D=ispyb,t=PDB,h=localhost

ALTER TABLE `PDB` CHANGE COLUMN `CODE` `code` varchar(4);