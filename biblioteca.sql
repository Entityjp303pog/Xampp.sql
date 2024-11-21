-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 19/11/2024 às 18:46
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `biblioteca(mariana)`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `clientes`
--

CREATE TABLE `clientes` (
  `Id_cliente` int(11) NOT NULL,
  `CPF` bigint(11) NOT NULL,
  `Nome` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `CEP` int(11) NOT NULL,
  `Data_nasc` date NOT NULL,
  `Num_telefone` bigint(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `clientes`
--

INSERT INTO `clientes` (`Id_cliente`, `CPF`, `Nome`, `Email`, `CEP`, `Data_nasc`, `Num_telefone`) VALUES
(1, 14713127402, 'Fernando Silva de Vasconcelos', 'FernandoFofao@gmail.com', 20347250, '1984-03-21', 81982234578),
(2, 22898419320, 'Jorge Paixão Carvalho Pinto', 'JorgePCP@gmail.com', 77328562, '2004-07-14', 81988764622),
(3, 13964595139, 'Gabriel da Costa Salvador', 'SalvadorCosta@gmail.com', 45622891, '1992-11-05', 81956740252),
(4, 8194246012, 'Robson Melo Alves Ferraz', 'Robsday@gmail.com', 12391450, '2000-07-25', 81922825907),
(5, 75545217489, 'Rilton França da Silva Jr', 'Riltonfranc@gmail.com', 452987003, '1975-09-07', 81992247892),
(6, 54935893458, 'Jaime Orthuga', 'JaimeOrthOR@hotmail.com', 1153000, '1984-12-07', 81984890237);

-- --------------------------------------------------------

--
-- Estrutura para tabela `emprestimos`
--

CREATE TABLE `emprestimos` (
  `Id_emprestimo` int(11) NOT NULL,
  `Id_Livro` int(11) NOT NULL,
  `Id_Cliente` int(11) NOT NULL,
  `Data_Emprestimo` date NOT NULL,
  `data_devolucao` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `emprestimos`
--

INSERT INTO `emprestimos` (`Id_emprestimo`, `Id_Livro`, `Id_Cliente`, `Data_Emprestimo`, `data_devolucao`) VALUES
(1, 1, 6, '2020-08-27', '2020-10-19'),
(2, 6, 2, '2024-03-05', '2024-06-22'),
(3, 3, 3, '2022-05-10', '2022-11-08'),
(4, 5, 4, '2018-12-11', '2019-02-24'),
(5, 4, 5, '2000-07-02', '2000-10-14'),
(6, 2, 1, '2007-04-04', '2007-12-30'),
(7, 2, 5, '2019-06-25', '2019-09-25'),
(8, 6, 4, '2023-11-28', '2024-03-01'),
(9, 1, 3, '2021-10-13', '2021-12-29'),
(10, 5, 6, '2020-07-17', '2020-09-18');

-- --------------------------------------------------------

--
-- Estrutura para tabela `livros`
--

CREATE TABLE `livros` (
  `Id_livro` int(11) NOT NULL,
  `autor` varchar(255) NOT NULL,
  `genero` varchar(255) NOT NULL,
  `Nome` varchar(255) NOT NULL,
  `Data_publicacao` date NOT NULL,
  `Sinopse` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `livros`
--

INSERT INTO `livros` (`Id_livro`, `autor`, `genero`, `Nome`, `Data_publicacao`, `Sinopse`) VALUES
(1, 'Matt Haig', 'Romance', 'A biblioteca da Meia noite', '2020-08-13', 'Aos 35 anos, Nora Seed Ã© uma mulher cheia de talentos e poucas conquistas. Arrependida das escolhas que fez no passado, ela vive se perguntando o que poderia ter acontecido caso tivesse vivido de maneira diferente. ApÃ³s ser demitida e seu gato ser atrop'),
(2, 'C. J. Tudor', 'Suspense', 'O homem de giz', '2018-01-01', 'Em 1986, Eddie e os amigos passam a maior parte dos dias andando de bicicleta pela pacata vizinhança em busca de aventuras. Os desenhos a giz são seu código secreto: homenzinhos rabiscados no asfalto; mensagens que só eles entendem. Mas um desenho misteri'),
(3, 'Casey McQuiston', 'Romance', 'Vermelho, branco e sangue azul', '2019-05-14', 'Quando sua mãe foi eleita presidenta dos Estados Unidos, Alex Claremont-Diaz se tornou o novo queridinho da mídia norte-americana. Bonito, carismático e com personalidade forte, Alex tem tudo para seguir os passos de seus pais e conquistar uma carreira na'),
(4, 'Eduardo Galeano', 'Ficção', 'O livro dos abraços', '1989-01-01', 'Tratar a memória como coisa viva, bicho inquieto: assim faz Eduardo Galeano quando escreve. Sua memória pessoal e a nossa memória coletiva, da América. Quando escreve, ele mostra que a história pode - e deve - ser contada a partir de pequenos momentos, aq'),
(5, 'Akapoeta', 'Poesia', 'O livro dos ressignificados', '2017-08-28', 'Antes aprisionadas na formalidade dos dicionários, palavras como “girassol”, “Deus”, “sonho”, “tatuagem”, “cafuné” e muitas outras são libertadas por João Doederlein ― que assina com o pseudônimo Akapoeta ― neste seu primeiro livro. Elas são repensadas a '),
(6, 'Tahereh Mafi', 'Romance', 'Estilhaça-me', '2011-11-15', 'Com apenas um toque, Juliette Ferrars é capaz de fazer um homem adulto se ajoelhar de dor e implorar por misericórdia. Um único toque de Juliette pode matar.  Ninguém sabe por que a garota tem um poder tão impressionante, o qual ela acredita ser uma maldi');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`Id_cliente`);

--
-- Índices de tabela `emprestimos`
--
ALTER TABLE `emprestimos`
  ADD PRIMARY KEY (`Id_emprestimo`),
  ADD KEY `Id_Livro` (`Id_Livro`),
  ADD KEY `Id_Cliente` (`Id_Cliente`);

--
-- Índices de tabela `livros`
--
ALTER TABLE `livros`
  ADD PRIMARY KEY (`Id_livro`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `clientes`
--
ALTER TABLE `clientes`
  MODIFY `Id_cliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `emprestimos`
--
ALTER TABLE `emprestimos`
  MODIFY `Id_emprestimo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `livros`
--
ALTER TABLE `livros`
  MODIFY `Id_livro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
