USE Oficina;
SHOW TABLES;

DESC Marca;
INSERT INTO marca (nome_marca)
	VALUES	('Chevrolet'), ('Toyota'), ('Ford'), ('Nissan'), ('Honda'), ('Suzuki'), ('Mazda'), ('Fiat'), ('Mercedes'), ('Audi'), ('Jeep'), ('Hyundai');
SELECT * FROM marca ORDER BY cod_marca;

DESC Pecas;
INSERT INTO Pecas (valor_pecas)
		VALUES 	(1252), (1684), (1582), (2589), (500), (1858), (1358), (1864), (2486), (1028), (1485), (1423), (1235), (1245), (900), (120), (500),
        (500),(1456), (1111), (1254), (1222), (1254), (1324), (1325), (1200), (123), (1450), (312), (700), (1352), (185), (321), (1250), (1780),
        (1252), (500), (511), (532), (1223), (1512), (999), (978), (1235), (1252), (1452), (1468), (1211), (1052), (1852), (1150), (152), (50); 
SELECT * FROM Pecas ORDER BY cod_pecas;

DESC Servicos;
INSERT INTO Servicos (tipo_servico)
		VALUES ('Revisão'), ('Balanceamento'), ('Reparo'), ('Troca de óleo'), ('Manutenção'), ('Outros');
SELECT * FROM Servicos ORDER BY cod_servico;

DESC Cliente;
INSERT INTO Cliente (nome, sobrenome, cpf, contato, endereco)
		VALUES 	('Pessoa 1', ' - ', '00000000001', '99999999991', 'Rua: Qualquer, Bairro: de trás, Cidade: Sp, UF: SP'),
				('Pessoa 2', ' - ', '00000000002', '99999999992', 'Rua: Qualquer, Bairro: de trás, Cidade: Sp, UF: SP'),
				('Pessoa 3', ' - ', '00000000003', '99999999993', 'Rua: Qualquer, Bairro: de trás, Cidade: Sp, UF: SP'),
                ('Pessoa 4', ' - ', '00000000004', '99999999994', 'Rua: Qualquer, Bairro: de trás, Cidade: Sp, UF: SP'),
                ('Pessoa 5', ' - ', '00000000005', '99999999995', 'Rua: Qualquer, Bairro: de trás, Cidade: Sp, UF: SP'),
                ('Pessoa 6', ' - ', '00000000006', '99999999996', 'Rua: Qualquer, Bairro: de trás, Cidade: Sp, UF: SP'),
                ('Pessoa 7', ' - ', '00000000007', '99999999997', 'Rua: Qualquer, Bairro: de trás, Cidade: Sp, UF: SP'),
                ('Pessoa 8', ' - ', '00000000008', '99999999998', 'Rua: Qualquer, Bairro: de trás, Cidade: Sp, UF: SP'),
                ('Pessoa 9', ' - ', '00000000009', '99999999999', 'Rua: Qualquer, Bairro: de trás, Cidade: Sp, UF: SP'),
                ('Pessoa 10', ' - ', '00000000010', '99999999910', 'Rua: Qualquer, Bairro: de trás, Cidade: Sp, UF: SP'),
                ('Pessoa 11', ' - ', '00000000011', '99999999911', 'Rua: Qualquer, Bairro: de trás, Cidade: Sp, UF: SP'),
                ('Pessoa 12', ' - ', '00000000012', '99999999912', 'Rua: Qualquer, Bairro: de trás, Cidade: Sp, UF: SP'),
                ('Pessoa 13', ' - ', '00000000013', '99999999913', 'Rua: Qualquer, Bairro: de trás, Cidade: Sp, UF: SP');
SELECT * FROM Cliente ORDER BY cod_cliente;

