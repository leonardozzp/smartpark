-- phpMyAdmin SQL Dump
-- version 4.0.4.2
-- http://www.phpmyadmin.net
--
-- Máquina: localhost
-- Data de Criação: 06-Jun-2017 às 00:45
-- Versão do servidor: 5.6.13
-- versão do PHP: 5.4.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de Dados: `smartpark`
--
CREATE DATABASE IF NOT EXISTS `smartpark` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `smartpark`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `locacao`
--

CREATE TABLE IF NOT EXISTS `locacao` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idvaga` int(40) NOT NULL,
  `cpfcliente` varchar(100) NOT NULL,
  `datainicio` datetime NOT NULL,
  `valor` decimal(50,0) NOT NULL,
  `placa` varchar(8) NOT NULL,
  `datafinal` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idvaga` (`idvaga`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Extraindo dados da tabela `locacao`
--

INSERT INTO `locacao` (`id`, `idvaga`, `cpfcliente`, `datainicio`, `valor`, `placa`, `datafinal`) VALUES
(1, 1, 'asdasdasd', '2017-06-08 00:00:00', '10', 'asd-1234', '2017-06-20 00:00:00');

-- --------------------------------------------------------

--
-- Estrutura da tabela `vagas`
--

CREATE TABLE IF NOT EXISTS `vagas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `numerovaga` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Extraindo dados da tabela `vagas`
--

INSERT INTO `vagas` (`id`, `numerovaga`, `status`) VALUES
(1, 1, 0);

--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `locacao`
--
ALTER TABLE `locacao`
  ADD CONSTRAINT `locacao_ibfk_1` FOREIGN KEY (`idvaga`) REFERENCES `vagas` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
