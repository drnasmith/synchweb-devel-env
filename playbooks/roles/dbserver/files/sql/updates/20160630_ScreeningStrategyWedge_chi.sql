alter table `ScreeningStrategyWedge` add column `chi` float NULL AFTER `kappa`;

-- pt-online-schema-change --execute --alter-foreign-keys-method=auto --alter "add column \`chi\` float NULL AFTER \`kappa\`" D=ispyb,t=ScreeningStrategyWedge,h=localhost