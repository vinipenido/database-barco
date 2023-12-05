CREATE TABLE vendedores (
    idVend INT PRIMARY KEY,
    nomeVend VARCHAR(255),
    idade INT
);

-- Criação da tabela barcos
CREATE TABLE barcos (
    idBarco INT PRIMARY KEY,
    nomeBarco VARCHAR(255),
    cor VARCHAR(50)
);

-- Criação da tabela FazReserva
CREATE TABLE FazReserva (
    idVend INT,
    idBarco INT,
    dia DATE,
    PRIMARY KEY (idVend, idBarco, dia), 
    FOREIGN KEY (idVend) REFERENCES vendedores(idVend),
    FOREIGN KEY (idBarco) REFERENCES barcos(idBarco)
);