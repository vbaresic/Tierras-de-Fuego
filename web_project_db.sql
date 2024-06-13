-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 13, 2024 at 09:42 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `web_project_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `summary` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `category` varchar(50) NOT NULL,
  `content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `title`, `summary`, `image`, `category`, `content`) VALUES
(24, 'Por qué al hacernos mayores tenemos que centrarnos en ganar músculo más que en perder peso', 'En un video que llegó a millones de personas en las redes sociales, una señora que parece tener más de 70 años levanta una barra con pesas en el gimnasio. La siguiente imagen es de ella haciendo lo mismo, pero con la compra en el supermercado.', 'slika1.png', 'politics', 'El mensaje del video coincide con el que la doctora estadounidense Gabrielle Lyon intenta transmitir a sus pacientes desde hace años: para envejecer bien y tener calidad de vida en la vejez, es necesario desarrollar y mantener la musculatura.\r\n\r\n&#34;Tal vez no nos preocupe tanto llevar bikini, pero sí el ser autónomos, tener fuerza para sostener a nuestros nietos. Llevar nuestra propia compra, vivir de forma independiente, ese es el primer motivo para preocuparnos por mantener una buena masa muscular&#34;, afirma la geriatra, autora del libro &#34;La revolución muscular&#34;, publicado por la editorial Intrínseca en marzo.'),
(25, '4 claves para entender los buenos resultados que obtuvo la derecha en las elecciones europeas', 'Eso es lo que dijo la presidenta de la Comisión Europea, Ursula von der Leyen, tras conocerse este domingo los resultados en las elecciones al Parlamento Europeo (PE).', 'slikica3.png', 'politics', 'Si bien esta afirmación es cierta, también lo es que el equilibrio de poder en el Viejo Continente se está moviendo del centro hacia la derecha, como demostró la clara victoria en los comicios del conservador Partido Popular Europeo que, según los resultados preliminares, logró 186 escaños de los 720 que componen el PE, frente a los 135 de los socialdemócratas.\r\n\r\nEse viraje ideológico quedó claro con los resultados que obtuvo la extrema derecha tanto en Francia (primera fuerza) como en Alemania (segunda fuerza).\r\n\r\nAsí, la derecha antieuropea crece con fuerza en los dos principales países fundadores de la Unión Europea, que además son las naciones con más escaños en el PE.'),
(26, 'Por qué los dominicanos siguen emigrando de un país con estabilidad política y crecimiento económico', 'Para un gran número de dominicanos, el futuro está lejos de la isla donde nacieron.\r\n\r\nRepública Dominicana, hogar de 11,3 millones de habitantes, es un país de emigrantes desde hace décadas.', 'slikica4.jpg', 'politics', 'Y esto no parece cambiar pese a los avances que lo desmarcan de muchos de sus vecinos de América Latina y el Caribe inmersos en crisis económicas, turbulencias políticas o ambas.\r\n\r\nEl Producto Interior Bruto (PIB) per cápita dominicano alcanzó US$11.200 en 2023, un fuerte avance del 4,35% interanual y más del 30% respecto a 2019, el año previo a la pandemia.\r\n\r\n“Ya somos una economía de ingresos medios”, proclamó recientemente el presidente Luis Abinader, renovado en su cargo el pasado 19 de mayo tras un proceso electoral cuya integridad ha sido ampliamente reconocida.'),
(27, 'Rita Patiño, la indígena mexicana que fue encerrada 12 años en un psiquiátrico de EE.UU. porque no entendían su lengua ', 'Se presume que Rita Patiño Quintero llegó de Chihuahua a Kansas caminando, aunque en algún momento del trayecto, afirma el cineasta Santiago Esteinou, debió tomar La Bestia. ', 'slikica5.jpg', 'politics', 'La policía llegó a la iglesia un 8 de junio de 1983. La mujer, con su ropa sucia, sus pies maltratados y confundida, pronunció unas palabras que los agentes no lograron entender. La interrogaron en inglés, insistieron, pero no fue posible la comunicación. Y como nadie supo lo que dijo, ella perdió su libertad durante los 12 años siguientes.\r\nRita Patiño Quintero era su nombre, una indígena rarámuri, oriunda del estado de Chihuahua, en el norte de México. Ese día se refugiaba en el sótano del templo metodista de la ciudad de Manter, en el oeste de Kansas, EE.UU.\r\n\r\nAntes de que llegaran las autoridades, un pastor la descubrió mientras Rita comía huevos crudos.\r\n\r\nSe presume que llegó hasta allí caminando desde suelo mexicano. Después de todo, rarámuri significa &#34;corredores ligeros&#34; y proviene de rara, pie, y muri, ligero.'),
(28, 'Imágenes de las fuertes protestas en Argentina contra las reformas recogidas en la Ley Bases del presidente Milei', 'El debate en el Senado argentino del paquete de reformas estrella planteadas por el presidente Javier Milei recogidas en la Ley Bases se vio acompañado por fuertes protestas y violentos incidentes en las calles de Buenos Aires.', 'slikica2.png', 'politics', 'Los senadores debatieron y aprobaron este miércoles por un voto las reformas económicas que proponía Milei, que reducirían el peso del Estado y favorecerían la inversión privada, mientras en las calles policías y manifestantes se enfrentaban y se vivían momentos de violencia.\r\n\r\nMilei asegura que para relanzar la economía debe reducirse la carga que supone el sector estatal, pero sus rivales, partidos, sindicatos y organizaciones de izquierda creen que el presidente busca desmantelar los servicios públicos.\r\n\r\nEl paquete legislativo, que ganó con el voto de la vicepresidenta Victoria Villarruel, deberá volver a la Cámara de Diputados -que lo aprobó en abril- para su sanción, ya que los senadores introdujeron algunos cambios, pero se da por hecho que el Congreso lo convertirá en ley.'),
(30, 'La batalla por el Balón de Oro de Maradona que iba a ser subastado en Francia y cuya venta frenó la justicia', 'El Balón de Oro concedido al fallecido futbolista Diego Armando Maradona tras el Mundial de México de 1986 se ha convertido en objeto de una disputa judicial entre sus herederos y una casa de subastas francesa.', 'slikica6.png', 'sport', 'El trofeo fue entregado al astro argentino del fútbol por haber sido el mejor jugador del torneo, en el que Argentina se proclamó campeona con una actuación memorable del &#34;pelusa&#34;.\r\n\r\nLa casa de subastas francesa Aguttes tenía previsto subastarlo en los próximos días, pero un tribunal francés ordenó este miércoles su embargo judicial hasta que se aclare la propiedad del trofeo, que estuvo desaparecido durante décadas.\r\n\r\nEl tribunal quiere evitar que vuelva a desaparecer y revirtió una decisión judicial emitida la semana pasada que permitía seguir adelante con la subasta pese al rechazo de los herederos de Maradona, que aseguran que el trofeo fue robado y que el dueño actual no tiene la facultad para venderlo.'),
(31, 'Cuál fue la efectiva estrategia de seguridad que Claudia Sheinbaum aplicó en Ciudad de México (y por qué es difícil implementarla en todo el país)', 'Los mexicanos han visto pasar gobiernos de diferentes colores partidistas en los últimos 18 años que no han podido solucionar significativamente el que consideran es el principal problema del país: la inseguridad.', 'slika7.png', 'sport', 'A partir de 2007 se empezó a registrar un gran aumento en las muertes producto de la violencia: hasta ahora son más de 450.000 los fallecidos, una alarmante cifra que no se había alcanzado desde la guerra civil de la Revolución Mexicana.\r\n\r\nA lo largo de este periodo, Ciudad de México, la capital, pasó de tener problemas asociados a la delincuencia común, como asaltos o robos, a sufrir también el azote de bandas criminales asociadas al tráfico de drogas, que es el principal factor que ha contribuido a las cientos de miles de muertes violentas en todo el país.\r\n\r\nEn el gobierno de la alcaldesa Claudia Sheinbaum (2018-2023) comenzó a registrarse una disminución notable en el número de homicidios dolosos, que es considerado el crimen más grave. También otros delitos de “alto impacto” por su prevalencia mostraron un decrecimiento.\r\n\r\nSheinbaum, ahora presidenta electa del país, aseguró que esta reducción es resultado de su estrategia integral de seguridad y prometió implementarla en todo el país si ganaba la elección presidencial. '),
(32, 'Los resultados de Sheinbaum', 'Sheinbaum estuvo al frente del gobierno de Ciudad de México desde diciembre de 2018 y hasta junio de 2023, cuando se retiró del puesto para hacer campaña por la presidencia.', 'slikica8.png', 'sport', 'Como candidata, aseguró que los homicidios dolosos en la capital se redujeron 51% gracias a la estrategia implementada junto a su secretario de Seguridad Ciudadana, Omar García Harfuch, así como por la coordinación con la fiscal general, Ernestina Godoy.\r\n\r\nEn ese periodo, los registros oficiales disponibles de dos fuentes (SESNSP, Secretariado Ejecutivo del Sistema Nacional de Seguridad Pública, e Inegi, Instituto Nacional de Estadística y Geografía) muestran que la capital mexicana vio un descenso en los homicidios dolosos a partir de 2019.\r\n\r\nSin embargo, la reducción sería inferior a la que promocionó Sheinbaum, quien en algunos documentos de su campaña detallaba que se refería al promedio de homicidios dolosos por día, no a la cifra total de muertes con violencia que se dio en su gobierno.\r\n\r\nSi se comparan las cifras del SESNSP entre 2019 y 2023, la reducción fue de 44%. Los datos del Inegi arrojan una baja similar (42%), pero entre 2019 y 2022, que son sus últimos datos disponibles con un año completo.'),
(33, 'Chile: buscan millones de dólares para comprar a un empresario un paraíso natural ', 'Milenarios bosques de alerces, glaciares, humedales y especies en peligro de extinción, como el huemul o la ranita de Darwin.\r\n\r\nTodo esto se puede encontrar en la Hacienda Puchegüín, ubicada en la Patagonia norte de Chile, específicamente en la comuna de', 'slikica9.png', 'sport', 'El territorio -calificado como un verdadero refugio climático por conservacionistas de todo el mundo- es de propiedad de un reservado empresario chileno, Roberto Hagemann.\r\n\r\nPronto, sin embargo, podría pasar a manos de cinco organizaciones dedicadas a la conservación que, a pesar de haber sido férreos opositores a los proyectos que Hagemann intentó levantar en la zona en la última década, llegaron a un sorprendente acuerdo de compraventa con el empresario.\r\n\r\nPara ello tienen un plazo máximo de dos años para reunir los US$78 millones que se necesitan para adquirir el predio y elaborar el plan de conservación en la zona.\r\n\r\nEl precio rondaba los US$150 millones, según los registros de Christie&#39;s.'),
(34, 'Rengifo, director ejecutivo de Fondo Naturaleza Chile.Un hombre a caballo en la hacienda  Fuente de la imagen, Valentina Thenoux', '&#34;En Chile hemos dado pasos decisivos en materia de superficie protegida terrestre y marina, pero el desafío hoy es movilizar el financiamiento necesario para que esas áreas protegidas, públicas y privadas tengan efectivamente los instrumentos necesari', 'slikica10.png', 'sport', 'Según Andrés Diez, el plan de desarrollo que tienen pensado para la zona -y que debería estar listo en un plazo de siete años- incluye crear áreas preservadas, pero también senderos para el turismo, habilitación de infraestructura con señaléticas y puentes peatonales, y el desarrollo económico sostenible de la comunidad local.\r\n\r\nUn plan que, aunque todavía no se puede concretar, lleva años en la cabeza de estos ecologistas decididos a salvar un ecosistema claramente único e invaluable.\r\nlinea gris\r\n\r\nHaz clic aquí para leer más historias de BBC News Mundo.\r\n\r\nTambién puedes seguirnos en YouTube, Instagram, TikTok, X, Facebook y en nuestro nuevo canal de WhatsApp, donde encontrarás noticias de última hora y nuestro mejor contenido.\r\n\r\nY recuerda que puedes recibir notificaciones en nuestra app. Descarga la última versión y actívalas.'),
(35, 'Omacha: la fascinante historia del hombre delfín colombiano nombrado Explorador del Año de National Geographic', 'Los indígenas del Amazonas lo llaman Omacha, apelativo que esconde un poderoso significado.\r\n\r\nFernando Trujillo nació en Bogotá hace 56 años, pero ha pasado 37 de ellos en el Amazonas estudiando y luchando por conservar la fauna local y, en especial, los', 'slikica11.png', 'sport', 'En ese tiempo ha recorrido más de 80.000 kilómetros en ríos y ha convivido con grupos de las etnias ticunas, cocamas y yaguas, que lo han aceptado como un habitante más de la selva amazónica, la mayor del planeta con 5,5 millones de kilómetros cuadrados.\r\n\r\nCreó en 1991 la Fundación Omacha para defender la biodiversidad de la Amazonía frente a las constantes amenazas que la acechan, desde la deforestación y la minería ilegal hasta el cambio climático.\r\n\r\nY se convirtió esta semana en el primer latino nombrado Explorador del Año de National Geographic, reconocimiento que se otorga a quienes identifican y solucionan problemas críticos de nuestro planeta e inspiran a otros a actuar.'),
(36, 'La centroderecha refuerza su mayoría en el Parlamento Europeo mientras que la extrema derecha avanza', 'Simpatizantes del partido de extrema derecha francés de Marine Le Pen celebran la victoria.', 'slikica12.png', 'politics', 'Las primeras proyecciones sobre los resultados de las elecciones europeas muestran que la centroderecha reforzó su mayoría en el Parlamento, mientras que los partidos de extrema derecha conquistaron nuevos escaños.El centro se mantiene”, dijo la jefa de la Comisión Europea, Ursula von der Leyen, al celebrar la victoria del Partido Popular Europeo, que obtuvo 191 escaños y se consolidó como el bloque mayoritario en el Parlamento Europeo.\r\n\r\nNo obstante, los partidos de extrema derecha lograron avances en Francia, Alemania, Italia y Austria, mientras que los partidos liberales y verdes retrocedieron.');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('admin','member') NOT NULL DEFAULT 'member'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `role`) VALUES
(2, 'member1', 'memberpass', 'member'),
(5, 'Admin', '$2y$10$JX73wPWC50N3v2owkLxDyuW2mKs0xJI3/o7geQQfPV7ZDTNTWPx1q', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
