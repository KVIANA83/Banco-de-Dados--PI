/* Físico p2: */

CREATE TABLE Empreendedor (
    id_empr int NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nome_completo varchar (255) NOT NULL,
    razao_social varchar (255) NOT NULL,
    data_nasc date NOT NULL,
    endereco varchar (255) NOT NULL,
    telefone varchar (20) NOT NULL,
    email varchar (100) NOT NULL,
    senha varchar (100) NOT NULL
);

CREATE TABLE Usuario (
    id_usuario int NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nome_completo varchar (255) NOT NULL,
    nome_social varchar (255) NOT NULL,
    endereco varchar (255) NOT NULL,
    telefone varchar (20) NOT NULL,
    email varchar (100) NOT NULL,
    data_nasc date NOT NULL,
    senha varchar (100) NOT NULL
);

CREATE TABLE Categoria (
    id_categoria int NOT NULL AUTO_INCREMENT PRIMARY KEY,
    descricao varchar (255) NOT NULL,
    nome  varchar (255) NOT NULL
);

CREATE TABLE Produto (
    Nome varchar (255) NOT NULL,
    descricao varchar (255) NOT NULL,
    id_produto int NOT NULL AUTO_INCREMENT PRIMARY KEY,
    url_imagem varchar (255) NOT NULL,
    fk_Categoria_id_categoria integer,
    fk_Usuario_id_usuario integer
);

CREATE TABLE Adquire (
    fk_Produto_id_produto integer,
    fk_Empreendedor_id_empr integer
);
 
ALTER TABLE Produto ADD CONSTRAINT FK_Produto_2
    FOREIGN KEY (fk_Categoria_id_categoria)
    REFERENCES Categoria (id_categoria)
    ON DELETE RESTRICT;
 
ALTER TABLE Produto ADD CONSTRAINT FK_Produto_3
    FOREIGN KEY (fk_Usuario_id_usuario)
    REFERENCES Usuario (id_usuario)
    ON DELETE RESTRICT;
 
ALTER TABLE Adquire ADD CONSTRAINT FK_Adquire_1
    FOREIGN KEY (fk_Produto_id_produto)
    REFERENCES Produto (id_produto)
    ON DELETE RESTRICT;
 
ALTER TABLE Adquire ADD CONSTRAINT FK_Adquire_2
    FOREIGN KEY (fk_Empreendedor_id_empr)
    REFERENCES Empreendedor (id_empr)
    ON DELETE RESTRICT;