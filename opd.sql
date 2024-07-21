-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Tempo de geração: 08-Jun-2022 às 14:07
-- Versão do servidor: 5.7.36
-- versão do PHP: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `opd`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `burger`
--

DROP TABLE IF EXISTS `burger`;
CREATE TABLE IF NOT EXISTS `burger` (
  `burgerId` int(12) NOT NULL AUTO_INCREMENT,
  `burgerName` varchar(255) NOT NULL,
  `burgerPrice` int(12) NOT NULL,
  `burgerDesc` text NOT NULL,
  `burgerCategorieId` int(12) NOT NULL,
  `burgerPubDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`burgerId`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `burger`
--

INSERT INTO `burger` (`burgerId`, `burgerName`, `burgerPrice`, `burgerDesc`, `burgerCategorieId`, `burgerPubDate`) VALUES
(1, 'Crispy Comte Frico Cheeseburgers', 199, 'Salty, buttery, and slightly sharp, Comte cheese crisps similarly to Parmesan, adding an irresistibly crunchy frico layer to these cheeseburgers.', 1, '2021-03-17 21:20:58'),
(2, 'Urdaburger', 249, 'Smoky, melty \"pimentÃ³n\" cheese, crispy jamÃ³n serrano, and a savory-sweet aioli top beef patties in this towering tapas-inspired burger from Urdaneta, a popular tapas spot in Portland, OR. Kalimotxo, a Spanish red wine and cola cocktail, is the inspiration for the marvelously mauve aioli.\r\n\r\n', 1, '2021-03-17 21:23:05'),
(3, 'Japanese-Style Chili Burgers with Yuzu Mayo', 149, 'This burger is a two-hander, topped with Japanese-spiced chili, tomatoes, and shredded iceberg lettuce. Be careful not to overmix the beef before shaping it into patties; a light hand yields tender burgers.\r\n', 1, '2021-03-17 21:23:48'),
(4, 'Steak Burgers with au Poivre Special Sauce', 319, ' Located on the cow adjacent to the richly marbled rib eye, chuck steak has a similar tenderness and fat profile at a lower cost, making it a great mix-in for hamburgers. A duo of briny green peppercorns and cornichons combined with a dash of cognac dress up store-bought mayo to create a creamy sauce thatâ€™s just sharp enough to cut through the fatty heartiness of these salt-crusted burgers.', 1, '2021-03-17 21:24:38'),
(5, 'Kimchi Pork Burgers', 299, 'Korean American chef Edward Lee, of Whiskey Dry in Louisville, was inspired by the classic Korean pairing of pork and spicy fermented kimchi when he created this crunchy, pork-rind-topped burger. ', 1, '2021-03-17 21:25:42'),
(6, 'Thai Tuna Burgers with Ginger-Lemon Mayonnaise', 199, 'These offbeat tuna burgers were loosely inspired by a Thai fried white fish patty called tod man pla. The Thai cucumber salad stands in for pickles.', 1, '2021-03-17 21:26:31'),
(7, 'BLT Smash-Burgers', 219, 'Weâ€™re beefing up the summertime BLT with these smash-burgersâ€”thin beef patties that are pressed onto a ripping hot plancha, or flat-top griddle, so they cook quickly and develop a smoky crust. Without grill grates, the juices from the burgers stay on the griddle, keeping them moist.', 1, '2021-03-17 21:27:21'),
(8, 'Smash Burgers', 299, 'You will want to smash them pretty thin so they cook quickly, but it also gets you those crispy, browned edges while still keeping the interior nice and juicy. \r\n\r\n', 1, '2021-03-17 21:28:06'),
(9, 'Bacon-Wrapped Hamburgers', 149, 'Since South Dakota summers are so short, we grill out as often as we can when the weather is warm. By mixing the cheese into the burger, I know I will get a little cheese in every bite.', 1, '2021-03-17 21:28:49'),
(10, 'F&Ws Ultimate Burger', 349, 'The most delicious homemade burger blend, combining five cuts of meat into the juiciest, beefiest and most consistently delicious burger youâ€™ll ever have.\r\n\r\n', 1, '2021-03-17 21:29:41'),
(11, 'Fried Green Tomato Double Cheeseburgers', 329, 'The middle bun for a crisp fried green tomato that absorbs all of the savory juices from the beef, melty cheese and sweet chile mayo. The fried tomato adds crunch and a mild acidity.', 1, '2021-03-17 21:46:21'),
(13, 'Chicken Burgers with Crispy Cheddar Cheese', 199, 'Instead of melting the cheddar on the burger, chef Edward Lee, of Louisvilleâ€™s Whiskey Dry, likes to crisp the cheese slices in a skillet. â€œThe best part of the burger is always that bit of cheese that melts down the side and crisps on the grate of the grill,â€ he says. â€œThis way you get crunchy texture and savory caramelization in every bite.', 2, '2021-03-17 21:34:37'),
(14, 'Ground Chicken Burgers', 249, 'These ground chicken burgers are a great addition to any cookout, and easy and quick enough to serve as a weeknight family meal. Wonderfully seasoned, they are loaded full of flavor and perfect for any summer feast!', 2, '2021-03-17 21:35:31'),
(15, 'Smashed Chicken Burgers With Cheddar and Parsley', 249, 'These fresh, flavorful chicken burgers have a crunchy exterior, a tender interior and a healthy slathering of limey Dijon mayonnaise. Theyâ€™re paired with salad thatâ€™s prepared using leftover burger ingredients, and a little avocado and lettuce. Serve the burgers between lightly toasted buns, as the recipe suggests, or skip the bread and enjoy them without for a lighter dinner.\r\n\r\n', 2, '2021-03-17 21:36:36'),
(16, 'Fried chicken burger', 399, 'These fried chicken burgers are insanely delicious with a tangy gherkin mayonnaise and crisp lettuce; the ultimate dinner for fried chicken lovers! \r\n\r\n', 2, '2021-03-17 21:37:21'),
(17, 'Juicy Ground Chicken Burger', 319, 'These juicy ground chicken burgers are moist and flavorful! Perfect any night if the week!', 2, '2021-03-17 21:38:13'),
(18, 'Crispy Chicken Burgers', 249, 'These fried chicken burgers are ultra crispy and absolutely bursting with flavour.', 2, '2021-03-17 21:39:49'),
(19, 'Sweet Potato Cheddar BBQ Chicken Burgers', 199, 'Seriously good BBQ chicken burgers with shredded sweet potato to keep them juicy. Top these incredible sweet potato chicken burgers with tangy, sweet BBQ sauce, sharp cheddar cheese, red onion and lettuce for the ultimate healthy grilled chicken burger recipe thatâ€™s perfect for summer!', 2, '2021-03-17 21:40:58'),
(20, 'Buttermilk Chicken Burger', 349, 'As good as a straight up chicken burger can be, a period of marinating in the gentle acidity of buttermilk makes such a difference. The flavours infuse the chicken, while the buttermilkâ€™s acids relax the proteins, giving you a succulent burger beneath the crisp outer. Iâ€™d recommend the gherkins for a little sweet sharpness, and the kick of the hot sauce if itâ€™s to your taste. ', 2, '2021-03-17 21:41:49'),
(21, 'Ultimate Veggie Burgers', 99, 'These veggie burgers hit every satisfying, savory note with a hearty mix of pearl barley, chickpeas, mushrooms, and crispy panko. For the sturdiest patties, evenly distribute the panko by stirring the patty mixture until very well-combined.\r\n\r\n', 3, '2021-03-17 21:03:26'),
(22, 'Rajma Veggie Burgers', 149, 'Canned beans get an umami burst with the addition of grated Parmesan and a melty slice of sharp cheddar cheese. Eggs and toasted breadcrumbs bind the mixture together, ensuring it will hold together in the pan. And donâ€™t skip the piles of toppings. They make this already wonderful burger even more special.\r\n', 3, '2021-03-17 21:22:07'),
(23, 'Roasted Veggie Burgers with Carrot Ketchup', 99, 'Instead of creating a ground patty of beans, grains and vegetables that replicates the look and texture of meat, Lee serves this gorgeous ratatouille-inspired â€œburgerâ€ of colorful roasted vegetables layered with melty cheese.', 3, '2021-03-17 21:44:44'),
(24, 'Zucchini-Chickpea Veggie Burgers with Tahini-Ranch Sauce', 149, 'Savory chickpea and zucchini patties are topped with a creamy, herb-flecked tahini ranch sauce, juicy tomato slices and peppery arugula for a satisfying and healthy homemade veggie burger. Serve them on buns or stuff them in pitas.', 3, '2022-06-05 15:55:51'),
(25, 'Classic Veg', 129, 'Bite into delight! Witness the epic combination of pizza and burger with our classic Burger Pizza, that looks good and tastes great!', 4, '2021-03-17 22:03:44'),
(26, 'Premium Veg', 139, 'The good just got better! Treat yourself to the premium taste of the Burger Pizza, that looks good and tastes great with paneer and red paprika.', 4, '2021-03-17 22:05:08'),
(27, 'Classic Non Veg', 149, 'For all the meat cravers, try the classic non-veg Burger Pizza loaded with the goodness of burger and the greatness of pizza.', 4, '2021-03-17 22:06:06'),
(37, 'Lipton Ice Tea', 25, ' 250ml', 5, '2021-03-17 22:12:53'),
(38, 'Mirinda', 35, '500ml', 5, '2021-03-17 22:13:38'),
(39, 'PEPSI BLACK CAN', 45, 'PEPSI BLACK CAN', 5, '2021-03-17 22:14:24'),
(40, 'Pepsi\r\n', 52, '500ml', 5, '2021-03-17 22:16:29'),
(41, '7Up', 52, '500ml', 5, '2021-03-17 22:17:08'),
(42, 'Pimiento Cheese Fries', 119, 'Broils them with a tequila-spiked pimiento cheese topping. It is wonderfully decadent melted into the fries and also excellent as a dip.', 6, '2021-03-18 07:57:27'),
(43, 'Baked Chicken Nuggets', 99, 'Baked chicken nuggets are low fat and healthier than fried. They are crisp on the outside and tender inside.', 6, '2021-03-18 07:59:52'),
(44, 'Beer-Battered Onion Rings', 99, 'Up your snack and side dish game with a crowd-friendly recipe for hot, crispy Beer-Battered Onion Rings.', 6, '2021-03-18 08:00:39'),
(45, 'Cheese Fries With Bacon', 99, 'These cheese fries are crispy french fries topped two types of melted cheese, smoky bacon and fresh herbs. A hearty appetizer option that takes just minutes to put together and is always a big hit!', 6, '2021-03-18 08:01:29'),
(46, 'Fried Mozzarella Cheese Sticks', 99, 'They are deep-fried until golden and crispy on the outside, with melted gooey cheese on the inside.', 6, '2021-03-18 08:03:17'),
(53, 'Packaged Drinking Water', 20, 'Drinking Water	', 5, '2021-03-18 08:20:40'),
(54, 'Zucchini Burgers with Roasted Garlic Tzatziki', 179, 'These zucchini-loaded burgers are too tender for the grill grate, so they are cooked on a griddle, but they get a great kick from smoked paprika.', 1, '2021-03-17 21:47:07');

-- --------------------------------------------------------

--
-- Estrutura da tabela `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `categorieId` int(12) NOT NULL AUTO_INCREMENT,
  `categorieName` varchar(255) NOT NULL,
  `categorieDesc` text NOT NULL,
  `categorieCreateDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`categorieId`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `categories`
--

INSERT INTO `categories` (`categorieId`, `categorieName`, `categorieDesc`, `categorieCreateDate`) VALUES
(1, 'Classic Burger', 'A quarter pound flattened piece of meat typically a beef mixture that has been shaped into a circle and covered with a slice of cheese. Along with lettuce, tomato, ketchup and mustard. All in between two circular shaped buns.', '2021-03-17 18:16:28'),
(2, 'Chicken Burger', 'Crispy seasoned chicken breast, topped with mandatory melted cheese and piled onto soft rolls with onion, avocado, lettuce, tomato and garlic mayo. Quick to make for a midweek meal, great for gatherings!', '2021-03-17 18:17:14'),
(3, 'Veggie Burger', 'A burger patty that does not contain meat. These burgers may be made from ingredients like beans, especially soybeans and tofu, nuts, grains, seeds or fungi such as mushrooms or mycoprotein.', '2021-03-17 18:17:43'),
(4, 'Burger Pizza', 'Introducing all new Burger Pizza with the tag line looks like a burger, tastes like a pizza. Burger Pizza is burger sized but comes in a small pizza box. It is come with pizza toppings such as herbs, vegetables, tomato sauce and mozzarella.', '2021-03-17 18:19:10'),
(5, 'Drinks', 'A liquid intended for human consumption. In addition to their basic function of satisfying thirst, drinks play important roles in human culture.', '2021-03-17 21:58:58'),
(6, 'Side Dish', 'Essentially any food served as an accompaniment to a main course. Beyond this basic definition, the exact nature of a side dish can vary widely, ranging from simple steamed vegetables to elaborate casseroles.', '2021-03-18 07:55:28');

-- --------------------------------------------------------

--
-- Estrutura da tabela `contact`
--

DROP TABLE IF EXISTS `contact`;
CREATE TABLE IF NOT EXISTS `contact` (
  `contactId` int(21) NOT NULL AUTO_INCREMENT,
  `userId` int(21) NOT NULL,
  `email` varchar(35) NOT NULL,
  `phoneNo` bigint(21) NOT NULL,
  `orderId` int(21) NOT NULL DEFAULT '0' COMMENT 'If problem is not related to the order then order id = 0',
  `message` text NOT NULL,
  `time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`contactId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `contact`
--

INSERT INTO `contact` (`contactId`, `userId`, `email`, `phoneNo`, `orderId`, `message`, `time`) VALUES
(1, 2, 'user@gmail.com', 3333333333, 2, 'Testando', '2022-06-07 16:28:00');

-- --------------------------------------------------------

--
-- Estrutura da tabela `contactreply`
--

DROP TABLE IF EXISTS `contactreply`;
CREATE TABLE IF NOT EXISTS `contactreply` (
  `id` int(21) NOT NULL AUTO_INCREMENT,
  `contactId` int(21) NOT NULL,
  `userId` int(23) NOT NULL,
  `message` text NOT NULL,
  `datetime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `deliverydetails`
--

DROP TABLE IF EXISTS `deliverydetails`;
CREATE TABLE IF NOT EXISTS `deliverydetails` (
  `id` int(21) NOT NULL AUTO_INCREMENT,
  `orderId` int(21) NOT NULL,
  `deliveryBoyName` varchar(35) NOT NULL,
  `deliveryBoyPhoneNo` bigint(25) NOT NULL,
  `deliveryTime` int(200) NOT NULL COMMENT 'Time in minutes',
  `dateTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `orderId` (`orderId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `orderitems`
--

DROP TABLE IF EXISTS `orderitems`;
CREATE TABLE IF NOT EXISTS `orderitems` (
  `id` int(21) NOT NULL AUTO_INCREMENT,
  `orderId` int(21) NOT NULL,
  `burgerId` int(21) NOT NULL,
  `itemQuantity` int(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `orderitems`
--

INSERT INTO `orderitems` (`id`, `orderId`, `burgerId`, `itemQuantity`) VALUES
(1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `orders`
--

DROP TABLE IF EXISTS `orders`;
CREATE TABLE IF NOT EXISTS `orders` (
  `orderId` int(21) NOT NULL AUTO_INCREMENT,
  `userId` int(21) NOT NULL,
  `address` varchar(255) NOT NULL,
  `zipCode` int(21) NOT NULL,
  `phoneNo` bigint(21) NOT NULL,
  `amount` int(200) NOT NULL,
  `paymentMode` enum('0','1') NOT NULL DEFAULT '0' COMMENT '0=cash on delivery, \r\n1=online ',
  `orderStatus` enum('0','1','2','3','4','5','6') NOT NULL DEFAULT '0' COMMENT '0=Order Placed.\r\n1=Order Confirmed.\r\n2=Preparing your Order.\r\n3=Your order is on the way!\r\n4=Order Delivered.\r\n5=Order Denied.\r\n6=Order Cancelled.',
  `orderDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`orderId`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `orders`
--

INSERT INTO `orders` (`orderId`, `userId`, `address`, `zipCode`, `phoneNo`, `amount`, `paymentMode`, `orderStatus`, `orderDate`) VALUES
(1, 1, '1234 Main St, near st, Surat, Gujarat', 111111, 1111111111, 99, '0', '0', '2022-06-06 18:17:25'),
(2, 2, '1234 Main St, near st, Gurat, Sugarat', 333333, 3333333333, 350, '0', '0', '2022-06-07 16:22:20');

-- --------------------------------------------------------

--
-- Estrutura da tabela `sitedetail`
--

DROP TABLE IF EXISTS `sitedetail`;
CREATE TABLE IF NOT EXISTS `sitedetail` (
  `tempId` int(11) NOT NULL AUTO_INCREMENT,
  `systemName` varchar(21) NOT NULL,
  `email` varchar(35) NOT NULL,
  `contact1` bigint(21) NOT NULL,
  `contact2` bigint(21) DEFAULT NULL COMMENT 'Optional',
  `address` text NOT NULL,
  `dateTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`tempId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `sitedetail`
--

INSERT INTO `sitedetail` (`tempId`, `systemName`, `email`, `contact1`, `contact2`, `address`, `dateTime`) VALUES
(1, 'Burger World', '2022.burgerworld@gmail.com', 2515469442, 6304468851, 'Rua da CalÃ§ada de SÃ£o Martinho 16.<br> CovilhÃ£', '2021-03-23 19:56:25');

-- --------------------------------------------------------

--
-- Estrutura da tabela `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(21) NOT NULL AUTO_INCREMENT,
  `username` varchar(21) NOT NULL,
  `firstName` varchar(21) NOT NULL,
  `lastName` varchar(21) NOT NULL,
  `email` varchar(35) NOT NULL,
  `phone` bigint(20) NOT NULL,
  `userType` enum('0','1') NOT NULL DEFAULT '0' COMMENT '0=user\r\n1=admin',
  `password` varchar(255) NOT NULL,
  `joinDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `users`
--

INSERT INTO `users` (`id`, `username`, `firstName`, `lastName`, `email`, `phone`, `userType`, `password`, `joinDate`) VALUES
(1, 'admin', 'admin', 'admin', 'admin@gmail.com', 1111111111, '1', '$2y$10$AAfxRFOYbl7FdN17rN3fgeiPu/xQrx6MnvRGzqjVHlGqHAM4d9T1i', '2021-04-11 11:40:58'),
(2, 'user', 'user', 'name', 'user@gmail.com', 3333333333, '0', '$2y$10$p8qXrm9RMJDijnjjMrV.1.Z2rCfdSxbblFtepDhdI6GdIlXxh1nTq', '2022-06-07 16:12:20');

-- --------------------------------------------------------

--
-- Estrutura da tabela `viewcart`
--

DROP TABLE IF EXISTS `viewcart`;
CREATE TABLE IF NOT EXISTS `viewcart` (
  `cartItemId` int(11) NOT NULL AUTO_INCREMENT,
  `burgerId` int(11) NOT NULL,
  `itemQuantity` int(100) NOT NULL,
  `userId` int(11) NOT NULL,
  `addedDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`cartItemId`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `viewcart`
--

INSERT INTO `viewcart` (`cartItemId`, `burgerId`, `itemQuantity`, `userId`, `addedDate`) VALUES
(2, 1, 1, 3, '2022-06-07 16:19:53'),
(3, 40, 1, 3, '2022-06-07 16:20:02'),
(4, 45, 1, 3, '2022-06-07 16:20:11');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `burger`
--
ALTER TABLE `burger` ADD FULLTEXT KEY `burgerName` (`burgerName`,`burgerDesc`);

--
-- Índices para tabela `categories`
--
ALTER TABLE `categories` ADD FULLTEXT KEY `categorieName` (`categorieName`,`categorieDesc`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
