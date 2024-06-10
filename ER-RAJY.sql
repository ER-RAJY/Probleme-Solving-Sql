create tableCréation de la table Invités
CREATE TABLE Invités (
    id_invite INT PRIMARY KEY,
    nom VARCHAR(255),
    statut VARCHAR(50)
);

--  table Rooms
CREATE TABLE Rooms (
    id_room INT PRIMARY KEY,
    nom VARCHAR(255)
);

--  table Mouvements
CREATE TABLE Mouvements (
    id INT PRIMARY KEY,
    id_invite INT,
    id_room INT,
    time date,
    FOREIGN KEY (id_invite) REFERENCES Invités(id_invite),
    FOREIGN KEY (id_room) REFERENCES Rooms(id_room)
);

-- table Objets
CREATE TABLE Objets (
    id_objet INT PRIMARY KEY,
    nom_objet VARCHAR(255),
    id_room INT,
    FOREIGN KEY (id_room) REFERENCES Rooms(id_room)
);

--  table Indices
CREATE TABLE Indices (
    id_indice INT PRIMARY KEY,
    description TEXT,
    id_room INT,
    FOREIGN KEY (id_room) REFERENCES Rooms(id_room)
);


