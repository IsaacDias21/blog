-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 26/04/2026 às 01:16
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
-- Banco de dados: `blog`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `categorias`
--

CREATE TABLE `categorias` (
  `id` int(11) NOT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `titulo` varchar(255) NOT NULL,
  `texto` text DEFAULT NULL,
  `visitas` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `cadastrado_em` datetime DEFAULT NULL,
  `atualizado_em` datetime DEFAULT NULL,
  `ultima_visita_em` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `categorias`
--

INSERT INTO `categorias` (`id`, `slug`, `titulo`, `texto`, `visitas`, `status`, `cadastrado_em`, `atualizado_em`, `ultima_visita_em`) VALUES
(1, 'tecnologia', 'Tecnologia', 'Tudo sobre Tecnologia você encontra aqui...', 25, 1, '2026-04-01 18:34:56', NULL, '2026-04-25 20:11:03'),
(2, 'php', 'PHP', 'Tudo sobre PHP você encontra aqui...', 1, 1, '2026-04-02 18:35:02', NULL, '2026-04-25 20:09:20'),
(3, 'seguranca', 'Segurança', 'Tudo sobre Segurança você encontra aqui...', 0, 1, '2026-04-03 18:35:05', NULL, NULL),
(4, 'mysql', 'MySQL', 'Tudo sobre MYSQL você encontra aqui...', 0, 1, '2026-04-05 18:35:07', NULL, NULL),
(5, 'teste', 'teste', 'teste', 1, 0, '2026-04-08 18:35:11', NULL, '2026-04-25 19:49:22'),
(6, 'futebol', 'Futebol', 'Futebol', 0, 1, '2026-04-25 19:22:52', NULL, NULL),
(7, NULL, '', NULL, 1, 1, NULL, NULL, '2026-04-25 19:41:38');

-- --------------------------------------------------------

--
-- Estrutura para tabela `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `titulo` varchar(255) NOT NULL,
  `texto` text DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `visitas` int(11) DEFAULT NULL,
  `categoria_id` int(11) DEFAULT NULL,
  `cadastrado_em` datetime DEFAULT NULL,
  `atualizado_em` datetime DEFAULT NULL,
  `usuario_id` int(11) NOT NULL,
  `ultima_visita_em` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `posts`
--

INSERT INTO `posts` (`id`, `slug`, `titulo`, `texto`, `status`, `visitas`, `categoria_id`, `cadastrado_em`, `atualizado_em`, `usuario_id`, `ultima_visita_em`) VALUES
(1, 'o-que-e-um-sistema-MVC', 'O que é um sistema MVC?', 'MVC é o acrônimo de Model-View-Controller (em português: Arquitetura Modelo-Visão-Controle - MVC) é um padrão de projeto de software, ou padrão de arquitetura de software formulado na década de 1970, focado no reuso de código e a separação de conceitos em três camadas interconectadas, onde a apresentação dos dados e interação dos usuários (front-end) são separados dos métodos que interagem com o banco de dados (back-end).', 1, 10, 2, '2026-04-24 18:20:00', '2026-04-25 19:04:46', 1, '2026-04-25 20:11:01'),
(2, 'o-que-o-php-pode-fazer', 'O que o PHP pode fazer?', 'Com PHP, é possível criar aplicações web, como sites, lojas virtuais, plugins para WordPress, e-commerce, entre outros. O usuário pode usar PHP para programar em qualquer projeto e, depois, comercializá-lo tranquilamente. Além disso, a outra vantagem é a possibilidade de melhorias constantes no código, algo que a comunidade de programadores costuma fazer.', 1, 3, 2, '2026-04-01 15:20:52', NULL, 1, '2026-04-25 19:13:11'),
(3, 'o-que-e-o-php', 'O que é o PHP?', 'O PHP é uma linguagem de programação de código aberto, do lado do servidor, que funciona a partir de instruções em forma de código. É compatível com praticamente todos os sistemas operacionais. ', 1, 5, 1, '2026-03-15 18:21:01', NULL, 1, '2026-04-25 20:11:04'),
(4, 'o-que-e-o-pdo', 'PDO(PHP Data Object)', 'PDO, que significa PHP Data Objects, é uma classe em PHP que proporciona uma forma padronizada e orientada a objetos para interagir com bancos de dados. Ela oferece uma interface leve e consistente para acessar diversos sistemas de gerenciamento de banco de dados (SGBD), como MySQL, PostgreSQL e outros.', 1, 2, 3, '2026-02-02 11:30:05', NULL, 1, '2026-04-25 19:15:28'),
(5, 'o-que-e-o-mysql', 'O que é o MySQL?', 'O MySQL é um sistema de gerenciamento de banco de dados (SGBD) relacional e de código aberto. Ele é usado para armazenar e gerenciar dados estruturados em tabelas, linhas e colunas. ', 1, 2, 4, '2026-04-17 18:21:12', NULL, 1, '2026-04-25 20:10:58'),
(6, 'o-que-e-o-twig', 'O que é o Twig?', 'Twig é um template engine, ou seja, um sistema que permite criar e gerenciar templates em PHP. Ele facilita a criação de layouts e páginas web, separando a lógica do código PHP do HTML, o que melhora a organização e manutenção do código.', 1, 1, 5, '2026-04-12 12:22:07', NULL, 1, '2026-04-25 19:16:09'),
(7, 'sua-conta-permite-cadastrar', 'sua conta permite cadastrar', 'sua conta permite cadastrar', 1, 2, 1, '2026-04-25 19:03:05', NULL, 0, '2026-04-25 19:03:54'),
(8, 'sua-conta-permite-editar', 'sua conta permite editar', 'sua conta permite editar', 1, 1, 1, '2026-04-25 19:12:01', NULL, 0, '2026-04-25 19:13:13');

-- --------------------------------------------------------

--
-- Estrutura para tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `level` varchar(255) DEFAULT NULL,
  `nome` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `senha` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `ultimo_login` datetime DEFAULT NULL,
  `cadastrado_em` datetime NOT NULL DEFAULT current_timestamp(),
  `atualizado_em` datetime DEFAULT NULL,
  `ultimo_logout` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `usuarios`
--

INSERT INTO `usuarios` (`id`, `level`, `nome`, `email`, `senha`, `status`, `ultimo_login`, `cadastrado_em`, `atualizado_em`, `ultimo_logout`) VALUES
(1, 'Admin', 'Isaac Caraça', 'isaaccaracayahoo@gmail.com', '$2y$10$8NzSlXUUIZ8iVpfx6Zb5ue9f9TWmFtt2FgYT3nsxe/YMIm4jI4dnC', 1, '2026-04-25 19:22:26', '2025-05-19 19:44:38', '2026-04-25 19:00:09', '2026-04-25 19:23:03'),
(2, 'Usuario', 'Tia Leila', 'teste@teste', '12345678', 1, NULL, '2025-05-19 19:45:50', NULL, '0000-00-00 00:00:00');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`);

--
-- Índices de tabela `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`),
  ADD KEY `categoria` (`categoria_id`);

--
-- Índices de tabela `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de tabela `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de tabela `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `categoria` FOREIGN KEY (`categoria_id`) REFERENCES `categorias` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