DESC Mecanico;
INSERT INTO Mecanico (nome, sobrenome, cpf, contato, endereco, especialidade)
		VALUES	('Mecanico 1', ' - ', '11111111111', '99999999971', 'Rua: Qualquer, Bairro: de trás, Cidade: Sp, UF: SP', 'Carros de Luxo'),
				('Mecanico 2', ' - ', '11111111112', '99999999972', 'Rua: Qualquer, Bairro: de trás, Cidade: Sp, UF: SP', 'Carros Antigos'),
                ('Mecanico 3', ' - ', '11111111113', '99999999973', 'Rua: Qualquer, Bairro: de trás, Cidade: Sp, UF: SP', 'Carros Esportivos'),
                ('Mecanico 4', ' - ', '11111111114', '99999999974', 'Rua: Qualquer, Bairro: de trás, Cidade: Sp, UF: SP', 'Carros Antigos'),
                ('Mecanico 5', ' - ', '11111111115', '99999999975', 'Rua: Qualquer, Bairro: de trás, Cidade: Sp, UF: SP', 'Carros Esportivos'),
                ('Mecanico 6', ' - ', '11111111116', '99999999976', 'Rua: Qualquer, Bairro: de trás, Cidade: Sp, UF: SP', 'Carros Esportivos'),
                ('Mecanico 7', ' - ', '11111111117', '99999999977', 'Rua: Qualquer, Bairro: de trás, Cidade: Sp, UF: SP', 'Carros de Luxo'),
                ('Mecanico 8', ' - ', '11111111118', '99999999978', 'Rua: Qualquer, Bairro: de trás, Cidade: Sp, UF: SP', 'Carros Antigos');
SELECT * FROM Mecanico ORDER BY cod_mecanico;

DESC Veiculo;
INSERT INTO Veiculo (placa, modelo, cor, ano, cod_marca, cod_cliente) 
		VALUES	('MSI2525', 'Escudo', 'Vermelho', '1988', 6, 1), 		('GTR1225', 'RX8', 'Laranja', '1978', 7, 1),
				('FIU5865', 'Camaro', 'Amarelo', '2022', 1, 2), 		('TTT8956', 'Toyota', 'Branco', '2008', 2, 3),
                ('POO9876', 'Ka', 'Vermelho', '2010', 3, 4), 			('BTH4856', 'Ka', 'Branco', '2015', 3, 5),
                ('NFS0002', 'Skyline', 'Preto', '2000', 4, 6), 			('YJN8564', 'Civic', 'Preto', '2012', 5, 7),
                ('TGH8765', 'Uno Mille', 'Branco', '1984', 8, 8), 		('QWE4758', 'Uno', 'Vermelho', '2015', 8, 9),
                ('BNM2222', 'Beanz Classe A', 'Preto', '2005', 9, 10), 	('NFS1234', 'TT', 'Preto', '1999', 10, 11),
                ('BRA1648', 'Compass', 'Cinza', '2020', 11, 12), 		('ZZZ1234', 'Tucson', 'Preto', '2005', 12, 13);
SELECT * FROM Veiculo ORDER BY cod_cliente;

