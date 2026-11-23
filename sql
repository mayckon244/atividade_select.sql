CREATE TABLE cliente (
  id INT PRIMARY KEY AUTO_INCREMENT,
  nome VARCHAR(100) NOT NULL,
  telefone VARCHAR(20)
);
CREATE TABLE pizza (
  id INT PRIMARY KEY AUTO_INCREMENT,
  sabor VARCHAR(50) NOT NULL,
  tamanho VARCHAR(10),
  preco DECIMAL(6,2)
);
CREATE TABLE pedido (
  id INT PRIMARY KEY AUTO_INCREMENT,
  data_hora DATETIME,
  valor_total DECIMAL(8,2)
);
INSERT INTO cliente (nome, telefone) VALUES
('Ana Souza', '71911112222'),
('Bruno Lima', '71922223333'),
('Carla Dias', '71933334444'),
('Marta Reis', '71955556666'),
('Marcos Paz', '71966667777'),
('Paula Rocha', '71977778888');
SELECT * FROM cliente;
INSERT INTO pizza (sabor, tamanho, preco) VALUES
('Calabresa', 'Grande', 52.00),
('Calabresa', 'Pequena', 32.00),
('Frango com catupiry', 'Grande', 58.00),
('Mussarela', 'Grande', 48.00),
('Mussarela', 'Pequena', 29.00),
('Portuguesa', 'Grande', 62.00),
('Quatro queijos', 'Grande', 66.00),
('Chocolate', 'Pequena', 34.00);
SELECT * FROM pizza;
INSERT INTO pedido (data_hora, valor_total) VALUES
('2026-11-14 19:10:00', 58.00),
('2026-11-14 20:05:00', 112.50),
('2026-11-15 12:30:00', 48.00),
('2026-11-16 21:00:00', 134.90),
('2026-11-17 19:00:00', 74.00),
('2026-11-18 20:30:00', 52.00),
('2026-11-19 19:40:00', 120.00),
('2026-11-21 21:15:00', 104.00);
SELECT * FROM pedido;
SELECT * FROM cliente;
SELECT nome, telefone FROM cliente;
SELECT * FROM pizza
WHERE tamanho = 'Grande';
SELECT * FROM pizza
WHERE preco > 50;
SELECT * FROM pizza
WHERE tamanho = 'Grande'
AND preco < 60;
SELECT * FROM pizza
WHERE sabor = 'Calabresa'
OR sabor = 'Frango com catupiry';
SELECT * FROM cliente
WHERE nome LIKE 'M%';
SELECT * FROM pizza
ORDER BY preco ASC;
SELECT * FROM pedido
ORDER BY valor_total DESC;
SELECT * FROM pedido
ORDER BY valor_total DESC
LIMIT 3;
DROP DATABASE IF EXISTS suporte_select;

CREATE DATABASE suporte_select;

USE suporte_select;
CREATE TABLE funcionario (
  id INT PRIMARY KEY AUTO_INCREMENT,
  nome VARCHAR(100) NOT NULL,
  email VARCHAR(100),
  cargo VARCHAR(50)
);
CREATE TABLE chamado (
  id INT PRIMARY KEY AUTO_INCREMENT,
  descricao TEXT,
  data_abertura DATETIME,
  status VARCHAR(20),
  prioridade VARCHAR(10)
);
INSERT INTO funcionario (nome, email, cargo) VALUES
('Helena Matos', 'helena@empresa.com', 'Analista'),
('Igor Pires', 'igor@empresa.com', 'Gerente'),
('Julia Nunes', 'julia@empresa.com', 'Analista'),
('Kleber Souza', 'kleber@empresa.com', 'Assistente'),
('Larissa Melo', 'larissa@empresa.com', 'Analista'),
('Mauro Dias', 'mauro@empresa.com', 'Diretor');
INSERT INTO chamado (descricao, data_abertura, status, prioridade) VALUES
('Internet sem conexao', '2026-11-10 09:15:00', 'aberto', 'alta'),
('Erro no sistema de vendas', '2026-11-10 10:40:00', 'em andamento', 'alta'),
('Impressora nao imprime', '2026-11-11 08:50:00', 'fechado', 'baixa'),
('Senha bloqueada', '2026-11-11 14:20:00', 'fechado', 'media'),
('Computador lento', '2026-11-12 09:00:00', 'aberto', 'media'),
('Internet instavel no setor financeiro', '2026-11-12 15:30:00', 'em andamento', 'alta'),
('Monitor sem imagem', '2026-11-16 08:30:00', 'aberto', 'baixa'),
('Backup nao concluido', '2026-11-17 17:45:00', 'em andamento', 'alta'),
('Email nao envia', '2026-11-18 09:25:00', 'aberto', 'alta'),
('Atualizar sistema operacional', '2026-11-19 13:00:00', 'fechado', 'baixa');
SELECT * FROM funcionario;
SELECT * FROM chamado;
SELECT descricao, status FROM chamado;
SELECT * FROM chamado
WHERE status = 'aberto';
SELECT * FROM chamado
WHERE status = 'aberto'
AND prioridade = 'alta';
SELECT * FROM chamado
WHERE status = 'fechado'
OR prioridade = 'alta';
SELECT * FROM chamado
WHERE descricao LIKE '%internet%';
SELECT * FROM chamado
WHERE data_abertura >= '2026-11-15';
SELECT * FROM funcionario
ORDER BY nome ASC;
SELECT * FROM chamado
ORDER BY data_abertura DESC;
SELECT * FROM chamado
ORDER BY data_abertura ASC
LIMIT 2;
