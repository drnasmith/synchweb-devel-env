DROP TABLE IF EXISTS Protein_has_Lattice;
DROP TABLE IF EXISTS ComponentLattice;

CREATE TABLE ComponentLattice (
    componentLatticeId int(11) unsigned auto_increment PRIMARY KEY,
    componentId int(10) unsigned,
    spaceGroup varchar(20),
    cell_a double,
    cell_b double,
    cell_c double,
    cell_alpha double,
    cell_beta double,
    cell_gamma double,
    CONSTRAINT ComponentLattice_ibfk1 FOREIGN KEY (componentId) REFERENCES Protein (proteinId)
);
