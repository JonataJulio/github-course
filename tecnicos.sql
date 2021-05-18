-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 17-Maio-2021 às 23:59
-- Versão do servidor: 10.4.17-MariaDB
-- versão do PHP: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `funcionarios`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `tecnicos`
--

CREATE TABLE `tecnicos` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `usuario` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `cpf` varchar(60) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `telefone` varchar(60) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `endereco` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `curso` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `validade` int(10) NOT NULL,
  `instituicao` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `cidade` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tecnicos`
--

INSERT INTO `tecnicos` (`id`, `nome`, `usuario`, `cpf`, `telefone`, `endereco`, `curso`, `validade`, `instituicao`, `cidade`) VALUES
(2, 'Denis Daier Borges', 'denis', '047.619.476-83', '35988285106', 'R JOAO ANTONIO DE OLIVEIRA', 'Fisica', 48, 'Unifran', 'POCOS DE CALDAS'),
(3, 'Victor', 'Victor', '156.360.436-19', '35988020802', 'joao antonio de oliveira 456', 'elétrica predial', 12, 'senai', 'pocos de caldas');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `tecnicos`
--
ALTER TABLE `tecnicos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `tecnicos`
--
ALTER TABLE `tecnicos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
