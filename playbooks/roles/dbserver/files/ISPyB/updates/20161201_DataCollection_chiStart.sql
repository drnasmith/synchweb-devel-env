-- pt-online-schema-change --execute --alter-foreign-keys-method=auto --alter "add chiStart float after omegaStart" D=ispyb,t=DataCollection,h=localhost

ALTER TABLE DataCollection add chiStart float after omegaStart;