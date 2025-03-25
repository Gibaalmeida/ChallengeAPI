-- Criando a tabela Televisão_vendas que vai receber os dados finais.


CREATE TABLE televisao_vendas (
    item_id INTEGER,
    title TEXT,
    price REAL,
    currency TEXT,
    available_quantity INTEGER,
    description TEXT,
    condition TEXT
);

-- Criando um union all de todas as tabelas para inserir na televisao_vendas.

INSERT INTO televisao_vendas (item_id, title, price, currency, available_quantity, description, condition)
SELECT item_id, title, price, currency, available_quantity, description, condition
FROM api_britania

UNION ALL

SELECT item_id, title, price, currency, available_quantity, description, condition
FROM api_philco

UNION ALL

SELECT item_id, title, price, currency, available_quantity, description, condition
FROM api_samsumg

UNION ALL

SELECT item_id, title, price, currency, available_quantity, description, condition
FROM api_lg;



--Adicionando uma nova coluna marca com as marcas das talevisões.

ALTER TABLE televisao_vendas
ADD COLUMN marca TEXT;

--Atualizando a tabela televisao_vendass om as marcas das talevisôes.

UPDATE televisao_vendas
SET marca = 
    CASE
        WHEN title LIKE '%LG%' THEN 'LG'
        WHEN title LIKE '%Philco%' THEN 'Philco'
        WHEN title LIKE '%Britânia%' THEN 'Britânia'
        WHEN title LIKE '%Samsung%' THEN 'Samsung'
        WHEN title LIKE '%Philips%' THEN 'Philips'
        ELSE 'Desconhecida'
    END;
	
--Adicionando volume na tabela televisao_vendas.

ALTER TABLE televisao_vendas
ADD COLUMN volume INTEGER;

UPDATE televisao_vendas
SET volume = (
    SELECT COUNT(*)
    FROM televisao_vendas t2
    WHERE t2.marca = televisao_vendas.marca
);


select * from televisao_vendas

