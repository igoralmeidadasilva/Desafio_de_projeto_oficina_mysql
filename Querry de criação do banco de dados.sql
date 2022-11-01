CREATE DATABASE Oficina;
USE Oficina;
-- DROP DATABASE Oficina;

CREATE TABLE Pecas(
	cod_pecas		INT UNSIGNED NOT NULL AUTO_INCREMENT,
    nome_pecas		VARCHAR(20),
    valor_pecas		FLOAT NOT NULL,
    CONSTRAINT pk_pecas PRIMARY KEY (cod_pecas)
);
ALTER TABLE Pecas auto_increment=1;

CREATE TABLE Servicos(
	cod_servico		INT UNSIGNED NOT NULL AUTO_INCREMENT,
    tipo_servico	VARCHAR(30),
	CONSTRAINT pk_servicos PRIMARY KEY (cod_servico)
);
ALTER TABLE Servicos auto_increment=1;

CREATE TABLE Marca(
	cod_marca	INT UNSIGNED NOT NULL AUTO_INCREMENT,
    nome_marca	VARCHAR(15),
    CONSTRAINT pk_marca PRIMARY KEY (cod_marca),
    CONSTRAINT un_nomeMarca UNIQUE (nome_marca)
);
ALTER TABLE Marca auto_increment=1;

CREATE TABLE Cliente(
	cod_cliente	INT UNSIGNED NOT NULL AUTO_INCREMENT,
	nome		VARCHAR(15) NOT NULL,
    sobrenome	VARCHAR(50),
	cpf			CHAR(11) NOT NULL,
    contato		CHAR(11) NOT NULL,
    endereco	VARCHAR(70),
	CONSTRAINT pk_cliente PRIMARY KEY (cod_cliente),
    CONSTRAINT un_cpf UNIQUE (cpf)
);
ALTER TABLE Cliente auto_increment=1;

CREATE TABLE Veiculo(
	placa			CHAR(7) NOT NULL,
    modelo			VARCHAR(30),
    cor				VARCHAR(10),
    ano				CHAR(4),
    cod_marca		INT UNSIGNED NOT NULL,
    cod_cliente		INT UNSIGNED NOT NULL,
	CONSTRAINT pk_veiculo PRIMARY KEY (placa),
    CONSTRAINT fk_veiculo_marca FOREIGN KEY (cod_marca)
		REFERENCES Marca(cod_marca),
	CONSTRAINT fk_veiculo_cliente FOREIGN KEY (cod_cliente)
		REFERENCES Cliente(cod_cliente)
);

CREATE TABLE OS(
	cod_os			INT UNSIGNED NOT NULL AUTO_INCREMENT,
    data_entrega	DATE NOT NULL,
    data_emissao	DATE NOT NULL,
    status_os 		ENUM('Cancelada', 'Processando', 'Entregue'),
    valor_total		FLOAT,
    placa			CHAR(7),
	cod_cliente		INT UNSIGNED NOT NULL,
    CONSTRAINT pk_os PRIMARY KEY (cod_os),
    CONSTRAINT fk_os_veiculo FOREIGN KEY(placa)
		REFERENCES Veiculo(placa),
	CONSTRAINT fk_os_cliente FOREIGN KEY(cod_cliente)
		REFERENCES Cliente(cod_cliente)
);
ALTER TABLE OS auto_increment=1;

CREATE TABLE Itens_os(
	cod_pecas		INT UNSIGNED NOT NULL ,
    cod_os			INT UNSIGNED NOT NULL,
    valor_itens		FLOAT NOT NULL,
	CONSTRAINT pk_itensOS PRIMARY KEY(cod_pecas, cod_os),
    CONSTRAINT fk_itensOS_pecas FOREIGN KEY(cod_pecas)
		REFERENCES Pecas(cod_pecas),
	CONSTRAINT fk_itensOS_os FOREIGN KEY(cod_os)
		REFERENCES OS(cod_os)
);

CREATE TABLE Servicos_os(
	cod_servico		INT UNSIGNED NOT NULL,
    cod_os			INT UNSIGNED NOT NULL,
	valor_servico	FLOAT NOT NULL,
    CONSTRAINT pk_servicosOS PRIMARY KEY(cod_servico, cod_os),
    CONSTRAINT fk_pk_servicosOS_servico FOREIGN KEY(cod_servico)
		REFERENCES Servicos(cod_servico),
	CONSTRAINT fk_servicosOS_os FOREIGN KEY(cod_os)
		REFERENCES OS(cod_os)
);

CREATE TABLE Mecanico(
	cod_mecanico	INT UNSIGNED NOT NULL AUTO_INCREMENT,
	nome			VARCHAR(15) NOT NULL,
    sobrenome		VARCHAR(50),
	cpf				CHAR(11) NOT NULL,
    contato			CHAR(11) NOT NULL,
    endereco		VARCHAR(70),
    especialidade	VARCHAR(20),
	CONSTRAINT pk_mecanico PRIMARY KEY (cod_mecanico),
    CONSTRAINT un_cpf UNIQUE (cpf)
);
ALTER TABLE Mecanico auto_increment=1;

CREATE TABLE Equipe(
	cod_equipe		INT UNSIGNED NOT NULL,
    cod_servico		INT UNSIGNED NOT NULL,
    cod_os			INT UNSIGNED NOT NULL,
    placa			CHAR(7) NOT NULL,
    CONSTRAINT pk_equipe PRIMARY KEY (cod_equipe),
    CONSTRAINT fk_equipe_servico FOREIGN KEY (cod_servico)
		REFERENCES Servicos(cod_servico),
    CONSTRAINT fk_equipe_os FOREIGN KEY(cod_os)
		REFERENCES OS(cod_os),
	CONSTRAINT fk_equipe_veiculo FOREIGN KEY(placa)
		REFERENCES Veiculo(placa)
);

CREATE TABLE Equipe_mecanicos(
	cod_equipe		INT UNSIGNED NOT NULL,
	cod_os			INT UNSIGNED NOT NULL,
    placa			CHAR(7) NOT NULL,
	cod_mecanico	INT UNSIGNED NOT NULL,
    CONSTRAINT pk_equipeMecanicos PRIMARY KEY (cod_equipe, cod_os),
    CONSTRAINT fk_equipeMecanicos_equipe FOREIGN KEY(cod_equipe)
		REFERENCES Equipe(cod_equipe),
	CONSTRAINT fk_equipeMecanicos_OS FOREIGN KEY(cod_os)
		REFERENCES OS(cod_os),
	CONSTRAINT fk_equipeMecanicos_veiculo FOREIGN KEY(placa)
		REFERENCES Veiculo(placa),
	CONSTRAINT fk_equipeMecanicos_mecanico FOREIGN KEY(cod_mecanico)
        REFERENCES Mecanico(cod_mecanico)
);

SHOW TABLES;
DESC Cliente;
DESC Equipe;
DESC Equipe_mecanicos;
DESC Itens_os;
DESC Marca;
DESC Mecanico;
DESC OS;
DESC Pecas;
DESC Servicos_os;
DESC Servicos;
DESC Veiculo;






