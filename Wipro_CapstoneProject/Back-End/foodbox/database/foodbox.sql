-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3307
-- Generation Time: May 22, 2022 at 01:05 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3


SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";




/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;


--
-- Database: `foodbox`
--


-- --------------------------------------------------------


--
-- Table structure for table `address`
--


CREATE TABLE `address` (
  `id` int(11) NOT NULL,
  `street` varchar(55) NOT NULL,
  `city` varchar(55) NOT NULL,
  `zipCode` varchar(55) NOT NULL,
  `user_id` int(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
drop table address;
-- --------------------------------------------------------


--
-- Table structure for table `cuisine`
--


CREATE TABLE `cuisine` (
  `id` bigint(11) NOT NULL,
  `cuisine_name` varchar(411) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


drop table cuisine;
--
-- Dumping data for table `cuisine`
--


INSERT INTO `cuisine` (`id`, `cuisine_name`) VALUES
(1, 'Argentina'),
(2, 'Dubai'),
(3, 'vietnam'),
(4, 'Indian'),
(5, 'Chinese');


-- --------------------------------------------------------


--
-- Table structure for table `product`
--


CREATE TABLE `product` (
  `id` bigint(11) NOT NULL,
  `name` varchar(111) NOT NULL,
  `description` varchar(1000) DEFAULT NULL,
  `price` decimal(55,0) DEFAULT NULL,
  `image_url` varchar(500) DEFAULT NULL,
  `date_created` datetime(6) DEFAULT NULL,
  `last_updated` datetime(6) DEFAULT NULL,
  `cuisine_id` bigint(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
drop table product;





--
-- Dumping data for table `product`
--


INSERT INTO `product` (`id`, `name`, `description`, `price`, `image_url`, `date_created`, `last_updated`, `cuisine_id`) VALUES
(1, 'Provoleta', 'Argentineans give whole new meaning to grilled cheese with their trademark dish of provoleta. A consequence of the significant Italian immigration to Argentina, provoleta is the country’s variant on provolone. Pungent, sharp, sliced discs of the cheese are topped with chilli flakes and herbs, like oregano, then grilled. The nearly melted cheese is served crisp and slightly caramelised on the outside, gooey and smokey on the interior. Top it off with a drizzle of olive oil or a spoonful of chimic', '20', 'https://images.immediate.co.uk/production/volatile/sites/30/2020/08/provoleta-d9fe0ff.jpg?quality=90&webp=true&fit=700,350', '2022-09-15 23:17:00.000000', '2022-09-13 23:17:03.000000', 1),
(2, ' Dulce de leche', 'Loosely translated as this thick caramel is the result of condensed milk being slowly reduced until sweetened and sticky. Look for it in everything from alfajores and dessert empanadas to another national favourite, helado (ice cream) over which it is liberally drizzled and downed by the kilo.', '23', 'https://images.immediate.co.uk/production/volatile/sites/30/2020/08/truffles-ae071d5.jpg?quality=90&webp=true&fit=700,350', '2022-07-15 23:17:00.000000', '2022-09-06 08:52:35.000000', 1),
(4, 'Alfajores', 'Argentina is said to be the world’s largest consumer of alfajores, crumbly shortbread-like biscuits sandwiching jams, mousses or dulce de leche. Alfajores’ roots lie in the Arab world, brought to southern Spain by the Moors. Spaniards later carried the sweets to Argentina – and no one has looked back since. Akin to their national cookie, Argentines indulge in these cylindrical biscuits throughout the day and across the country.
.', '33', 'https://images.immediate.co.uk/production/volatile/sites/30/2020/08/alfajores-da5f429.jpg?quality=90&webp=true&fit=700,350', '2022-07-15 23:17:00.000000', '2022-07-13 23:17:03.000000', 1),
(5, ' Empanadas', 'Savoury empanadas are filled with stewed and spiced ground beef, chicken, goat, cheese and/or vegetables, with the markings on the pastry fold identifying the treasures hidden inside.', '12', 'https://images.immediate.co.uk/production/volatile/sites/30/2020/08/empanadas-47bca20.jpg?quality=90&webp=true&fit=700,350', '2022-07-15 23:17:00.000000', '2022-07-15 23:17:00.000000', 1),
(6, ' Choripán', 'Made with pork and beef chorizo cooked over charcoal or wood flames, the sausage is grilled, then butterflied down the centre, topped with chimichurri and served between slices of crusty bread.', '12', 'https://images.immediate.co.uk/production/volatile/sites/30/2020/08/choripan-c0d51da.jpg?quality=90&webp=true&fit=700,350', '2022-01-19 23:24:19.000000', '2022-05-19 23:24:19.000000', 1),
(7, 'Shanklish', 'This cow or sheep milk cheese is usually fashioned into golf ball-sized bites and rolled in zaatar herbs or chili flakes (the latter version favored in Syria). Also often enjoyed with diced tomato, onion and olive oil.', '31', 'https://dynaimage.cdn.cnn.com/cnn/q_auto,w_602,c_fill,g_auto,h_339,ar_16:9/http%3A%2F%2Fcdn.cnn.com%2Fcnnnext%2Fdam%2Fassets%2F170209174456-shanklish.jpg', '2022-05-19 23:24:19.000000', '2022-05-19 23:24:19.000000', 1),
(8, 'Empanadas', 'Empanadas are stuffed dough pockets. They’re commonly baked or fried.Empanadas are stuffed with different meats such as chicken or beef and veggies..', '44', 'https://blog.amigofoods.com/wp-content/uploads/2019/04/argentinian-empanadas-1.jpg', '2022-03-14 23:24:19.000000', '2022-05-19 23:24:19.000000', 1),
(9, ' Choripán', 'Choripán is a chorizo sandwich. Chorizo is grilled, split down the middle, and served on a baguette or marraqueta roll.', '31', 'https://blog.amigofoods.com/wp-content/uploads/2019/04/choripan-chimichurri.jpg', '2022-08-19 23:24:19.000000', '2022-05-19 23:24:19.000000', 1),
(10, 'Milanesa', 'Take some meat, soak it in egg batter, then fry it up. What do you get? A delicious Argentine dish called Milanesa.', '45', 'https://blog.amigofoods.com/wp-content/uploads/2019/04/milanesa.jpg', '2022-11-19 23:24:19.000000', '2022-05-19 23:24:19.000000', 1),
(11, 'Knafeh', 'This delicious cheesecake uses Nabusi cheese, which is common to Palestine, Syria and Lebanon. The blush coloring comes from orange blossom water or rose water.', '31', 'https://dynaimage.cdn.cnn.com/cnn/q_auto,w_602,c_fill,g_auto,h_339,ar_16:9/http%3A%2F%2Fcdn.cnn.com%2Fcnnnext%2Fdam%2Fassets%2F170209172748-knafeh.jpg', '2022-07-19 23:24:19.000000', '2022-05-19 23:24:19.000000', 1),
(12, 'Tikka', 'Tikka is the Hindi term for “small chunks,” and masala means a spice blend. So when small chunks of anything, like chicken, are cooked in a sauce with a particular spice blend, it is called Chicken Tikka Masala. The same way when paneer comes to the play, it is called Paneer Tikka Masala. The world famous sauce used in tikka masala is mainly tomato-based, with some richness added by cream or thick yogurt.', '54', 'https://sukhis.com/app/uploads/2018/10/shutterstock_620407940-1024x683.jpg', '2022-08-09 23:17:00.000000', '2022-08-12 18:06:00.000000', 4),
(13, 'Aloo shimla mirch	', 'Green capsicum with potatoes sautéed with cumin seeds, onions, tomatoes, ginger-garlic paste, turmeric, red chilli powder and garam masala	', '42', 'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b0/Spicy_alloo_with_tadka_mirchi.jpg/800px-Spicy_alloo_with_tadka_mirchi.jpg', '2022-08-18 23:17:00.000000', '2022-08-12 23:17:00.000000', 4),
(14, 'Naan', 'Naan is one of the most popular Indian flatbreads. To make a naan, wheat flour dough is prepared either by allowing it to rise using yeast, or by the addition of yogurt to the dough. That dough is then rolled into flatbreads and cooked in an Indian oven, called a tandoor.', '52', 'https://sukhis.com/app/uploads/2017/06/IndianBread.jpg', '2022-05-19 07:15:19.000000', '2022-08-12 09:16:00.000000', 4),
(15, 'Dumplings', 'Chinese dumplings (Jiaozi) generally consist of different kinds of meat such as pork, beef, chicken, shrimp or even fish, and chopped vegetables wrapped into a piece of dough. The most common fillings include pork with Chinese cabbage, pork with celery, lamb with spring onion, leeks with eggs, but there are many more varities.', '63', 'https://www.chefspencil.com/wp-content/uploads/Chinese-dumplings-Jiaozi-.jpg.webp', '2022-08-12 23:17:00.000000', '2022-05-19 23:24:19.000000', 5),
(16, 'Chai/Tea', ' The Indian name for tea is Chai. You make chai by cooking a certain ration of water to milk, then add sugar as a sweetener and black tea together. And yes, when your order a “Chai Tea Latte” at Starbucks you’re ordering a “Tea Tea Latte.”', '42', 'https://sukhis.com/app/uploads/2017/06/Indian-Chai.jpg', '2022-05-19 23:24:19.000000', '2022-05-19 07:24:19.000000', 4),
(17, 'Poha', 'Specialty from Madhya Pradesh. Common snack in central part of India. Flattended rice, potato, turmeric.	', '24', 'https://upload.wikimedia.org/wikipedia/commons/thumb/f/f4/Poha%2C_a_snack_made_of_flattened_rice.jpg/180px-Poha%2C_a_snack_made_of_flattened_rice.jpg', '2022-05-02 23:24:19.000000', '2022-05-19 23:24:19.000000', 4),
(18, 'Gulab Jamun', 'Gulab Jamun is definitely the king if deserts. Milk solids are crushed into powder and then mixed with milk in order to knead into a smooth dough. The dough is then rolled into small balls, deep fried, and dunked into a sugar syrup until the balls absorb the syrup and become soft and juicy.', '55', 'https://www.funfoodfrolic.com/wp-content/uploads/2014/08/Gulab-Jamun-2-1.jpg', '2022-05-01 23:24:19.000000', '2022-05-19 23:24:19.000000', 4),
(19, 'aloo gobi', 'Cauliflower with potatoes sautéed with garam masala, turmeric, sometimes kalonji and curry leaves.	', '44', 'https://upload.wikimedia.org/wikipedia/commons/c/c8/Aloo_gobi.jpg', '2022-05-19 23:24:19.000000', '2022-05-19 23:24:19.000000', 4),
(20, 'Cha ca', 'This namesake alley is home to Cha Ca La Vong, which serves sizzling chunks of fish seasoned with garlic, ginger, turmeric and dill on a hot pan tableside.', '88', 'https://dynaimage.cdn.cnn.com/cnn/q_auto,w_634,c_fill,g_auto,h_357,ar_16:9/http%3A%2F%2Fcdn.cnn.com%2Fcnnnext%2Fdam%2Fassets%2F170504152158-cha-ca.jpg', '2022-08-12 23:17:00.000000', '2022-08-12 23:17:00.000000', 3),
(21, 'Banh xeo', 'A good banh xeo is a crispy crepe bulging with pork, shrimp, and bean sprouts, plus the garnish of fresh herbs that are characteristic of most authentic Vietnamese dishes. To enjoy one like a local, cut it into manageable slices, roll it up in rice paper or lettuce leaves and dunk it in whatever special sauce the chef has mixed up for you.', '63', 'https://dynaimage.cdn.cnn.com/cnn/q_auto,w_634,c_fill,g_auto,h_357,ar_16:9/http%3A%2F%2Fcdn.cnn.com%2Fcnnnext%2Fdam%2Fassets%2F170504142339-banh-xeo.jpg', '2022-07-02 23:17:00.000000', '2022-07-15 23:17:00.000000', 3),
(22, 'Cao lau', 'This pork noodle dish from Hoi An is a bit like the various cultures that visited the trading port at its prime. The thicker noodles are similar to Japanese udon, the crispy won-ton crackers and pork are a Chinese touch, while the broth and herbs are clearly Vietnamese. Authentic cau lao is made only with water drawn from the local Ba Le well.', '53', 'https://dynaimage.cdn.cnn.com/cnn/q_auto,w_634,c_fill,g_auto,h_357,ar_16:9/http%3A%2F%2Fcdn.cnn.com%2Fcnnnext%2Fdam%2Fassets%2F111005063013-vietnam-food-cao-lau.jpg', '2022-05-19 23:24:19.000000', '2022-05-19 23:24:19.000000', 3),
(23, 'Banh khot', 'This dainty variation of a Vietnamese pancake has all the same tasty ingredients but is a fraction of the size. Each banh knot can be scoffed in one ambitious but satisfying mouthful. The crunchy outside is made using coconut milk and the filling usually consists of shrimp, mung beans, and spring onions with a dusting of dried shrimp flakes on top.', '36', 'https://dynaimage.cdn.cnn.com/cnn/q_auto,w_634,c_fill,g_auto,h_357,ar_16:9/http%3A%2F%2Fcdn.cnn.com%2Fcnnnext%2Fdam%2Fassets%2F170504151643-banh-knot.jpg', '2022-08-12 23:17:00.000000', '2022-08-12 23:17:00.000000', 3),
(24, 'Adas Polo', 'A thin layer of lavash bread can be cooked beneath the rice to serve as a tahdig. Press it flat against the pot for even cooking.', '63', 'https://www.saveur.com/uploads/2019/03/11/L2N233EB3VWQE43J7IJHYBS3Z4-1024x768.jpg', '2021-08-12 23:17:00.000000', '2021-08-12 23:17:00.000000', 3),
(25, 'Manousheh ', ' Manousheh, the local pizza, is an apt choice for the piquant taste buds, especially if you are looking for Dubai specialties. It proves to be a perfect pick for a luscious breakfast. Stretched dough or flatbread, filled with exotic toppings like salty Akkawi cheese, earthy zaatar herbs, and olive oil. It is touted as the go-to dish for the best street food in Dubai. Make sure you hog on these with sweet jam and minced lamb. It is popular with both tourists and locals.', '68', 'https://assets.traveltriangle.com/blog/wp-content/uploads/2015/09/Manousheh-400x265.jpg', '2022-07-15 23:17:00.000000', '2022-07-13 23:17:03.000000', 2),
(26, 'Iranian Sangak ', 'This Iranian leavened flatbread made out of whole wheat is served plain or rectangular in shape. It is the famous food of Dubai which you must try! The bread can also be made gluten-free from scratch. It is the go-to food item for health freaks and foodies..', '61', 'https://assets.traveltriangle.com/blog/wp-content/uploads/2015/09/Iranian-Sangak-400x300.jpg', '2022-07-29 23:17:00.000000', '2022-07-15 23:17:00.000000', 2),
(27, 'Chelo Kebab ', 'For best food in Dubai, head to Chelo Kebab. Aromatic saffron-scented basmati rice served with a pat of butter on kebabs – Chelo Kebab is another name in the list of mouthwatering Dubai famous foods. You must try this scrumptious non-vegetarian Dubai dishes. It is said to be out of the world and exceptionally tasty.', '14', 'https://assets.traveltriangle.com/blog/wp-content/uploads/2015/09/Chelo-Kebab-400x249.jpg', '2022-05-19 23:24:19.000000', '2022-05-19 23:24:19.000000', 2),
(28, 'Al Harees
', 'Wheat, meat, and a pinch of salt, when combined with some hours of baking, produce this really wonderful dish that will leave you craving for a second helping. Mostly savored during Ramadan, Eid and weddings, Al Harees is one of the most popular Dubai traditional food. You’ll be amazed at how warm and hospitable the Dubai locals are when you ask them where would you find the best Al Harees. It is easily one of the best dishes from Dubai cuisine.', '28', 'https://media-cdn.tripadvisor.com/media/photo-s/13/71/ef/ef/caption.jpg', '2022-08-15 23:17:00.000000', '2022-05-19 23:24:19.000000', 2),
(29, 'Al Machboos ', 'Rice, onions, and meat, seasoned with spices, salt, and dried lemon, does this excite you as much as it excites me? This dish has been listed in the list of famous food in Dubai, due to the zesty flavors. Make sure to try their salad and raita. It is supposed to be heavenly. You’ll be surprised at how good this food tastes, considering it looks very plain and unsophisticated.', '68', 'https://assets.traveltriangle.com/blog/wp-content/uploads/2015/09/Al-Machboos-400x263.jpg', '2022-05-25 23:24:19.000000', '2022-05-19 23:24:19.000000', 2),
(31, 'Proper Street Kebabs', ' From mutton kebabs with cumin and squid cooked on an iron plate to roast chicken wings and oysters with spicy sauce, the Chinese street barbecue experience is a combination of the food itself and the busy street bustle. It is unique and hard to find anywhere else.', '25', 'https://www.chefspencil.com/wp-content/uploads/Chinese-street-kebabs.jpg.webp', '2022-07-05 23:17:00.000000', '2022-07-15 23:17:00.000000', 5),
(32, 'Spicy Crayfish', 'Over the past decade, crayfish has swept across China’s cities, the whole country is crazy about this crustacean. The crayfish is stewed in a broth with ginger, garlic, pepper, and many other spices. From spring to early autumn, a night time dish of crayfish has become very popular. At the weekends, groups of friends go to a crowded stall, relax on a small plastic stools, and order one or two pots of red crayfish.', '86', 'https://www.chefspencil.com/wp-content/uploads/Beijing-hot-pot-.jpg.webp', '2022-05-10 23:24:19.000000', '2022-05-19 23:24:19.000000', 5),
(33, 'Guilin Rice Noodles', 'Guilin is in the south of China and surrounded by clear water and karst landform. It is famous not only for its paradise-like scenery, but also for its refreshing rice noodles sprinkled with sour beans, peanuts, bamboo shoots, and shallots.', '73', 'https://www.chefspencil.com/wp-content/uploads/Guilin-rice-noodles.jpg.webp', '2022-08-24 23:17:00.000000', '2022-05-19 23:24:19.000000', 5),
(34, 'Polpette', 'Polpette can be made of meat, fish, potatoes, rice or vegetables and can be prepared stewed, baked or fried.', '63', 'http://yourguidetoitaly.com/slowitaly/wp-content/uploads/2018/03/polpette-c.jpg', '2022-07-15 23:17:00.000000', '2022-07-12 23:17:03.000000', 5);


-- --------------------------------------------------------
drop table product;
--
-- Table structure for table `users`
--


CREATE TABLE `users` (
  `id` bigint(11) NOT NULL,
  `type` int(11) NOT NULL DEFAULT 0,
  `username` varchar(111) NOT NULL,
  `email` varchar(111) NOT NULL,
  `password` varchar(111) NOT NULL,
  `phone` int(22) DEFAULT NULL,
  `street` varchar(50) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `zipcode` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
drop table users;


--
-- Dumping data for table `users`
--


INSERT INTO `users` (`id`, `type`, `username`, `email`, `password`, `phone`, `street`, `city`, `zipcode`) VALUES
(1, 1, 'admin', 'admin@admin.com', 'admin', 5555555, 'he', 'h', 'h'),
(2, 0, 'admin2', 'admin2@admin.com', 'admin2', 21, 'he', 'h', 'h'),
(4, 0, '2', 'mm@f.com', '1314', 1414, 'Al Dawhah Al Janubiyah, Dhahran 34457', 'Dahran', '34466'),
(5, 0, 'anu', 'anu@gmail', 'anu', 1234, 'abc', 'def', '1234');


--
-- Indexes for dumped tables
--


--
-- Indexes for table `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`id`);


--
-- Indexes for table `cuisine`
--
ALTER TABLE `cuisine`
  ADD PRIMARY KEY (`id`);


--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cuisine_id` (`cuisine_id`);


--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);
  commit;


--
-- AUTO_INCREMENT for dumped tables
--


--
-- AUTO_INCREMENT for table `address`
--
ALTER TABLE `address`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;


--
-- AUTO_INCREMENT for table `cuisine`
--
ALTER TABLE `cuisine`
  MODIFY `id` bigint(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;


--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` bigint(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;


--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
  commit;




--
-- Metadata
--
USE `phpmyadmin`;


--
-- Metadata for table address
--


--
-- Metadata for table cuisine
--


--
-- Metadata for table product
--


--
-- Dumping data for table `pma__table_uiprefs`
--
CREATE TABLE `pma__table_uiprefs`(
username varchar(255),
db_name varchar(255),
table_name varchar(255),
last_update int ,
prefs varchar(255)
 );
drop table pma__table_uiprefs;



INSERT INTO `pma__table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`, `last_update`) VALUES
('root', 'foodbox', 'product', '{\"sorted_col\":\"`product`.`date_created`  ASC\"}', '2021-09-17 09:43:27');


--
-- Metadata for table users
--


--
-- Metadata for database foodbox
--
COMMIT;


/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

