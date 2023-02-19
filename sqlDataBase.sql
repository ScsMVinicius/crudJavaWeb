CREATE TABLE IF NOT EXISTS `usuario` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `sexo` varchar(100) NOT NULL,
  `pais` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=21 ;

--
-- Dumping data for table `usuario`
--

INSERT INTO `usuario` (`id`, `nome`, `password`, `email`, `sexo`, `pais`) VALUES
(05, 'José', 'Valente', 'jose@gmail.com', 'Masculino', 'Brasil'),
(06, 'Ana', 'Vitoria', 'ana@gmail.com', 'Feminino', 'Brasil'),
(08, 'Maria', 'Francisca', 'maria@gmail.com', 'Feminino', 'Brasil');