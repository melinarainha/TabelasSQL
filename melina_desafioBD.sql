DROP TABLE ArtigoPublicacao CASCADE CONSTRAINTS;
DROP TABLE ArtigoPC CASCADE CONSTRAINTS;
DROP TABLE Artigo CASCADE CONSTRAINTS;
DROP TABLE PalavraChave CASCADE CONSTRAINTS;
DROP TABLE Publicacao CASCADE CONSTRAINTS;
DROP TABLE Area CASCADE CONSTRAINTS;

CREATE TABLE Publicacao (
    ISSN NUMBER PRIMARY KEY,
    TituloP VARCHAR2 (100),
    Editor VARCHAR2 (50),
    URL VARCHAR2 (300)
);

CREATE TABLE Area (
    AreaID NUMBER PRIMARY KEY,
    DescricaoA VARCHAR2 (100)
);

CREATE TABLE Artigo (
    ArtigoID NUMBER PRIMARY KEY,
    TituloA VARCHAR2 (200),
    Ano NUMBER,
    NumeroDePaginas NUMBER,
    AreaID NUMBER,
    FOREIGN KEY (AreaID) REFERENCES Area (AreaID)
);

CREATE TABLE PalavraChave (
    PC NUMBER PRIMARY KEY,
    DescricaoPC VARCHAR2 (50)
);

CREATE TABLE ArtigoPC (
    ArtigoID NUMBER,
    PC NUMBER,
    PRIMARY KEY (ArtigoID, PC),
    FOREIGN KEY (ArtigoID) REFERENCES Artigo (ArtigoID),
    FOREIGN KEY (PC) REFERENCES PalavraChave (PC)
);

CREATE TABLE ArtigoPublicacao (
    ArtigoID NUMBER,
    ISSN NUMBER,
    PRIMARY KEY (ArtigoID, ISSN),
    FOREIGN KEY (ArtigoID) REFERENCES Artigo (ArtigoID),
    FOREIGN KEY (ISSN) REFERENCES Publicacao (ISSN)
);

INSERT INTO Publicacao (ISSN, TituloP, Editor,URL)
VALUES (34567890, 'Artificial Intelligence Review', 'AI Press', 'Link');
INSERT INTO Publicacao (ISSN, TituloP, Editor, URL)
VALUES (23456789, 'Journal of Computing', 'Tech Press', 'Link');
INSERT INTO Publicacao (ISSN, TituloP, Editor, URL)
VALUES (67890123, 'Education and Technology', 'EduTech', 'Link');
INSERT INTO Publicacao (ISSN, TituloP, Editor,URL)
VALUES (45678901, 'IoT Journal', 'Tech Press', 'Link');
INSERT INTO Publicacao (ISSN, TituloP, Editor, URL)
VALUES (56789012, 'Cyber Security Journal', 'SecureData', 'Link');

INSERT INTO Area (AreaID, DescricaoA)
VALUES (1, 'Inteligência Artificial');
INSERT INTO Area (AreaID, DescricaoA)
VALUES (2, 'Computação');
INSERT INTO Area (AreaID, DescricaoA)
VALUES (3, 'Aprendizado de Máquina');
INSERT INTO Area (AreaID, DescricaoA)
VALUES (4, 'Tecnologia');
INSERT INTO Area (AreaID, DescricaoA)
VALUES (5, 'Segurança');

INSERT INTO Artigo (ARTIGOID, TituloA, Ano, NumeroDePaginas, AreaID)
VALUES (1, 'O Impacto da IA na Medicina', 2023, 15,1 );
INSERT INTO Artigo (ARTIGOID, TituloA, Ano, NumeroDePaginas, AreaID)
VALUES (2, 'Algoritmos Genéticos para Otimização', 2022, 12 ,2);
INSERT INTO Artigo (ARTIGOID, TituloA, Ano, NumeroDePaginas, AreaID)
VALUES (3, 'Redes Neurais Convolocionais', 2021, 20, 3);
INSERT INTO Artigo (ARTIGOID, TituloA, Ano, NumeroDePaginas, AreaID)
VALUES (4, 'A Evolução da Internet das Coisas', 2023, 18, 4);
INSERT INTO Artigo (ARTIGOID, TituloA, Ano, NumeroDePaginas, AreaID)
VALUES (5, 'Blockchain na Segurança Cibernética', 2020, 14, 5);

INSERT INTO PALAVRACHAVE (PC, DESCRICAOPC)
VALUES (1, 'IA');
INSERT INTO PALAVRACHAVE (PC, DESCRICAOPC)
VALUES (2, 'Medicina');
INSERT INTO PALAVRACHAVE (PC, DESCRICAOPC)
VALUES (3, 'Diagnóstico');
INSERT INTO PALAVRACHAVE (PC, DESCRICAOPC)
VALUES (4, 'Algoritmos');
INSERT INTO PALAVRACHAVE (PC, DESCRICAOPC)
VALUES (5, 'Otimização');

INSERT INTO ArtigoPC (ArtigoID, PC)
VALUES (1,1);
INSERT INTO ArtigoPC (ArtigoID, PC)
VALUES (1,2);
INSERT INTO ArtigoPC (ArtigoID, PC)
VALUES (1,3);
INSERT INTO ArtigoPC (ArtigoID, PC)
VALUES (2,4);
INSERT INTO ArtigoPC (ArtigoID, PC)
VALUES (2,5);

INSERT INTO ArtigoPublicacao (ArtigoID, ISSN)
VALUES (1, 34567890);
INSERT INTO ArtigoPublicacao (ArtigoID, ISSN)
VALUES (2, 23456789);
INSERT INTO ArtigoPublicacao (ArtigoID, ISSN)
VALUES (3, 34567890);
INSERT INTO ArtigoPublicacao (ArtigoID, ISSN)
VALUES (4, 45678901);
INSERT INTO ArtigoPublicacao (ArtigoID, ISSN)
VALUES (5, 56789012);

