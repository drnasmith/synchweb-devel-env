-- On dev only so far 

ALTER TABLE Crystal DROP packingFraction;
ALTER TABLE Crystal ADD theoreticalDensity float;
ALTER TABLE BLSample ADD packingFraction float;
ALTER TABLE Protein CHANGE theoreticalDensity density float;

/*
pt-online-schema-change --execute --alter-foreign-keys-method auto --alter "DROP packingFraction, ADD \`theoreticalDensity\` float" D=ispyb,t=Crystal,h=localhost
pt-online-schema-change --execute --alter-foreign-keys-method auto --alter "ADD packingFraction float" D=ispyb,t=BLSample,h=localhost
pt-online-schema-change --execute --alter-foreign-keys-method auto --alter "CHANGE theoreticalDensity density float" D=ispyb,t=Protein,h=localhost
*/