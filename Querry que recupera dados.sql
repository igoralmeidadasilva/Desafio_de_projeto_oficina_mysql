USE Oficina;
SHOW TABLES;

-- 1 Recuperações simples com SELECT Statement.
	-- 1.1 Listagem de marcas
	SELECT * FROM Marca ORDER BY cod_marca;
    -- 1.2 Listagem de marcas
	SELECT * FROM Veiculo ORDER BY cod_cliente;
    -- 1.3 Listagem de marcas
	SELECT * FROM Cliente ORDER BY cod_cliente;
    
-- 2. Filtros com WHERE Statement.
	-- 2.1 Filtrando todos os veiculos da marca ford
	SELECT * FROM Veiculo WHERE cod_marca = 3;
    -- 2.2 Filtrando todas as peças com o valor superior a 1500
	SELECT * FROM Pecas WHERE valor_pecas > 1500;
	-- 2.3 Filtrando todas as Ordens de serviço onde foram realizadas um balanceamento (cod_servico = 2)
    SELECT * FROM Servicos_os WHERE cod_servico = 2;
	
-- 3. Crie expressões para gerar atributos derivados.
	-- 3.1 Contando a quantidade de registros na tabela Cliente
	SELECT Count(*) AS 'Quantidade de Clientes' FROM Cliente;
    -- 3.2 Contando a quantidade de registros na tabela OS
    SELECT Count(*) AS 'Quantidade de Ordens de serviços' FROM OS;
    -- 3.3 Somando todos os valores do campo valor_itens da tabela Itens_os da ordem de serviço número 7
    SELECT SUM(valor_itens) as 'Valor total dos itens' FROM Itens_os WHERE cod_os = 7;
    -- 3.3 Somando todos os valoresdo campo valor_servico da tabela Serviços_os da ordem de serviço número 1
    SELECT SUM(valor_servico) as 'Valor total dos serviços' FROM Servicos_os WHERE cod_os = 1;

-- 4. Defina ordenações dos dados com ORDER BY.
	-- 4.1 Ordenando os itens da tabela Pecas em ordem crescente
	SELECT * FROM Pecas ORDER BY valor_pecas;
    -- 4.2 Ordenando os itens da tabela Pecas em ordem decrescente
    SELECT * FROM Pecas ORDER BY valor_pecas DESC;
    -- 4.3 Ordenando os registros da tabela mecanico em ordem decrescente
	SELECT * FROM Mecanico ORDER BY nome DESC;
    
-- 5. Condições de filtros aos grupos – HAVING Statement.
    SELECT *, COUNT(*) AS 'Total' FROM Veiculo GROUP BY cod_marca HAVING cor = 'Preto';
    SELECT *, COUNT(*) AS 'Total' FROM Veiculo GROUP BY cod_marca HAVING ano > 2010;
	SELECT COUNT(*) AS 'Total de mecânicos', especialidade FROM Mecanico GROUP BY especialidade;

-- Crie junções entre tabelas para fornecer uma perspectiva mais complexa dos dados.
	SELECT * FROM Cliente c, Veiculo v, Marca m
		WHERE 	c.cod_cliente = v.cod_cliente
        AND		v.cod_marca = m.cod_marca;
	SELECT c.nome, m.nome_marca, v.modelo, v. ano, v.cor FROM Cliente c, Veiculo v, Marca m
		WHERE 	c.cod_cliente = v.cod_cliente
        AND		m.cod_marca = v.cod_marca
        ORDER BY c.cod_cliente;
	SELECT concat(c.nome, ' ', c.sobrenome) AS Nome, m.nome_marca AS 'Marca', v.modelo AS 'Modelo', v. ano AS 'Ano', v.cor AS 'Cor' FROM Cliente c, Veiculo v, Marca m
		WHERE 	c.cod_cliente = v.cod_cliente
        AND		v.cod_marca = m.cod_marca
        ORDER BY c.cod_cliente;
    SELECT o.cod_os AS 'Ordem de serviço', o.data_entrega AS 'Data de entrega', o.data_emissao AS 'Data de emissão', status_os as 'Status', valor_itens AS 'Valor dos itens', valor_servico AS 'Valor dos serviços'
		FROM OS o, Itens_os i, Servicos_os s
		WHERE	o.cod_os = i.cod_os
        AND		o.cod_os = s.cod_os
        ORDER BY o.cod_os;
    

    
    
    