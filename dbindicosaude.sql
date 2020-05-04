-- phpMyAdmin SQL Dump
-- version 4.9.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Tempo de geração: 04/05/2020 às 15:17
-- Versão do servidor: 10.3.22-MariaDB-cll-lve
-- Versão do PHP: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `indicosa_dbindicosaude`
--
CREATE DATABASE IF NOT EXISTS `indicosa_dbindicosaude` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `indicosa_dbindicosaude`;

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_acomodacao`
--

CREATE TABLE `tb_acomodacao` (
  `id_acomodacao` int(11) NOT NULL,
  `no_acomodacao` varchar(45) NOT NULL,
  `ds_acomodacao` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Despejando dados para a tabela `tb_acomodacao`
--

INSERT INTO `tb_acomodacao` (`id_acomodacao`, `no_acomodacao`, `ds_acomodacao`) VALUES
(1, 'Apartamento', 'Apartamento'),
(2, 'Enfermaria', 'Enfermaria');

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_categoria_plano`
--

CREATE TABLE `tb_categoria_plano` (
  `id_categoria_plano` int(11) NOT NULL,
  `id_operadora` int(11) NOT NULL,
  `no_categoria_plano` varchar(45) NOT NULL,
  `ds_categoria_plano` text DEFAULT NULL,
  `ds_rede_credenciada` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Despejando dados para a tabela `tb_categoria_plano`
--

INSERT INTO `tb_categoria_plano` (`id_categoria_plano`, `id_operadora`, `no_categoria_plano`, `ds_categoria_plano`, `ds_rede_credenciada`) VALUES
(1, 1, 'Blue 300 PLUS NACIONAL', 'Plano Coletivo por Adesão (Proposta Única): Fecomercio (Dono de empresa), Sindicom (Carteira assinada Comercio varejista, Une (Estudante de faculdade) e Ubes (Estudante fundamental e médio.', '- HOSPITAL ALVORA TAGUATINGA\r\n- HOSPITAL ALVORADA BRASÍLIA\r\n- HOSPITAL DAHER\r\n- HOSPITAL MARIA AUXILIADORA,\r\n- HOSPITAL PRONTONORTE\r\n- HOSPITAL SÃO FRANCISCO\r\n- UNIDADE MÉDICA AVANÇADA ASA NORTE\r\n- UNIDADE MÉDICA AVANÇADA CEILÂNDIA\r\n- UNIDADE MÉDICA AVANÇADA GUARÁ\r\n- UNIDADE MÉDICA AVANÇADA TAGUATINGA\r\n- CONSULTÓRIO SATÉLITE VALPARAÍSO\r\n- PASTEUR E SANTA PAULA,INBOL E ISOB\r\n'),
(2, 1, 'Blue 500 PLUS NACIONAL', 'Plano Coletivo por Adesão (Proposta Única): Fecomercio (Dono de empresa), Sindicom (Carteira assinada Comercio varejista, Une (Estudante de faculdade) e Ubes (Estudante fundamental e médio.', '- Todos hospitais e laboratórios do Blue 300\r\n- CLÍNICA VIDA\r\n- CLÍNICA AGNELLO\r\n- DIAGNOSTIC\r\n- DIGMED\r\n- ISOB\r\n- MEDCEU\r\n- IMEB\r\n- INBOL\r\n- HOSPITAL MARIA AUXILIADORA\r\n- HOSPITAL PRONTONORTE\r\n- HOSPITAL RENASCER\r\n- HOSPITAL SANTA MARIA\r\n- HOSPITAL SANTA MARTA\r\n- HOSPITAL SANTA PAULA\r\n- HOSPITAL SÃO FRANCISCO\r\n- HOSPITAL SÃO LUCAS\r\n- HOSPITAL ALVORADA BRASÍLIA (HCB)\r\n- HOSPITAL ALVORADA TAGUATINGA\r\n- HOSPITAL JK\r\n- HOSPITAL BRASÍLIA\r\n- HOSPITAL ANCHIETA\r\n- HOSPITAL SANTA HELENA\r\n- HOSPITAL SOCIEDADE MEDICA LUZIÂNIA\r\n- UM-UNIDADE MEDICA: ASA NORTE, CEILÂNDIA, GUARÁ E TAGUATINGA\r\n- LABORATÓRIO: SABIN E PASTEUR'),
(3, 1, 'Blue 600 PLUS NACIONAL', 'Plano Coletivo por Adesão (Proposta Única): Fecomercio (Dono de empresa), Sindicom (Carteira assinada Comercio varejista, Une (Estudante de faculdade) e Ubes (Estudante fundamental e médio.\r\n', '- Todos Hospitais e Laboratórios do Blue 300, 400 e 500 Plus.\r\n- HOSPITAL SANTA LUZIA\r\n- CENTRO SUL\r\n- CLÍNICA VILLAS BOAS\r\n- HOB\r\n'),
(4, 1, 'Blue 400 PLUS NACIONAL', 'Plano Coletivo por Adesão (Proposta Única): Fecomercio (Dono de empresa), Sindicom (Carteira assinada Comercio varejista, Une (Estudante de faculdade) e Ubes (Estudante fundamental e médio.', 'Todos os Hospitais da rede do Blue 300 Plus mais:\r\nLaboratório Sabin, Hospital Home, Hospital Brasilia, Exame Imagem, Clinica Vida e Santa Marta.'),
(5, 2, 'Exato', 'PLANO NÃO COMERCIALIZADO', '\r\n'),
(6, 2, 'Especial', '- Remoção médica do segurado;\r\n- Retorno de acompanhantes;\r\n- Acompanhante em caso de hospitalização do segurado, por período superior a cinco dias;\r\n- Hospedagem do acompanhante por até cinco diárias;\r\n- Prolongamento da estada do segurado;\r\n- Remoção em caso de falecimento do segurado;\r\n- Retorno antecipado do segurado ao seu domicílio;\r\n- Auxílio em caso de bagagem extraviada;\r\n- Motorista substituto no Brasil;\r\n- Reembolso de tarifa por passagem perdida.\r\n\r\nCobertura para TODOS os tipos de Transplantes: Fígado, pâncreas, coração, pulmão alem de rim, córnea e transplante de medula óssea.\r\n\r\nEscleroterapia (aplicação de varizes), Fonoaudiologia e Psicomotricidade – 30 sessões por ano;\r\n\r\nRemissão: cobertura por 03 anos (isenção da mensalidade) sem custos para os beneficiários, em caso de óbito ou invalidez total permanente do titular.\r\n\r\nInclusão de filhos solteiros de QUALQUER IDADE.\r\n\r\nAssistência 24 horas incluída SEM NUNHUM CUSTO ADICIONAL:', '-Toda rede do plano básico \r\n-Rede credenciada mais ampla (Goiânia, São Paulo e Rio de Janeiro)\r\n'),
(7, 2, 'Executivo', '- Remoção médica do segurado;\r\n- Retorno de acompanhantes;\r\n- Acompanhante em caso de hospitalização do segurado, por período superior a cinco dias;\r\n- Hospedagem do acompanhante por até cinco diárias;\r\n- Prolongamento da estada do segurado;\r\n- Remoção em caso de falecimento do segurado;\r\n- Retorno antecipado do segurado ao seu domicílio;\r\n- Auxílio em caso de bagagem extraviada;\r\n- Motorista substituto no Brasil;\r\n- Reembolso de tarifa por passagem perdida.\r\n\r\nCobertura para TODOS os tipos de Transplantes: Fígado, pâncreas, coração, pulmão alem de rim, córnea e transplante de medula óssea.\r\n\r\nEscleroterapia (aplicação de varizes), Fonoaudiologia e Psicomotricidade – 30 sessões por ano;\r\n\r\nRemissão: cobertura por 03 anos (isenção da mensalidade) sem custos para os beneficiários, em caso de óbito ou invalidez total permanente do titular.\r\n\r\nInclusão de filhos solteiros de QUALQUER IDADE.\r\n\r\nAssistência 24 horas incluída SEM NUNHUM CUSTO ADICIONAL:', '-Toda rede do plano básico\r\n-Rede credenciada mais ampla (Goiânia, São Paulo e Rio de Janeiro)\r\n-Hospital Albert Einstein'),
(8, 3, 'DIX 100', 'OBS: NÃO EXISTE O PLANO DIX 100 APTO  \r\nPlano com cobertura regional* (somente DF).\r\nPor mais R$21,99, contrate Amil Dental(Contratação e permanecia, somente com plano médico)*Valor por beneficiário.', '- HOSPITAL ALVORA BRASÍLIA (HCB)\r\n- HOSPITAL ALVORA TAGUATINGA\r\n- LABORATÓRIO EXAME: PASTEUR, SANTA PAULA\r\n- UNIDADE MEDICA ASA NORTE\r\n- UNIDADE MEDICA CEILÂNDIA\r\n- UNIDADE MEDICA TAGUATINGA\r\n- UNIDADE MEDICA GUARÁ \r\n- CONSULTÓRIO SATÉLITE VALPARAÍSO Nº1\r\n-INBOL, ISOB E MANSÃO VIDA.'),
(9, 4, 'Essencial - Familiar', 'Cobertura de assistência com 24h. \r\n\r\nGOLDEN MED (isento de pagamento nos 9 primeiros meses).\r\n\r\nGOLDEN DENTAL II (isento nos 12 primeiros meses).', '- Hospital Pronto Norte\r\n- Hospital Santa Helena\r\n- HOB\r\n- Hospital São Lucas\r\n- Hospital Unimed\r\n- Hospital Urologico CAU\r\n- Hospital HCB\r\n- Hospital Daher\r\n- Hospital São Francisco\r\n- Hospital Alvorada\r\n- Hospital Maria Auxiliadora\r\n- Hospital Santa Marta\r\n- Climed\r\n- Hospital Santa Luzia Luziania\r\n- Previquali\r\n- Hospital Renascer\r\n- Materno Infantil Sobradinho\r\n- Hospital JK Carpevie Centro de Med. Integrada\r\n- Laboratórios: Exame, Pasteur, Micra, Planalto, Imuno, santa Cruz, Analise Carlos Chagas, Patologia Prevenção de Câncer e Sabin'),
(10, 4, 'Especial - Familiar', 'Cobertura de assistência com 24h. \r\n\r\nGOLDEN MED (isento de pagamento nos 9 primeiros meses).\r\n\r\nGOLDEN DENTAL II (isento nos 12 primeiros meses).', '- Hospital Anchieta\r\n- Hospital Pronto Norte\r\n- Hospital Santa Helena\r\n- HOB\r\n- Hospital São Lucas\r\n- Hospital Unimed\r\n- Hospital Urologico CAU\r\n- Hospital HCB\r\n- Hospital Daher\r\n- Hospital São Francisco\r\n- Hospital Alvorada\r\n- Hospital Maria Auxiliadora\r\n- Hospital Santa Marta\r\n- Climed\r\n- Hospital Santa Luzia Luziania\r\n- Previquali\r\n- Hospital Renascer\r\n- Materno Infantil Sobradinho\r\n- Hospital JK Carpevie Centro de Med. Integrada\r\n- Laboratórios: Exame, Pasteur, Micra, Planalto, Imuno, santa Cruz, Analise Carlos Chagas, Patologia Prevenção de Câncer e Sabin'),
(11, 4, 'Especial - Individual', 'Cobertura de assistência com 24h. \r\n\r\nGOLDEN MED (isento de pagamento nos 9 primeiros meses).\r\n\r\nGOLDEN DENTAL II (isento nos 12 primeiros meses).', '- Hospital Pronto Norte\r\n- Hospital Santa Helena\r\n- HOB\r\n- Hospital São Lucas\r\n- Hospital Unimed\r\n- Hospital Urologico CAU\r\n- Hospital HCB\r\n- Hospital Daher\r\n- Hospital São Francisco\r\n- Hospital Alvorada\r\n- Hospital Maria Auxiliadora\r\n- Hospital Santa Marta\r\n- Climed\r\n- Hospital Santa Luzia Luziania\r\n- Previquali\r\n- Hospital Renascer\r\n- Materno Infantil Sobradinho\r\n- Hospital JK Carpevie Centro de Med. Integrada\r\n- Laboratórios: Exame, Pasteur, Micra, Planalto, Imuno, santa Cruz, Analise Carlos Chagas, Patologia Prevenção de Câncer e Sabin'),
(12, 4, 'Essencial - Individual', 'Cobertura de assistência com 24h. \r\n\r\nGOLDEN MED (isento de pagamento nos 9 primeiros meses).\r\n\r\nGOLDEN DENTAL II (isento nos 12 primeiros meses).', '- Hospital Pronto Norte\r\n- Hospital Santa Helena\r\n- HOB\r\n- Hospital São Lucas\r\n- Hospital Unimed\r\n- Hospital Urologico CAU\r\n- Hospital HCB\r\n- Hospital Daher\r\n- Hospital São Francisco\r\n- Hospital Alvorada\r\n- Hospital Maria Auxiliadora\r\n- Hospital Santa Marta\r\n- Climed\r\n- Hospital Santa Luzia Luziania\r\n- Previquali\r\n- Hospital Renascer\r\n- Materno Infantil Sobradinho\r\n- Hospital JK Carpevie Centro de Med. Integrada\r\n- Laboratórios: Exame, Pasteur, Micra, Planalto, Imuno, santa Cruz, Analise Carlos Chagas, Patologia Prevenção de Câncer e Sabin\r\n'),
(13, 5, 'Básico', 'Plano de saúde Nacional Estudantil. *PLANO DE SAÚDE POR ADESÃO ATRAVÉS DAS ENTIDADES DE CLASSE.\r\n*Os valores poderão ser alterados de acordo com a Administradora.\r\n', '- HOSPITAL  PLANALTO\r\n- HOSPITAL  DAHER\r\n- HOSPITAL  CLÍNICAS DA CEILÂNDIA\r\n- HOSPITAL  SÃO FRANCISCO\r\n- HOSPITAL  RENASCER\r\n- HOSPITAL  PROTONORTE\r\n- HOSPITAL  SANTA HELENA\r\n- HOSPITAL  SANTA MARTA\r\n- HOSPITAL  BRASÍLIA\r\n- HOSPITAL  SANTA LUZIA LUZIÂNIA\r\n- CLIMED\r\n- HOSPITAL MARIA AUXILIADORA\r\n- HOSPITAL  JK  \r\n- HOSPITAL  HOME'),
(14, 5, 'Especial', 'Plano de saúde Nacional Estudantil. *PLANO DE SAÚDE POR ADESÃO ATRAVÉS DAS ENTIDADES DE CLASSE.\r\n*Os valores poderão ser alterados de acordo com a Administradora.\r\n', '- HOSPITAL  PLANALTO\r\n- HOSPITAL  DAHER\r\n- HOSPITAL  CLÍNICAS DA CEILÂNDIA\r\n- HOSPITAL  SÃO FRANCISCO\r\n- HOSPITAL  RENASCER\r\n- HOSPITAL  PROTONORTE\r\n- HOSPITAL  SANTA HELENA\r\n- HOSPITAL  SANTA MARTA\r\n- HOSPITAL  BRASÍLIA\r\n- HOSPITAL  SANTA LUZIA LUZIÂNIA\r\n- CLIMED\r\n- HOSPITAL MARIA AUXILIADORA\r\n- HOSPITAL  JK  \r\n- HOSPITAL  HOME\r\n- HOSPITAL CORAÇÃO'),
(15, 5, 'Executivo', 'Plano de saúde Nacional Estudantil. *PLANO DE SAÚDE POR ADESÃO ATRAVÉS DAS ENTIDADES DE CLASSE.\r\n*Os valores poderão ser alterados de acordo com a Administradora.\r\n', '- HOSPITAL  PLANALTO\r\n- HOSPITAL  DAHER\r\n- HOSPITAL  CLÍNICAS DA CEILÂNDIA\r\n- HOSPITAL  SÃO FRANCISCO\r\n- HOSPITAL  RENASCER\r\n- HOSPITAL  PROTONORTE\r\n- HOSPITAL  SANTA HELENA\r\n- HOSPITAL  SANTA MARTA\r\n- HOSPITAL  BRASÍLIA\r\n- HOSPITAL  SANTA LUZIA LUZIÂNIA\r\n- CLIMED\r\n- HOSPITAL MARIA AUXILIADORA\r\n- HOSPITAL  JK  \r\n- HOSPITAL  HOME\r\n- HOSPITAL CORAÇÃO\r\n- HOSPITAL SANTA LÚCIA\r\n- HOSPITAL ANCHIETA\r\n- LABORATÓRIO:  PASTER,PLANALTO,SABIN E EXAME'),
(16, 2, 'Clássico', 'Fecomercio (donos de empresas), Sindicom (carteira de trabalho comercio varejista),  UBES( Estudantes do fundamental e médio)  e  UNE (estudante de faculdade).\r\n', '-HOSPITAL SANTA LUCIA\r\n-HOSPITAL SANTA LUZIA\r\n-HOSPITAL ANCHIETA\r\n-HOSPITAL SANTA HELENA\r\n-HOSPITAL BRASÍLIA\r\n-HOSPITAL DE CLÍNICAS DE BRASÍLIA\r\n-JK\r\n-PRONTONORTE\r\n-CBV\r\n-HOSPITAL ALVORADA\r\n-HOSPITAL DAHER\r\n-HOB – Hospital oftalmológico de Brasilia;\r\n-HOSPITAL PACINI\r\n-HOSPITAL SANTA MARTA\r\n-HOSPITAL SÃO FRANCISCO\r\n–LABORATÓRIOS: Sabin, Exame, Pasteur, Brasília...\r\n'),
(17, 6, 'Enfermaria', 'Plano Empresarial à partir de 3 vidas. \r\nEntre em contato com o Corretor e faça uma cotação.', 'Entre em Contato com o corretor.'),
(18, 5, '', '', ''),
(19, 2, 'Ideal ', 'Fecomercio (donos de empresas), Sindicom (carteira de trabalho comercio varejista),  UBES( Estudantes do fundamental e médio)  e  UNE (estudante de faculdade)', '-HOSPITAL SANTA LUCIA\r\n-HOSPITAL SANTA LUZIA\r\n-HOSPITAL SANTA HELENA\r\n-HOSPITAL BRASÍLIA\r\n-HOSPITAL DE CLÍNICAS DE BRASÍLIA\r\n-JK\r\n-PRONTONORTE\r\n-CBV\r\n-HOSPITAL ALVORADA\r\n-HOSPITAL DAHER\r\n-HOB – Hospital oftalmológico de Brasilia;\r\n-HOSPITAL PACINI\r\n-HOSPITAL SANTA MARTA\r\n-HOSPITAL SÃO FRANCISCO\r\n–LABORATÓRIOS: Sabin, Exame, Pasteur, Brasília...'),
(20, 1, 'Selecione...', '', '');

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_conteudo`
--

CREATE TABLE `tb_conteudo` (
  `id_conteudo` int(11) NOT NULL,
  `id_tipo_conteudo` int(11) NOT NULL,
  `ds_titulo` varchar(100) NOT NULL,
  `ds_subtitulo` varchar(200) DEFAULT NULL,
  `ds_conteudo` varchar(700) NOT NULL,
  `ds_chamada` varchar(300) NOT NULL,
  `ds_observacao` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_faixa_etaria`
--

CREATE TABLE `tb_faixa_etaria` (
  `id_faixa_etaria` int(11) NOT NULL,
  `no_faixa_etaria` varchar(15) NOT NULL,
  `nu_valor` varchar(10) NOT NULL,
  `dt_vigencia` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Despejando dados para a tabela `tb_faixa_etaria`
--

INSERT INTO `tb_faixa_etaria` (`id_faixa_etaria`, `no_faixa_etaria`, `nu_valor`, `dt_vigencia`) VALUES
(1, '00-18', '211,58', '2015-07-01'),
(2, '19-23', '275,05', '2015-07-01'),
(3, '24-28', '302,56', '2015-07-01'),
(4, '29-33', '329,79', '2015-07-01'),
(5, '34-38', '362,77', '2015-07-01'),
(6, '39-43', '399,04', '2015-07-01'),
(7, '44-48', '518,36', '2015-07-01'),
(8, '49-53', '596,11', '2015-07-01'),
(9, '54-58', '745,14', '2015-07-01'),
(10, '59+', '1.266,74', '2015-07-01'),
(11, '00-18', '229,21', '2015-07-01'),
(12, '19-23', '297,97', '2015-07-01'),
(13, '24-28', '327,77', '2015-07-01'),
(14, '29-33', '357,27', '2015-07-01'),
(15, '34-38', '392,99', '2015-07-01'),
(16, '39-43', '432,29', '2015-07-01'),
(17, '44-48', '561,55', '2015-07-01'),
(18, '49-53', '645,78', '2015-07-01'),
(19, '54-58', '807,23', '2015-07-01'),
(20, '59+', '1.372,30', '2015-07-01'),
(21, '00-18', '282,11', '2015-07-01'),
(22, '19-23', '366,75', '2015-07-01'),
(23, '24-28', '403,42', '2015-07-01'),
(24, '29-33', '439,73', '2015-07-01'),
(25, '34-38', '483,70', '2015-07-01'),
(26, '39-43', '532,07', '2015-07-01'),
(27, '44-48', '691,16', '2015-07-01'),
(28, '49-53', '794,84', '2015-07-01'),
(29, '54-58', '993,55', '2015-07-01'),
(30, '59+', '1.689,04', '2015-07-01'),
(31, '00-18', '352,,64', '2015-07-01'),
(32, '19-23', '458,43', '2015-07-01'),
(33, '24-28', '504,27', '2015-07-01'),
(34, '29-33', '549,65', '2015-07-01'),
(35, '34-38', '604,62', '2015-07-01'),
(36, '39-43', '665,07', '2015-07-01'),
(37, '44-48', '863,94', '2015-07-01'),
(38, '49-53', '993,53', '2015-07-01'),
(39, '54-58', '1.241,92', '2015-07-01'),
(40, '59+', '2.11,26', '2015-07-01'),
(41, '00-18', '264,48', '2015-07-01'),
(42, '19-23', '343,83', '2015-07-01'),
(43, '24-28', '378,21', '2015-07-01'),
(44, '29-33', '412,25', '2015-07-01'),
(45, '34-38', '453,47', '2015-07-01'),
(46, '39-43', '498,81', '2015-07-01'),
(47, '44-48', '647,97', '2015-07-01'),
(48, '49-53', '745,16', '2015-07-01'),
(49, '54-58', '931,46', '2015-07-01'),
(50, '59+', '1.583,48', '2015-07-01'),
(51, '00-18', '273,18', '0000-00-00'),
(52, '19-23', '427,61', '0000-00-00'),
(53, '24-28', '439,23', '0000-00-00'),
(54, '29-33', '446,61', '0000-00-00'),
(55, '34-38', '460,10', '0000-00-00'),
(56, '39-43', '466,41', '0000-00-00'),
(57, '44-48', '669,23', '0000-00-00'),
(58, '49-53', '679,57', '0000-00-00'),
(59, '54-58', '842,68', '0000-00-00'),
(60, '59+', '1.638,96', '0000-00-00'),
(61, '00-18', '285,04', '0000-00-00'),
(62, '19-23', '446,19', '0000-00-00'),
(63, '24-28', '458,31', '0000-00-00'),
(64, '29-33', '466,02', '0000-00-00'),
(65, '34-38', '480,11', '0000-00-00'),
(66, '39-43', '486,68', '0000-00-00'),
(67, '44-48', '698,34', '0000-00-00'),
(68, '49-53', '709,11', '0000-00-00'),
(69, '54-58', '879,31', '0000-00-00'),
(70, '59+', '1.710,21', '0000-00-00'),
(71, '00-18', '401,81', '2015-07-01'),
(72, '19-23', '676,53', '2015-07-01'),
(73, '24-28', '685,32', '2015-07-01'),
(74, '29-33', '712,19', '2015-07-01'),
(75, '34-38', '732,86', '2015-07-01'),
(76, '39-43', '743,40', '2015-07-01'),
(77, '44-48', '984,36', '2015-07-01'),
(78, '49-53', '1.251,07', '2015-07-01'),
(79, '54-58', '1.551,34', '2015-07-01'),
(80, '59+', '2.410,81', '2015-07-01'),
(81, '00-18', '804,59', '2015-07-01'),
(82, '19-23', '1.354,76', '2015-07-01'),
(83, '24-28', '1.372,,37', '2015-07-01'),
(84, '29-33', '1.426,13', '2015-07-01'),
(85, '34-38', '1.467,50', '2015-07-01'),
(86, '39-43', '1.488,70', '2015-07-01'),
(87, '44-48', '1.971,24', '2015-07-01'),
(88, '49-53', '2.505,23', '2015-07-01'),
(89, '54-58', '3.106,51', '2015-07-01'),
(90, '59+', '4.827,49', '2015-07-01'),
(91, '00-18', '99,00', '2013-06-01'),
(92, '19-23', '128,70', '2013-06-01'),
(93, '24-28', '141,57', '2013-06-01'),
(94, '29-33', '154,31', '2013-06-01'),
(95, '34-38', '169,74', '2013-06-01'),
(96, '39-43', '186,71', '2013-06-01'),
(97, '44-48', '242,54', '2013-06-01'),
(98, '49-53', '278,93', '2013-06-01'),
(99, '54-58', '348,66', '2013-06-01'),
(100, '59+', '592,72', '2013-06-01'),
(101, '00-18', '', '2013-06-01'),
(102, '19-23', '', '2013-06-01'),
(103, '24-28', '', '2013-06-01'),
(104, '29-33', '', '2013-06-01'),
(105, '34-38', '', '2013-06-01'),
(106, '39-43', '', '2013-06-01'),
(107, '44-48', '', '2013-06-01'),
(108, '49-53', '', '2013-06-01'),
(109, '54-58', '', '2013-06-01'),
(110, '59+', '', '2013-06-01'),
(111, '00-18', '179,42', '2012-04-01'),
(112, '19-23', '241,88', '2012-04-01'),
(113, '24-28', '250,11', '2012-04-01'),
(114, '29-33', '271,27', '2012-04-01'),
(115, '34-38', '287,04', '2012-04-01'),
(116, '39-43', '321,13', '2012-04-01'),
(117, '44-48', '439,51', '2012-04-01'),
(118, '49-53', '556,17', '2012-04-01'),
(119, '54-58', '672,77', '2012-04-01'),
(120, '59+', '1.076,32', '2012-04-01'),
(121, '00-18', '211,10', '2012-04-01'),
(122, '19-23', '284,58', '2012-04-01'),
(123, '24-28', '294,27', '2012-04-01'),
(124, '29-33', '319,17', '2012-04-01'),
(125, '34-38', '337,72', '2012-04-01'),
(126, '39-43', '377,83', '2012-04-01'),
(127, '44-48', '517,11', '2012-04-01'),
(128, '49-53', '654,37', '2012-04-01'),
(129, '54-58', '791,56', '2012-04-01'),
(130, '59+', '1.266,37', '2012-04-01'),
(131, '00-18', '152,51', '2012-04-01'),
(132, '19-23', '205,60', '2012-04-01'),
(133, '24-28', '212,60', '2012-04-01'),
(134, '29-33', '230,58', '2012-04-01'),
(135, '34-38', '243,99', '2012-04-01'),
(136, '39-43', '272,96', '2012-04-01'),
(137, '44-48', '373,59', '2012-04-01'),
(138, '49-53', '472,76', '2012-04-01'),
(139, '54-58', '571,87', '2012-04-01'),
(140, '59+', '914,89', '2012-04-01'),
(141, '00-18', '179,42', '2012-04-01'),
(142, '19-23', '241,88', '2012-04-01'),
(143, '24-28', '250,11', '2012-04-01'),
(144, '29-33', '271,27', '2012-04-01'),
(145, '34-38', '287,04', '2012-04-01'),
(146, '39-43', '321,13', '2012-04-01'),
(147, '44-48', '439,51', '2012-04-01'),
(148, '49-53', '556,17', '2012-04-01'),
(149, '54-58', '672,77', '2012-04-01'),
(150, '59+', '1.076,32', '2012-04-01'),
(151, '00-18', '224,92', '2012-04-01'),
(152, '19-23', '303,21', '2012-04-01'),
(153, '24-28', '313,54', '2012-04-01'),
(154, '29-33', '340,06', '2012-04-01'),
(155, '34-38', '359,83', '2012-04-01'),
(156, '39-43', '402,56', '2012-04-01'),
(157, '44-48', '550,96', '2012-04-01'),
(158, '49-53', '697,21', '2012-04-01'),
(159, '54-58', '843,38', '2012-04-01'),
(160, '59+', '1.349,27', '2012-04-01'),
(161, '00-18', '270,26', '2012-04-01'),
(162, '19-23', '364,34', '2012-04-01'),
(163, '24-28', '376,74', '2012-04-01'),
(164, '29-33', '408,61', '2012-04-01'),
(165, '34-38', '432,36', '2012-04-01'),
(166, '39-43', '483,22', '2012-04-01'),
(167, '44-48', '662,03', '2012-04-01'),
(168, '49-53', '837,76', '2012-04-01'),
(169, '54-58', '1.013,39', '2012-04-01'),
(170, '59+', '1..61,26', '2012-04-01'),
(171, '00-18', '191,18', '2012-04-01'),
(172, '19-23', '257,73', '2012-04-01'),
(173, '24-28', '266,50', '2012-04-01'),
(174, '29-33', '289,05', '2012-04-01'),
(175, '34-38', '305,85', '2012-04-01'),
(176, '39-43', '342,17', '2012-04-01'),
(177, '44-48', '468,31', '2012-04-01'),
(178, '49-53', '592,63', '2012-04-01'),
(179, '54-58', '716,87', '2012-04-01'),
(180, '59+', '1.146,87', '2012-04-01'),
(181, '00-18', '215,10', '2012-02-01'),
(182, '19-23', '289,98', '2012-02-01'),
(183, '24-28', '299,85', '2012-02-01'),
(184, '29-33', '325,22', '2012-02-01'),
(185, '34-38', '344,12', '2012-02-01'),
(186, '39-43', '384,99', '2012-02-01'),
(187, '44-48', '526,91', '2012-02-01'),
(188, '49-53', '666,77', '2012-02-01'),
(189, '54-58', '806,45', '2012-02-01'),
(190, '59+', '1.290,36', '2012-02-01'),
(191, '00-18', '118,59', '2012-11-01'),
(192, '19-23', '151,06', '2012-11-01'),
(193, '24-28', '175,36', '2012-11-01'),
(194, '29-33', '215,14', '2012-11-01'),
(195, '34-38', '254,91', '2012-11-01'),
(196, '39-43', '287,05', '2012-11-01'),
(197, '44-48', '290,31', '2012-11-01'),
(198, '49-53', '429,13', '2012-11-01'),
(199, '54-58', '578,29', '2012-11-01'),
(200, '59+', '710,43', '2012-11-01'),
(201, '00-18', '169,12', '2012-11-01'),
(202, '19-23', '196,37', '2012-11-01'),
(203, '24-28', '227,94', '2012-11-01'),
(204, '29-33', '279,68', '2012-11-01'),
(205, '34-38', '331,42', '2012-11-01'),
(206, '39-43', '394,16', '2012-11-01'),
(207, '44-48', '413,95', '2012-11-01'),
(208, '49-53', '557,85', '2012-11-01'),
(209, '54-58', '751,80', '2012-11-01'),
(210, '59+', '1.013,02', '2012-11-01'),
(211, '00-18', '224,95', '2012-11-01'),
(212, '19-23', '261,14', '2012-11-01'),
(213, '24-28', '303,15', '2012-11-01'),
(214, '29-33', '371,96', '2012-11-01'),
(215, '34-38', '440,78', '2012-11-01'),
(216, '39-43', '524,24', '2012-11-01'),
(217, '44-48', '550,56', '2012-11-01'),
(218, '49-53', '741,94', '2012-11-01'),
(219, '54-58', '999,89', '2012-11-01'),
(220, '59+', '1.347,34', '2012-11-01'),
(221, '00-18', '169,47', '0000-00-00'),
(222, '00-18', '367,88', '2015-07-30'),
(223, '19-23', '575,87', '2015-07-30'),
(224, '24-28', '591,52', '2015-07-30'),
(225, '29-33', '601,47', '2015-07-30'),
(226, '34-38', '619,65', '2015-07-30'),
(227, '39-43', '628,12', '2015-07-30'),
(228, '44-48', '901,29', '2015-07-30'),
(229, '49-53', '915,20', '2015-07-30'),
(230, '54-58', '1.134,86', '2015-07-30'),
(231, '59+', '2.207,24', '2015-07-30'),
(232, '0 a 18', '334,46', '2015-07-30'),
(233, '19 a 23 ', '523,51', '2015-07-30'),
(234, '24 a 28 ', '537,75', '2015-07-30'),
(235, '29 a 33', '546,81', '2015-07-30'),
(236, '34 a 38', '563,29', '2015-07-30'),
(237, '39 a 43', '571,02', '2015-07-30'),
(238, '44 a 48', '819,34', '2015-07-30'),
(239, '49 a 53', '832,00', '2015-07-30'),
(240, '54 a 58', '1.031,70', '2015-07-30'),
(241, 'A partir 59 ', '2.006,57', '2015-07-30');

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_operadora`
--

CREATE TABLE `tb_operadora` (
  `id_operadora` int(11) NOT NULL,
  `no_operadora` varchar(60) NOT NULL,
  `ds_operadora` text DEFAULT NULL,
  `fl_ativo` int(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Despejando dados para a tabela `tb_operadora`
--

INSERT INTO `tb_operadora` (`id_operadora`, `no_operadora`, `ds_operadora`, `fl_ativo`) VALUES
(1, 'Amil Adesão', 'Plano completo com direito a consultas, exames, cirurgias (regidos pela ANS) e internações.', 1),
(2, 'SULAMÉRICA', 'Plano global: ambulatorial + hospitalar com obstetrícia. Todas as coberturas da Lei 9.656/98, transplantes, fonoaudiologia entre outras.', 1),
(3, 'DIX Amil', 'Plano com direito a consultas, exames, cirurgias (regidos pela ANS) e internação.', 0),
(4, 'Golden Cross', 'Ampla rede de médicos, hospitais e laboratórios. Serviços adicionais já inclusos no plano, como ASSISTÊNCIA 24h (De acordo com as condições contratuais). GOLDEN MED (Conforme área de abrangência).', 0),
(5, 'UNIMED - CENTRO-OSTE/TOCANTINS', 'Clientes Unimed contam com hospitais credenciados, pronto-atendimentos, laboratórios, ambulâncias e hospitais próprios e credenciados para garantir qualidade na assistência médica, hospitalar e de diagnóstico complementar oferecidos. ', 0),
(6, 'BRADESCO EMPRESARIAL', 'O Bradesco Saúde Empresarial é um seguro-saúde criado para atender o segmento empresarial em tudo o que se espera de um seguro-saúde. Pequenas e Médias Empresas e Grandes Empresas', 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_operadora_conteudo`
--

CREATE TABLE `tb_operadora_conteudo` (
  `id_operadora_conteudo` int(11) NOT NULL,
  `id_conteudo` int(11) NOT NULL,
  `id_operadora` int(11) NOT NULL COMMENT '\n'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_pessoa_contato`
--

CREATE TABLE `tb_pessoa_contato` (
  `id_pessoa_contato` int(11) NOT NULL,
  `id_categoria_plano` int(11) DEFAULT NULL,
  `ds_contato` varchar(400) DEFAULT NULL,
  `no_nome` varchar(60) DEFAULT NULL,
  `nr_idade` int(3) DEFAULT NULL,
  `nu_telefone` varchar(13) DEFAULT NULL,
  `nu_celular` varchar(13) DEFAULT NULL,
  `ds_email` varchar(100) DEFAULT NULL,
  `ds_website` varchar(100) DEFAULT NULL,
  `fg_confirmado` int(1) DEFAULT 0,
  `dt_registro` datetime DEFAULT NULL,
  `dt_contato` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Despejando dados para a tabela `tb_pessoa_contato`
--

INSERT INTO `tb_pessoa_contato` (`id_pessoa_contato`, `id_categoria_plano`, `ds_contato`, `no_nome`, `nr_idade`, `nu_telefone`, `nu_celular`, `ds_email`, `ds_website`, `fg_confirmado`, `dt_registro`, `dt_contato`) VALUES
(5, NULL, 'Tirar Dúvidas', 'Maria dos Milagres Silva Santos', 32, '(61)34751295', '(61)84445921', 'miria_ss2012@hotmail.com', NULL, 0, '2012-07-26 21:40:03', NULL),
(6, NULL, 'A UNINORTE, Universidade localizada em Manaus, esta negando o direito de cobertura de plano de saúde e odontológico, durante a vigência do aviso prévio, a todas as rescisões de contrato, alegando que apesar de ter ciência da resolução, nao sabem como estabelcer a cobranca da co-participacao durante esse periodo.\r\nMeu Aviso termina somente dia 23/08, e estou sem plano de saúde e odontológico', 'William Rafael Malezan', 30, '9291661344', '', 'dr.rafaelmalezan@hotmail.com', NULL, 0, '2012-07-30 22:59:33', NULL),
(7, NULL, 'gostaria de saber valor do convenio nas idade de 09 e 42 anos que cumpra tudo ate uti', 'adrina ', 29, '(061)36232437', '(61)92965108', 'vidaldridri@gmail.com', NULL, 0, '2012-10-02 22:42:12', NULL),
(8, NULL, 'gostaria de saber se o valores do convenio nas idades de 09 e 42 anos cobre uti', 'adriana', 23, '(61)36232437', '(61)92965108', 'vidaldridri@gmail.com', NULL, 0, '2012-10-02 22:47:18', NULL),
(9, NULL, 'gostaria de saber se o valores do convenio nas idades de 09 e 42 anos cobre uti', 'adriana', 23, '(61)36232437', '(61)92965108', 'vidaldridri@gmail.com', NULL, 0, '2012-10-02 22:48:06', NULL),
(10, NULL, 'Precisamos de um seguro que abranja as seguintes clausulas.\r\n\r\n\r\nCLÁUSULA 42: O empregador deverá contratar seguro de vida a todos os empregados, com \r\ncobertura por morte natural, morte acidental e invalidez permanente total ou parcial, decorrente \r\nde acidente pessoal, no valor de R$ 10.000,00 (dez mil reais) por empregado.\r\n\r\nParágrafo Segundo: O empregador que, após disponibilizado, deixar de ', 'rafael ', 25, '6130305114', '', 'compras@novaadministradora.com.br', NULL, 0, '2012-10-04 17:35:20', NULL),
(11, NULL, 'Boa tarde!\r\nSou da empresa Vivenda do Camarão e temos uma rede lojas em Brasilia. Solicito se possível uma acotação para oferecer aos nossos funcionários. Temos uma média de 75 funcionários entre 18 e 40 anos.\r\n\r\nAguardo retorno se possível o mais breve.\r\n\r\nAtt,\r\nElaine Mucelini - Depto. Pessoal', 'Elaine Mucelini', 36, '11 46132600', '', 'elaine@vivendadocamarao.com.br', NULL, 0, '2012-10-09 16:40:33', NULL),
(12, NULL, 'Gostaria de saber quanto fica a mensalidade dos planos de saude por vcs oferecidos.\r\n\r\nNeste caso a usuária do plano Individual seria a minha mãe que tem 63 anos de idade e ainda não possui plano de saúde, sendo que ela reside em Brasilia-DF.\r\n\r\nOs planos que gostaria de obter cotação para a faixa etária dela são: Amil, Golden Cross, Sulamerica, Bradesco saude, BBsaude, Unimed, Quality, etc.\r\n', 'carlos bruno', 33, '', '16-8112-4500', 'bruno.arquivo@ig.com.br', NULL, 0, '2012-10-09 17:59:30', NULL),
(13, NULL, 'Bom dia, gostaria de saber como é a forma de pagamentos e os planos de saúde para o meu perfil.\r\ngrato \r\nPedro H.', 'PEDRO HENRIQUE MOREIRA DE FARIA', 28, '61-8263-5891', '61-8263-5891', 'pedrohunaiedf@gmail.com', NULL, 0, '2012-11-12 12:07:56', NULL),
(14, NULL, 'BOA TARDE EU GOSTARIA DE SABER MAIS SOBRE O DIX 100 SAUDE E ODONTOLOGICO', 'Flavia  Fernanda Mendes Fontes', 39, '', '6184839781', 'flaviafontes29@gmail.com', NULL, 0, '2012-11-16 13:30:10', NULL),
(17, NULL, 'Solicitor cotação de plano de saude pessoa física para 1 pessoa de 25 anos.', 'Larissa Mello', 25, '', '', 'larissamello@aol.com.br', NULL, 0, '2012-12-23 22:20:08', NULL),
(18, NULL, 'Quero os valores  e fazer portabilidade, pois eu ja tenho amil e nao estou gostando.', 'Ivaneide Ferreira da Silva', 36, '35424588', '84566224', 'd.eide@hotmail.com', NULL, 0, '2013-01-07 09:18:49', NULL),
(19, NULL, 'gostaria de cotação para plano Bradesco p mim (30 anos) e meu esposo (29 anos) tenho cera urgencia pois estamos em plano no momento.\r\n\r\nGrata', 'elizama', 30, '', '', 'elizamazama@hotmail.com', NULL, 0, '2013-01-10 16:28:30', NULL),
(20, NULL, 'Quero saber todas as informações', 'Guilherme', 21, '6181094295', '6130463891', 'guilhermecarvahoucb@gmail.com', NULL, 0, '2013-01-17 17:45:20', NULL),
(26, NULL, 'Srs. preciso de informação quanto a um plano de saúde para minha mãe, que hoje é dependente do meu plano de saúde (Correios), mas por motivo de futuro desligamento, gostaria de saber quais as opções que eu tenho no mercado para contratação de plano de saúde somente para ela. Residência: Ceilândia/DF.', 'Leanro Venancio', 32, '61-3426.1671', '61-8473.1771', 'leandrovenancio@outlook.com', NULL, 0, '2013-01-31 14:26:56', NULL),
(27, NULL, 'emhjojoejdptbvef, <a href=\\\"http://www.wyfyadulub.com\\\">oaqerdrwnx</a> , [url=http://www.xntrhnnzeh.com]xgfvepphke[/url], http://www.czdqmahvst.com oaqerdrwnx', 'jmrlgkbn', 0, 'jmrlgkbn', 'jmrlgkbn', 'frarebtulw@ebbzrt.com', NULL, 0, '2013-02-16 05:06:16', NULL),
(28, NULL, 'Olá... Como faço para aderir ao plano?', 'kelly christine lemos da Silva', 29, '6181486348', '', 'kellydinamus@hotmail.com', NULL, 0, '2014-08-05 10:10:02', NULL),
(29, NULL, 'yY9WTB http://www.FyLitCl7Pf7kjQdDUOLQOuaxTXbj5iNG.com', 'DBonfCSERVvsIPhKoDN', 130, '82205533147', 'qIZNeURFBDj', 'lucas2d44@gmail.com', NULL, 0, '2015-10-25 22:38:49', NULL),
(30, NULL, 'Lx7N8B http://www.FyLitCl7Pf7kjQdDUOLQOuaxTXbj5iNG.com', 'YOsfcIsTzsQQGKFsmU', 910, '43192426550', 'kNUSGlWsSEkCm', 'mark357177@hotmail.com', NULL, 0, '2016-02-03 02:14:11', NULL),
(31, NULL, 'jljGpw http://www.FyLitCl7Pf7kjQdDUOLQOuaxTXbj5iNG.com', 'NGoxOLZMWAhnEs', 616, '83316100089', 'cCkRJpfPgaSXR', 'mark357177@hotmail.com', NULL, 0, '2016-02-04 03:09:51', NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_tipo_categoria_plano`
--

CREATE TABLE `tb_tipo_categoria_plano` (
  `id_tipo_categoria_plano` int(11) NOT NULL,
  `id_categoria_plano` int(11) NOT NULL,
  `id_acomodacao` int(11) NOT NULL,
  `id_tipo_plano` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Despejando dados para a tabela `tb_tipo_categoria_plano`
--

INSERT INTO `tb_tipo_categoria_plano` (`id_tipo_categoria_plano`, `id_categoria_plano`, `id_acomodacao`, `id_tipo_plano`) VALUES
(1, 1, 2, 1),
(2, 1, 1, 1),
(3, 2, 1, 1),
(4, 3, 1, 1),
(5, 4, 1, 1),
(8, 6, 1, 1),
(9, 7, 1, 1),
(10, 8, 2, 1),
(11, 8, 1, 1),
(12, 12, 2, 1),
(13, 12, 1, 1),
(14, 9, 2, 1),
(15, 9, 1, 1),
(16, 11, 2, 1),
(17, 11, 1, 1),
(18, 10, 2, 1),
(19, 10, 1, 1),
(20, 13, 2, 1),
(21, 14, 1, 1),
(22, 15, 1, 1),
(23, 16, 1, 1),
(24, 16, 1, 1),
(25, 19, 2, 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_tipo_categoria_plano_faixa_etaria`
--

CREATE TABLE `tb_tipo_categoria_plano_faixa_etaria` (
  `id_tipo_categoria_plano_faixa_etaria` int(11) NOT NULL,
  `id_faixa_etaria` int(11) NOT NULL,
  `id_tipo_categoria_plano` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Despejando dados para a tabela `tb_tipo_categoria_plano_faixa_etaria`
--

INSERT INTO `tb_tipo_categoria_plano_faixa_etaria` (`id_tipo_categoria_plano_faixa_etaria`, `id_faixa_etaria`, `id_tipo_categoria_plano`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 1),
(4, 4, 1),
(5, 5, 1),
(6, 6, 1),
(7, 7, 1),
(8, 8, 1),
(9, 9, 1),
(10, 10, 1),
(11, 11, 2),
(12, 12, 2),
(13, 13, 2),
(14, 14, 2),
(15, 15, 2),
(16, 16, 2),
(17, 17, 2),
(18, 18, 2),
(19, 19, 2),
(20, 20, 2),
(21, 21, 3),
(22, 22, 3),
(23, 23, 3),
(24, 24, 3),
(25, 25, 3),
(26, 26, 3),
(27, 27, 3),
(28, 28, 3),
(29, 29, 3),
(30, 30, 3),
(31, 31, 4),
(32, 32, 4),
(33, 33, 4),
(34, 34, 4),
(35, 35, 4),
(36, 36, 4),
(37, 37, 4),
(38, 38, 4),
(39, 39, 4),
(40, 40, 4),
(41, 41, 5),
(42, 42, 5),
(43, 43, 5),
(44, 44, 5),
(45, 45, 5),
(46, 46, 5),
(47, 47, 5),
(48, 48, 5),
(49, 49, 5),
(50, 50, 5),
(71, 71, 8),
(72, 72, 8),
(73, 73, 8),
(74, 74, 8),
(75, 75, 8),
(76, 76, 8),
(77, 77, 8),
(78, 78, 8),
(79, 79, 8),
(80, 80, 8),
(81, 81, 9),
(82, 82, 9),
(83, 83, 9),
(84, 84, 9),
(85, 85, 9),
(86, 86, 9),
(87, 87, 9),
(88, 88, 9),
(89, 89, 9),
(90, 90, 9),
(91, 91, 10),
(92, 92, 10),
(93, 93, 10),
(94, 94, 10),
(95, 95, 10),
(96, 96, 10),
(97, 97, 10),
(98, 98, 10),
(99, 99, 10),
(100, 100, 10),
(101, 101, 11),
(102, 102, 11),
(103, 103, 11),
(104, 104, 11),
(105, 105, 11),
(106, 106, 11),
(107, 107, 11),
(108, 108, 11),
(109, 109, 11),
(110, 110, 11),
(111, 111, 12),
(112, 112, 12),
(113, 113, 12),
(114, 114, 12),
(115, 115, 12),
(116, 116, 12),
(117, 117, 12),
(118, 118, 12),
(119, 119, 12),
(120, 120, 12),
(121, 121, 13),
(122, 122, 13),
(123, 123, 13),
(124, 124, 13),
(125, 125, 13),
(126, 126, 13),
(127, 127, 13),
(128, 128, 13),
(129, 129, 13),
(130, 130, 13),
(131, 131, 14),
(132, 132, 14),
(133, 133, 14),
(134, 134, 14),
(135, 135, 14),
(136, 136, 14),
(137, 137, 14),
(138, 138, 14),
(139, 139, 14),
(140, 140, 14),
(141, 141, 15),
(142, 142, 15),
(143, 143, 15),
(144, 144, 15),
(145, 145, 15),
(146, 146, 15),
(147, 147, 15),
(148, 148, 15),
(149, 149, 15),
(150, 150, 15),
(151, 151, 16),
(152, 152, 16),
(153, 153, 16),
(154, 154, 16),
(155, 155, 16),
(156, 156, 16),
(157, 157, 16),
(158, 158, 16),
(159, 159, 16),
(160, 160, 16),
(161, 161, 17),
(162, 162, 17),
(163, 163, 17),
(164, 164, 17),
(165, 165, 17),
(166, 166, 17),
(167, 167, 17),
(168, 168, 17),
(169, 169, 17),
(170, 170, 17),
(171, 171, 18),
(172, 172, 18),
(173, 173, 18),
(174, 174, 18),
(175, 175, 18),
(176, 176, 18),
(177, 177, 18),
(178, 178, 18),
(179, 179, 18),
(180, 180, 18),
(181, 181, 19),
(182, 182, 19),
(183, 183, 19),
(184, 184, 19),
(185, 185, 19),
(186, 186, 19),
(187, 187, 19),
(188, 188, 19),
(189, 189, 19),
(190, 190, 19),
(191, 191, 20),
(192, 192, 20),
(193, 193, 20),
(194, 194, 20),
(195, 195, 20),
(196, 196, 20),
(197, 197, 20),
(198, 198, 20),
(199, 199, 20),
(200, 200, 20),
(201, 201, 21),
(202, 202, 21),
(203, 203, 21),
(204, 204, 21),
(205, 205, 21),
(206, 206, 21),
(207, 207, 21),
(208, 208, 21),
(209, 209, 21),
(210, 210, 21),
(211, 211, 22),
(212, 212, 22),
(213, 213, 22),
(214, 214, 22),
(215, 215, 22),
(216, 216, 22),
(217, 217, 22),
(218, 218, 22),
(219, 219, 22),
(220, 220, 22),
(222, 222, 24),
(223, 223, 24),
(224, 224, 24),
(225, 225, 24),
(226, 226, 24),
(227, 227, 24),
(228, 228, 24),
(229, 229, 24),
(230, 230, 24),
(231, 231, 24),
(232, 232, 25),
(233, 233, 25),
(234, 234, 25),
(235, 235, 25),
(236, 236, 25),
(237, 237, 25),
(238, 238, 25),
(239, 239, 25),
(240, 240, 25),
(241, 241, 25);

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_tipo_conteudo`
--

CREATE TABLE `tb_tipo_conteudo` (
  `id_tipo_conteudo` int(11) NOT NULL,
  `no_tipo_conteudo` varchar(45) NOT NULL,
  `ds_tipo_conteudo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_tipo_plano`
--

CREATE TABLE `tb_tipo_plano` (
  `id_tipo_plano` int(11) NOT NULL,
  `no_tipo_plano` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Despejando dados para a tabela `tb_tipo_plano`
--

INSERT INTO `tb_tipo_plano` (`id_tipo_plano`, `no_tipo_plano`) VALUES
(1, 'Pessoa Fisica'),
(2, 'Pessoa Juridica');

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_usuario`
--

CREATE TABLE `tb_usuario` (
  `id_user` int(11) NOT NULL,
  `no_user` varchar(45) NOT NULL,
  `ds_login` varchar(45) NOT NULL,
  `ds_pass` varchar(45) NOT NULL,
  `fl_perfil` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Despejando dados para a tabela `tb_usuario`
--

INSERT INTO `tb_usuario` (`id_user`, `no_user`, `ds_login`, `ds_pass`, `fl_perfil`) VALUES
(1, 'Administrador', 'admin', 'indico$aube', 1),
(2, 'Catilcia Geraldi', 'catilcia', 'indico$aube', 0);

--
-- Índices de tabelas apagadas
--

--
-- Índices de tabela `tb_acomodacao`
--
ALTER TABLE `tb_acomodacao`
  ADD PRIMARY KEY (`id_acomodacao`);

--
-- Índices de tabela `tb_categoria_plano`
--
ALTER TABLE `tb_categoria_plano`
  ADD PRIMARY KEY (`id_categoria_plano`),
  ADD KEY `fk_tb_categoria_plano_tb_operadora1` (`id_operadora`);

--
-- Índices de tabela `tb_conteudo`
--
ALTER TABLE `tb_conteudo`
  ADD PRIMARY KEY (`id_conteudo`),
  ADD KEY `fk_tb_conteudo_tb_tipo_conteudo1` (`id_tipo_conteudo`);

--
-- Índices de tabela `tb_faixa_etaria`
--
ALTER TABLE `tb_faixa_etaria`
  ADD PRIMARY KEY (`id_faixa_etaria`);

--
-- Índices de tabela `tb_operadora`
--
ALTER TABLE `tb_operadora`
  ADD PRIMARY KEY (`id_operadora`);

--
-- Índices de tabela `tb_operadora_conteudo`
--
ALTER TABLE `tb_operadora_conteudo`
  ADD PRIMARY KEY (`id_operadora_conteudo`),
  ADD KEY `fk_tb_operadora_conteudo_tb_conteudo1` (`id_conteudo`),
  ADD KEY `fk_tb_operadora_conteudo_tb_operadora1` (`id_operadora`);

--
-- Índices de tabela `tb_pessoa_contato`
--
ALTER TABLE `tb_pessoa_contato`
  ADD PRIMARY KEY (`id_pessoa_contato`),
  ADD KEY `fk_tb_contato_tb_categoria_plano1` (`id_categoria_plano`);

--
-- Índices de tabela `tb_tipo_categoria_plano`
--
ALTER TABLE `tb_tipo_categoria_plano`
  ADD PRIMARY KEY (`id_tipo_categoria_plano`),
  ADD KEY `fk_tb_tipo_categoria_plano_tb_acomodacao1` (`id_acomodacao`),
  ADD KEY `fk_tb_tipo_categoria_plano_tb_categoria_plano1` (`id_categoria_plano`),
  ADD KEY `fk_tb_tipo_categoria_plano_tb_tipo_plano1` (`id_tipo_plano`);

--
-- Índices de tabela `tb_tipo_categoria_plano_faixa_etaria`
--
ALTER TABLE `tb_tipo_categoria_plano_faixa_etaria`
  ADD PRIMARY KEY (`id_tipo_categoria_plano_faixa_etaria`),
  ADD KEY `fk_tb_categoria_plano_has_tb_faixa_etaria_tb_faixa_etaria1` (`id_faixa_etaria`),
  ADD KEY `fk_tb_categoria_plano_faixa_etaria_tb_tipo_categoria_plano1` (`id_tipo_categoria_plano`);

--
-- Índices de tabela `tb_tipo_conteudo`
--
ALTER TABLE `tb_tipo_conteudo`
  ADD PRIMARY KEY (`id_tipo_conteudo`);

--
-- Índices de tabela `tb_tipo_plano`
--
ALTER TABLE `tb_tipo_plano`
  ADD PRIMARY KEY (`id_tipo_plano`);

--
-- Índices de tabela `tb_usuario`
--
ALTER TABLE `tb_usuario`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT de tabelas apagadas
--

--
-- AUTO_INCREMENT de tabela `tb_acomodacao`
--
ALTER TABLE `tb_acomodacao`
  MODIFY `id_acomodacao` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `tb_categoria_plano`
--
ALTER TABLE `tb_categoria_plano`
  MODIFY `id_categoria_plano` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de tabela `tb_conteudo`
--
ALTER TABLE `tb_conteudo`
  MODIFY `id_conteudo` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `tb_faixa_etaria`
--
ALTER TABLE `tb_faixa_etaria`
  MODIFY `id_faixa_etaria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=242;

--
-- AUTO_INCREMENT de tabela `tb_operadora`
--
ALTER TABLE `tb_operadora`
  MODIFY `id_operadora` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `tb_operadora_conteudo`
--
ALTER TABLE `tb_operadora_conteudo`
  MODIFY `id_operadora_conteudo` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `tb_pessoa_contato`
--
ALTER TABLE `tb_pessoa_contato`
  MODIFY `id_pessoa_contato` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT de tabela `tb_tipo_categoria_plano`
--
ALTER TABLE `tb_tipo_categoria_plano`
  MODIFY `id_tipo_categoria_plano` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de tabela `tb_tipo_categoria_plano_faixa_etaria`
--
ALTER TABLE `tb_tipo_categoria_plano_faixa_etaria`
  MODIFY `id_tipo_categoria_plano_faixa_etaria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=242;

--
-- AUTO_INCREMENT de tabela `tb_tipo_conteudo`
--
ALTER TABLE `tb_tipo_conteudo`
  MODIFY `id_tipo_conteudo` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `tb_tipo_plano`
--
ALTER TABLE `tb_tipo_plano`
  MODIFY `id_tipo_plano` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Restrições para dumps de tabelas
--

--
-- Restrições para tabelas `tb_categoria_plano`
--
ALTER TABLE `tb_categoria_plano`
  ADD CONSTRAINT `fk_tb_categoria_plano_tb_operadora1` FOREIGN KEY (`id_operadora`) REFERENCES `tb_operadora` (`id_operadora`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Restrições para tabelas `tb_conteudo`
--
ALTER TABLE `tb_conteudo`
  ADD CONSTRAINT `fk_tb_conteudo_tb_tipo_conteudo1` FOREIGN KEY (`id_tipo_conteudo`) REFERENCES `tb_tipo_conteudo` (`id_tipo_conteudo`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Restrições para tabelas `tb_operadora_conteudo`
--
ALTER TABLE `tb_operadora_conteudo`
  ADD CONSTRAINT `fk_tb_operadora_conteudo_tb_conteudo1` FOREIGN KEY (`id_conteudo`) REFERENCES `tb_conteudo` (`id_conteudo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_tb_operadora_conteudo_tb_operadora1` FOREIGN KEY (`id_operadora`) REFERENCES `tb_operadora` (`id_operadora`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Restrições para tabelas `tb_pessoa_contato`
--
ALTER TABLE `tb_pessoa_contato`
  ADD CONSTRAINT `fk_tb_contato_tb_categoria_plano1` FOREIGN KEY (`id_categoria_plano`) REFERENCES `tb_categoria_plano` (`id_categoria_plano`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Restrições para tabelas `tb_tipo_categoria_plano`
--
ALTER TABLE `tb_tipo_categoria_plano`
  ADD CONSTRAINT `fk_tb_tipo_categoria_plano_tb_acomodacao1` FOREIGN KEY (`id_acomodacao`) REFERENCES `tb_acomodacao` (`id_acomodacao`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_tb_tipo_categoria_plano_tb_categoria_plano1` FOREIGN KEY (`id_categoria_plano`) REFERENCES `tb_categoria_plano` (`id_categoria_plano`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_tb_tipo_categoria_plano_tb_tipo_plano1` FOREIGN KEY (`id_tipo_plano`) REFERENCES `tb_tipo_plano` (`id_tipo_plano`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Restrições para tabelas `tb_tipo_categoria_plano_faixa_etaria`
--
ALTER TABLE `tb_tipo_categoria_plano_faixa_etaria`
  ADD CONSTRAINT `fk_tb_categoria_plano_faixa_etaria_tb_tipo_categoria_plano1` FOREIGN KEY (`id_tipo_categoria_plano`) REFERENCES `tb_tipo_categoria_plano` (`id_tipo_categoria_plano`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_tb_categoria_plano_has_tb_faixa_etaria_tb_faixa_etaria1` FOREIGN KEY (`id_faixa_etaria`) REFERENCES `tb_faixa_etaria` (`id_faixa_etaria`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