DESC OS;
INSERT INTO OS (data_entrega, data_emissao, status_os, cod_cliente, placa)
		VALUES	('2022-01-20', '2022-01-30', 'Entregue', 1, 'MSI2525'),		('2022-02-10', '2022-02-12', 'Entregue', 1, 'GTR1225'),
				('2022-02-10', '2020-02-27', 'Entregue', 2, 'FIU5865'),		('2022-02-10', '2022-02-15', 'Cancelada', 3, 'TTT8956'),
                ('2022-03-01', '2022-03-09', 'Entregue', 4, 'POO9876'),		('2022-03-02', '2022-03-18', 'Entregue', 5, 'BTH4856'),
                ('2022-04-01', '2022-04-02', 'Entregue', 6, 'NFS0002'),		('2022-04-04', '2022-04-10', 'Entregue', 7, 'YJN8564'),
                ('2022-04-10', '2022-04-15', 'Entregue', 8, 'TGH8765'),		('2022-04-11', '2022-04-15', 'Entregue', 9, 'QWE4758'),
                ('2022-04-15', '2022-04-30', 'Entregue', 10, 'BNM2222'), 	('2022-05-01', '2022-05-10', 'Entregue', 11, 'NFS1234'),
                ('2022-05-01', '2022-05-09', 'Entregue', 1, 'GTR1225'),		('2022-05-04', '2022-05-14', 'Entregue', 2, 'FIU5865'),
                ('2022-05-10', '2022-05-16', 'Entregue', 12, 'BRA1648'), 	('2022-05-16', '2022-05-24', 'Entregue', 13, 'ZZZ1234'),
                ('2022-05-17', '2022-05-27', 'Entregue', 3, 'TTT8956'),		('2022-05-20', '2022-05-28', 'Entregue', 4, 'POO9876'),
                ('2022-05-28', '2022-05-31', 'Entregue', 5, 'BTH4856'),		('2022-06-01', '2022-06-04', 'Entregue', 6, 'NFS0002'),
                ('2022-06-11', '2022-06-27', 'Entregue', 7, 'YJN8564'),		('2022-07-02', '2022-07-27', 'Entregue', 2, 'FIU5865'),
                ('2022-07-02', '2022-07-16', 'Entregue', 1, 'MSI2525'),		('2022-07-20', '2022-07-25', 'Processando', 1, 'GTR1225'),
                ('2022-07-21', '2022-07-27', 'Processando', 9, 'QWE4758'),	('2022-07-22', '2022-07-30', 'Processando', 10, 'BNM2222');
SELECT * FROM OS ORDER BY cod_os;

DESC Servicos_os;
INSERT INTO Servicos_os (cod_servico, cod_os, valor_servico)
		VALUES 	(1, 1, 777), (1, 2, 320), (2, 3, 150), (3, 4, 990), (4, 5, 560), (5, 6, 321), (6, 7, 146), (6, 8, 156), (6, 9, 99), (1, 10, 142), (2, 11, 66), (3, 12, 1000), (4, 13, 900), (4, 1, 100), (3, 8, 1489),
				(5, 14, 123), (6, 15, 321), (1, 16, 300), (2, 17, 652), (2, 18, 123), (3, 19, 500), (3, 20, 200), (4, 21, 300), (4, 22, 1410), (5, 23, 1423), (5, 24, 999), (1, 25, 888), (1, 26, 751), (6, 4, 1230);
SELECT * FROM Servicos_os ORDER BY cod_os;

DESC Itens_os;
INSERT INTO Itens_os(cod_pecas, cod_os, valor_itens)
		VALUES 	(1, 7, 500), (2, 8, 400), (3, 9, 300), (4, 10, 200), (5, 11, 150), (6, 12, 100), (7, 13, 500), (8, 14, 400), (9, 15, 450), (10, 16, 460), (11, 17, 470), (12, 18, 480), (13, 19, 500), (14, 20, 350), 
				(15, 21, 150), (16, 22, 250), (17, 23, 500), (18, 7, 999), (19, 10, 700), (20, 8, 650), (21, 9, 500), (22, 11, 300), (23, 12, 350), (24, 13, 360), (25, 14, 370), (26, 15, 200), (27, 16, 123), 
                (28, 17, 650), (29, 18, 550), (30, 19, 333);
SELECT * FROM Itens_os ORDER BY cod_os;

DESC Equipe;
INSERT INTO Equipe(cod_mecanico, cod_os, cod_servico) 
		VALUES	(1, 1, 1), (2, 1, 4), (3, 2, 1), (4, 3, 2), (5, 4, 3), (6, 4, 6), (7, 5, 4), (8, 6, 5), (1, 7, 6), (2, 8, 3), (3, 8, 6), (4, 9, 6), (5, 10, 1), (6, 11, 2), (7, 12, 3),
				(8, 13, 4), (1, 14, 5), (2, 15, 6), (3, 16, 1), (4, 17, 2), (5, 18, 2), (6, 19, 3), (7, 20, 3), (8, 21, 4), (1, 22, 4), (2, 23, 5), (3, 24, 5), (4, 25, 1), (5, 26, 1);  
SELECT * FROM Equipe ORDER BY cod_os;







