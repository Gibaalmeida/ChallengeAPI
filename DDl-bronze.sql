--Criação das tabelas Bronze e ingestão dos dados

-- Criação da tabela api_LG

CREATE TABLE api_lg (
    item_id TEXT PRIMARY KEY,
    title TEXT,
    price TEXT,
    currency TEXT,
    available_quantity TEXT,
    description TEXT,
    condition TEXT
);

-- Criação da tabela api_britania

CREATE TABLE api_britania (
    item_id TEXT PRIMARY KEY,
    title TEXT,
    price REAL,
    currency TEXT,
    available_quantity TEXT,
    description TEXT,
    condition TEXT
);

-- Criação da tabela philco
CREATE TABLE api_philco (
    item_id TEXT PRIMARY KEY,
    title TEXT,
    price REAL,
    currency TEXT,
    available_quantity TEXT,
    description TEXT,
    condition TEXT
);

-- Criação da tabela api_samsung
CREATE TABLE api_samsumg (
    item_id TEXT PRIMARY KEY,
    title TEXT,
    price REAL,
    currency TEXT,
    available_quantity TEXT,
    description TEXT,
    condition TEXT
);

-- Ingestão dos Dados na tabela api_britania

INSERT INTO api_britania (item_id, title, price, currency, available_quantity, description, condition)
SELECT field1, field2, field3, field4, field5, field6, field7
FROM Smart_Britnânia;

SELECT * from api_britania

-- Ingestão dos Dados na tabela api_philco

INSERT INTO api_philco (item_id, title, price, currency, available_quantity, description, condition)
SELECT field1, field2, field3, field4, field5, field6, field7
FROM Smart_Philco;

-- Ingestão dos Dados na tabela api_samsung

INSERT INTO api_samsumg (item_id, title, price, currency, available_quantity, description, condition)
SELECT field1, field2, field3, field4, field5, field6, field7
FROM Smart_Samsumg;

-- Ingestão dos Dados na tabela api_lg
INSERT INTO api_lg (item_id, title, price, currency, available_quantity, description, condition)
SELECT field1, field2, field3, field4, field5, field6, field7
FROM lg;

--Apagando as tabelas antigas
drop TABLE lg
drop TABLE Smart_Britnânia
drop TABLE Smart_Philco
drop table Smart_Samsumg
