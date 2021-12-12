-- --------------------------------------------------------
-- Servidor:                     127.0.0.1
-- Versão do servidor:           10.7.1-MariaDB - mariadb.org binary distribution
-- OS do Servidor:               Win64
-- HeidiSQL Versão:              11.3.0.6295
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Copiando estrutura para tabela trabalho.pessoa
CREATE TABLE IF NOT EXISTS `pessoa` (
  `cpf` bigint(20) NOT NULL,
  `nome` varchar(70) NOT NULL,
  `dt_nascimento` date NOT NULL,
  `email` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`cpf`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- Copiando dados para a tabela trabalho.pessoa: ~5 rows (aproximadamente)
/*!40000 ALTER TABLE `pessoa` DISABLE KEYS */;
INSERT INTO `pessoa` (`cpf`, `nome`, `dt_nascimento`, `email`) VALUES
	(15162209007, 'Gustavo Souza', '1991-01-17', 'gusouza@gmail.com'),
	(20552895008, 'Ana Clara', '2000-12-12', 'anaclara@hotmail.com'),
	(38411345050, 'Antônio Gonçalves', '1970-05-03', 'ag123@gmail.com'),
	(54319126076, 'Felipe Figueiredo', '1984-11-10', 'felipefig33@outlook.com'),
	(56304702051, 'João Francisco', '1995-07-22', 'joao22@hotmail.com');
/*!40000 ALTER TABLE `pessoa` ENABLE KEYS */;

-- Copiando estrutura para tabela trabalho.profissional
CREATE TABLE IF NOT EXISTS `profissional` (
  `cpf` bigint(20) NOT NULL,
  `nome_profissional` varchar(70) NOT NULL,
  `funcao` varchar(70) NOT NULL,
  `telefone` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`cpf`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- Copiando dados para a tabela trabalho.profissional: ~3 rows (aproximadamente)
/*!40000 ALTER TABLE `profissional` DISABLE KEYS */;
INSERT INTO `profissional` (`cpf`, `nome_profissional`, `funcao`, `telefone`) VALUES
	(12980965022, 'Felipe Silva', 'Enfermeiro', 6931242628),
	(29812388095, 'Larissa Martins', 'Enfermeiro', 6320284803),
	(64510393067, 'Felix Pires', 'Clinico Geral', 6535438385);
/*!40000 ALTER TABLE `profissional` ENABLE KEYS */;

-- Copiando estrutura para tabela trabalho.vacina
CREATE TABLE IF NOT EXISTS `vacina` (
  `id` int(11) NOT NULL,
  `nome_vacina` enum('Pfizer','Moderna','Coronavac','AstraZeneca') NOT NULL,
  `fabricante` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- Copiando dados para a tabela trabalho.vacina: ~4 rows (aproximadamente)
/*!40000 ALTER TABLE `vacina` DISABLE KEYS */;
INSERT INTO `vacina` (`id`, `nome_vacina`, `fabricante`) VALUES
	(115, 'AstraZeneca', 'Fiocruz'),
	(348, 'Coronavac', 'Sinovac'),
	(536, 'Pfizer', 'BioNTech'),
	(942, 'Moderna', 'Moderna');
/*!40000 ALTER TABLE `vacina` ENABLE KEYS */;

-- Copiando estrutura para tabela trabalho.vacinacao
CREATE TABLE IF NOT EXISTS `vacinacao` (
  `id_vacinacao` int(11) NOT NULL,
  `dt_dose1` date DEFAULT NULL,
  `dt_dose2` date DEFAULT NULL,
  `pessoa_cpf` bigint(20) NOT NULL,
  `profissional_cpf` bigint(20) NOT NULL,
  `vacina_id` int(11) NOT NULL,
  PRIMARY KEY (`id_vacinacao`),
  KEY `pessoa_cpf` (`pessoa_cpf`),
  KEY `profissional_cpf` (`profissional_cpf`),
  KEY `vacina_id` (`vacina_id`),
  CONSTRAINT `vacinacao_ibfk_1` FOREIGN KEY (`pessoa_cpf`) REFERENCES `pessoa` (`cpf`),
  CONSTRAINT `vacinacao_ibfk_2` FOREIGN KEY (`profissional_cpf`) REFERENCES `profissional` (`cpf`),
  CONSTRAINT `vacinacao_ibfk_3` FOREIGN KEY (`vacina_id`) REFERENCES `vacina` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- Copiando dados para a tabela trabalho.vacinacao: ~5 rows (aproximadamente)
/*!40000 ALTER TABLE `vacinacao` DISABLE KEYS */;
INSERT INTO `vacinacao` (`id_vacinacao`, `dt_dose1`, `dt_dose2`, `pessoa_cpf`, `profissional_cpf`, `vacina_id`) VALUES
	(1658679, '2021-07-05', '2021-12-14', 56304702051, 29812388095, 942),
	(1659152, '2021-01-19', '2021-01-28', 54319126076, 12980965022, 348),
	(2146531, '2021-12-01', '2022-03-05', 15162209007, 64510393067, 536),
	(3516352, '2021-04-21', '2021-05-05', 38411345050, 64510393067, 536),
	(6511258, '2021-03-14', '2021-05-20', 20552895008, 64510393067, 536);
/*!40000 ALTER TABLE `vacinacao` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
