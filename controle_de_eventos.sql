-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 11-Jun-2021 às 14:32
-- Versão do servidor: 10.4.18-MariaDB
-- versão do PHP: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `ex12_controle_de_eventos`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `aniversario`
--

CREATE TABLE `aniversario` (
  `ID` int(11) NOT NULL,
  `Data_aniversario` date NOT NULL,
  `ID_Local` int(11) NOT NULL,
  `ID_Tipo_Aniversario` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `aniversario`
--

INSERT INTO `aniversario` (`ID`, `Data_aniversario`, `ID_Local`, `ID_Tipo_Aniversario`) VALUES
(1, '2021-04-14', 5, 4),
(2, '2021-06-16', 3, 2),
(3, '2021-06-30', 2, 3),
(4, '2021-05-26', 1, 1),
(5, '2021-07-28', 4, 6);

-- --------------------------------------------------------

--
-- Estrutura da tabela `convite`
--

CREATE TABLE `convite` (
  `ID` int(11) NOT NULL,
  `Horario_inicio` time NOT NULL,
  `Horario_termino` time NOT NULL,
  `ID_Convidado` int(11) NOT NULL,
  `ID_Aniversariante` int(11) NOT NULL,
  `ID_Aniversario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `convite`
--

INSERT INTO `convite` (`ID`, `Horario_inicio`, `Horario_termino`, `ID_Convidado`, `ID_Aniversariante`, `ID_Aniversario`) VALUES
(1, '10:30:00', '21:30:00', 3, 1, 1),
(2, '10:30:00', '21:30:00', 2, 1, 1),
(3, '10:30:00', '21:30:00', 4, 1, 1),
(4, '10:00:00', '19:30:00', 7, 2, 2),
(5, '10:00:00', '19:30:00', 4, 2, 2),
(6, '09:00:00', '21:00:00', 5, 3, 3),
(7, '09:00:00', '21:00:00', 6, 3, 3),
(8, '15:00:00', '22:00:00', 10, 4, 4),
(9, '15:00:00', '22:00:00', 9, 4, 4),
(10, '15:00:00', '22:00:00', 5, 4, 4),
(11, '15:00:00', '22:00:00', 6, 4, 4),
(12, '08:00:00', '16:00:00', 2, 5, 5);

-- --------------------------------------------------------

--
-- Estrutura da tabela `local`
--

CREATE TABLE `local` (
  `ID` int(11) NOT NULL,
  `Descricao` varchar(60) NOT NULL,
  `Rua` varchar(60) NOT NULL,
  `Municipio` varchar(60) NOT NULL,
  `Estado` varchar(60) NOT NULL,
  `Qtd_max_pessoas` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `local`
--

INSERT INTO `local` (`ID`, `Descricao`, `Rua`, `Municipio`, `Estado`, `Qtd_max_pessoas`) VALUES
(1, 'Shopping Dom Pedro', 'Rua j', 'Campinas', 'Sao Paulo', 25),
(2, 'Arena Jaguariúna', 'Rua k', 'Jaguariuna', 'Sao Paulo', 300),
(3, 'Casa Noturna', 'Rua h', 'Valinhos', 'Sao Paulo', 90),
(4, 'Praça', 'Rua l', 'Ribeirao Preto', 'Sao Paulo', 40),
(5, 'Praia', 'Av Brasil', 'Niteroi', 'Rio de Janeiro', 100);

-- --------------------------------------------------------

--
-- Estrutura da tabela `pessoa`
--

CREATE TABLE `pessoa` (
  `ID` int(11) NOT NULL,
  `Nome` varchar(60) NOT NULL,
  `Data_nascimento` date NOT NULL,
  `Sexo` varchar(60) NOT NULL,
  `Email` varchar(60) NOT NULL,
  `CPF` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `pessoa`
--

INSERT INTO `pessoa` (`ID`, `Nome`, `Data_nascimento`, `Sexo`, `Email`, `CPF`) VALUES
(1, 'Baciclides Fabiano', '2010-11-03', 'Masculino', 'baci@gmail.com', 985362147),
(2, 'Andressa Rodrigues', '2013-04-10', 'Feminino', 'andy@outlook.com', 965234782),
(3, 'Caio Barbosa', '2011-04-21', 'Masculino', 'caio@hotmail.com', 985362418),
(4, 'Fernando Pessoa', '2012-01-10', 'Masculino', 'fer@yahoo.com.br', 874002569),
(5, 'Leticia Moraes', '2014-07-24', 'Feminino', 'let@uol.com', 541000),
(6, 'Giovana Costa', '2012-03-14', 'Feminino', 'gio@yahoo.com', 587000),
(7, 'Gabriel Antonio', '2012-06-29', 'Masculino', 'gab@tet.com', 897000),
(8, 'Alexandre Farias', '2012-06-20', 'Masculino', 'a@e.com', 963000),
(9, 'Denise Fabiana', '2011-06-25', 'Feminino', 'd@c.com', 9632510),
(10, 'Tomas Da Silva', '2014-06-25', 'Masculino', 'tom@outlook.com', 9842000);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tipo_de_aniversario`
--

CREATE TABLE `tipo_de_aniversario` (
  `ID` int(11) NOT NULL,
  `Descricao` varchar(60) NOT NULL,
  `Preco_do_tipo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tipo_de_aniversario`
--

INSERT INTO `tipo_de_aniversario` (`ID`, `Descricao`, `Preco_do_tipo`) VALUES
(1, 'Churrasco', 25),
(2, 'Balada', 200),
(3, 'Rodeio', 330),
(4, 'Luau', 50),
(5, 'Netflix and Chill', 5),
(6, 'Piquenique', 15);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `aniversario`
--
ALTER TABLE `aniversario`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `FK-Local` (`ID_Local`),
  ADD KEY `FK-Tipo` (`ID_Tipo_Aniversario`);

--
-- Índices para tabela `convite`
--
ALTER TABLE `convite`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `FK-Convidado` (`ID_Convidado`),
  ADD KEY `FK-Aniversariante` (`ID_Aniversariante`),
  ADD KEY `FK-Aniversario` (`ID_Aniversario`);

--
-- Índices para tabela `local`
--
ALTER TABLE `local`
  ADD PRIMARY KEY (`ID`);

--
-- Índices para tabela `pessoa`
--
ALTER TABLE `pessoa`
  ADD PRIMARY KEY (`ID`);

--
-- Índices para tabela `tipo_de_aniversario`
--
ALTER TABLE `tipo_de_aniversario`
  ADD PRIMARY KEY (`ID`);

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `aniversario`
--
ALTER TABLE `aniversario`
  ADD CONSTRAINT `FK-Local` FOREIGN KEY (`ID_Local`) REFERENCES `local` (`ID`),
  ADD CONSTRAINT `FK-Tipo` FOREIGN KEY (`ID_Tipo_Aniversario`) REFERENCES `tipo_de_aniversario` (`ID`);

--
-- Limitadores para a tabela `convite`
--
ALTER TABLE `convite`
  ADD CONSTRAINT `FK-Aniversariante` FOREIGN KEY (`ID_Aniversariante`) REFERENCES `pessoa` (`ID`),
  ADD CONSTRAINT `FK-Aniversario` FOREIGN KEY (`ID_Aniversario`) REFERENCES `aniversario` (`ID`),
  ADD CONSTRAINT `FK-Convidado` FOREIGN KEY (`ID_Convidado`) REFERENCES `pessoa` (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
