-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 08-Out-2024 às 19:36
-- Versão do servidor: 10.4.25-MariaDB
-- versão do PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `bibiotecajp3e`
--
CREATE DATABASE IF NOT EXISTS `bibiotecajp3e` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `bibiotecajp3e`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `clientes`
--

CREATE TABLE `clientes` (
  `id_clientes` int(11) NOT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `dtnasc` date DEFAULT NULL,
  `cpf` varchar(255) DEFAULT NULL,
  `ra` int(11) DEFAULT NULL,
  `bairro` varchar(255) DEFAULT NULL,
  `cidade_uf` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `clientes`
--

INSERT INTO `clientes` (`id_clientes`, `nome`, `dtnasc`, `cpf`, `ra`, `bairro`, `cidade_uf`) VALUES
(1, 'Antonio Carlos', '2004-01-01', '77766677723', 574829654, 'Areia branca', 'Igarassu-PE'),
(2, 'Cassio Cleiton', '2000-10-07', '93471285210', 843571275, 'Posto do Monta', 'Igarassu-PE'),
(3, 'Marco Junior', '1983-08-24', '01938192571', 892756120, 'Suruanana', 'Tamandaré'),
(4, 'Arthur Luís', '2007-03-26', '71642375381', 749715382, 'CaetesI', 'Abreu e Lima'),
(5, 'João Marcedo', '0000-00-00', '01859275444', 859107819, 'Jaguarana', 'Paulista');

-- --------------------------------------------------------

--
-- Estrutura da tabela `emprestimo`
--

CREATE TABLE `emprestimo` (
  `id_Emprestimo` int(11) NOT NULL,
  `Data_emprestimo` date DEFAULT NULL,
  `Data_devolução` date DEFAULT NULL,
  `CodLivro` int(11) DEFAULT NULL,
  `CodClientes` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `emprestimo`
--

INSERT INTO `emprestimo` (`id_Emprestimo`, `Data_emprestimo`, `Data_devolução`, `CodLivro`, `CodClientes`) VALUES
(1, '2020-02-20', '2022-01-30', 5, 1),
(2, '2019-12-15', '2022-01-02', 4, 2),
(3, '2020-01-06', '2022-01-13', 3, 3),
(4, '2020-03-20', '2022-01-06', 2, 4),
(5, '2020-02-19', '2022-01-06', 1, 5),
(6, '2019-04-10', '2020-03-01', 1, 5),
(7, '2025-04-20', '2024-05-20', 2, 4),
(8, '2024-10-18', '2024-11-15', 3, 3),
(9, '2024-06-17', '2025-01-08', 4, 2),
(10, '2026-04-13', '2026-04-16', 5, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `livro`
--

CREATE TABLE `livro` (
  `id_livro` int(11) NOT NULL,
  `Titulo` varchar(255) DEFAULT NULL,
  `Autor` varchar(255) DEFAULT NULL,
  `Genero` varchar(255) DEFAULT NULL,
  `ano_pub` int(11) DEFAULT NULL,
  `pagina` int(11) DEFAULT NULL,
  `editora` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `livro`
--

INSERT INTO `livro` (`id_livro`, `Titulo`, `Autor`, `Genero`, `ano_pub`, `pagina`, `editora`) VALUES
(1, 'O Pequeno Príncipe', 'Antoine de Saint', 'fantasia', 1943, 96, 'HarperCollins Brasil'),
(2, 'A Arte da Guerra', 'Sun Tzu', 'Tratado', 500, 128, 'Editora Record'),
(3, 'Vilão', 'V. E. Schwab', 'Ficção', 2019, 388, 'Skoob'),
(4, 'MAUS', 'Art Spiegelman', 'Romance em quadrinhos', 1986, 296, 'Schwarcz S.A.'),
(5, 'Ordem Paranormal', 'Rafael Lange', 'Terror', 2023, 176, 'Jambo');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id_clientes`);

--
-- Índices para tabela `emprestimo`
--
ALTER TABLE `emprestimo`
  ADD PRIMARY KEY (`id_Emprestimo`),
  ADD KEY `CodLivro` (`CodLivro`),
  ADD KEY `CodClientes` (`CodClientes`);

--
-- Índices para tabela `livro`
--
ALTER TABLE `livro`
  ADD PRIMARY KEY (`id_livro`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id_clientes` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `emprestimo`
--
ALTER TABLE `emprestimo`
  MODIFY `id_Emprestimo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `livro`
--
ALTER TABLE `livro`
  MODIFY `id_livro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `emprestimo`
--
ALTER TABLE `emprestimo`
  ADD CONSTRAINT `emprestimo_ibfk_1` FOREIGN KEY (`CodLivro`) REFERENCES `livro` (`id_livro`),
  ADD CONSTRAINT `emprestimo_ibfk_2` FOREIGN KEY (`CodClientes`) REFERENCES `clientes` (`id_clientes`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
