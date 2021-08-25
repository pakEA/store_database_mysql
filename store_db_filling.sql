INSERT IGNORE INTO `catalogs` VALUES 
(1, 'clothes'),
(2, 'shoes'),
(3, 'accessories'),
(4, 'home');

INSERT IGNORE INTO `products` (`id`, `catalog_id`, `name`, `description`, `price`) VALUES
('', 1, 'ASOS DESIGN slim jeans in black', 'This is ASOS DESIGN – your go-to for all the latest trends, no matter who you are, where you’re from and what you’re up to.', 5000.00),
('', 1, 'Topman zip through jacket', 'Bringing you the latest in men’s fashion, Topman dresses you for every occasion in your social calendar with its range of clothing, shoes and accessories.', 6700.00),
('', 1, 'Nike Pro Training joggers in grey', 'When it comes to innovative sportswear, no brand does it better than Nike.', 4500.00),
('', 1, 'Tommy Hilfiger lounge t-shirt with chest panel logo in blue', 'Whether it’s an embroidered logo, a bold graphic print or its iconic red, white and blue colour-blocking, there’s no mistaking Tommy Hilfiger.', 3400.00),
('', 1, 'Polo Ralph Lauren icon logo slim fit fine cord shirt buttondown in cream', 'Known for its collegiate-cool American style, heritage brand Polo Ralph Lauren is a big player in the menswear game.', 7500.00),
('', 2, 'Timberland 6 inch Premium boots in tan', 'With a rich New England heritage, Timberlands signature work boots were quickly adopted by a new wave of youth culture. With a rugged feel and reputation for quality, Timberland keeps it laid-back and low-key across a range of boots, jersey pieces and outerwear.', 11300.00),
('', 2, 'Nike Air Presto trainers in black', 'When it comes to innovative sportswear, no brand does it better than Nike. Browse techy T-shirts, shorts and joggers from Nike Training, Nike Running and Nike Football, as well as sports accessories like arm bands and fitness aids. Nike SB nails casual days with hoodies, sweatshirts and chinos, too.', 8000.00),
('', 2, 'New Balance 237 trainers in green and yellow', 'Give your wardrobe a certified NB edge with its range of clothing and accessories, too – think T-shirts, hoodies, bags and hats, along with training tops and tights. Five-star aesthetic, we’re coming for you.', 6300.00),
('', 2, 'Ralph Lauren klarance mule slippers in black', 'Fast forward and the label is known for its redefined American style and signature preppy menswear. The now iconic Polo Ralph Lauren polo shirt was introduced in 1972 in 24 colours and instantly became a classic, offering both quality construction and wide variety.', 4300.00),
('', 2, 'Dr Martens 1460 8 eye pascal bex boots in black', 'Docs, Doc Martens, DMs – we’ve all got our own name for them, but one thing’s for sure: Dr. Martens kicks against the norm. The British footwear brand’s shoes, boots and sandals are the ultimate style staples for channelling your rebellious side. Plus, they’re durable and hella comfy too, thanks to mod-cons like soft leather uppers, Goodyear welt stitching and bouncy, air-cushioned soles.', 12000.00),
('', 3, 'The North Face Borealis backpack in brown', 'Born from two hikers’ love for adventure, The North Face has become one of the best-known brands for outdoor clothing and equipment. Hitting the trail? Scroll everything from hard-wearing trainers to super-strong bags and backpacks.', 6800.00),
('', 3, 'Armani Exchange all over logo leather belt in black', 'One of the most iconic names in fashion history, Giorgio Armani launched Armani Exchange in 1991 as a youthful, sportier sub-label of his eponymous brand. Inspired by the laid-back street style Armani observed in his favourite cities – Milan, New York, London and Tokyo – the collection reimagines everyday staples across a range of clothing and accessories. Master low-key dressing from head to toe with its bags, watches, jersey and denim.', 6900.00),
('', 3, 'Diesel core logo cap in pink', 'Changing the denim game since 1978, Diesel celebrates self-expression and individuality with its reinterpreted lifestyle pieces. Ripped-up, washed denim features across a range of jeans and jackets, and when it comes to the brand’s printed tops and T-shirts, it’s a case of the bolder, the better. Its accessories make just as much of a statement, too.', 5500.00),
('', 3, 'Ray-Ban unisex round sunglasses in black', 'First produced for the U.S. Air Force, Ray-Ban has been making iconic sunglasses since 1937. With a rich pop culture history, Ray-Ban has gained global recognition, a cult fan-base and A-list credentials. Opt for classic frames in Aviator, Wayfarer or Clubmaster styles.', 10900.00),
('', 3, 'Diesel leather card holder in black', 'Changing the denim game since 1978, Diesel celebrates self-expression and individuality with its reinterpreted lifestyle pieces. Ripped-up, washed denim features across a range of jeans and jackets, and when it comes to the brand’s printed tops and T-shirts, it’s a case of the bolder, the better. Its accessories make just as much of a statement, too.', 5000.00),
('', 4, 'TERRYCLOTH ARMCHAIR', 'Armchair with terrycloth upholstery and wooden legs.', 21000.00),
('', 4, 'CORDLESS LAMP WITH HANDLE', 'Cordless lamp with a metal frame and handle for easy transport. Led light bulb and battery that is charged by USB. The complete charging process is between 7-8 hours. Red indicates that the lamp is charging while green indicates that it has been fully charged.', 5100.00),
('', 4, 'ROUND MIRROR WITH METAL FRAME', 'Round wall mirror with a black metal frame.', 14500.00),
('', 4, 'DARK GLASS VASE', 'Dark glass vase. May be filled with water.', 3500.00),
('', 4, 'LONG CYLINDER CANDLE', 'Cylinder candle available in two sizes. Perfect for lanterns. WARNING: - Keep in view. - Keep away from children. - Place vertically on a suitable surface. - Keep away from drafts and flammable objects.', 1800.00);

INSERT IGNORE INTO `users` (`name`, `phone`, `email`) VALUES 
('Leonardo', 89870924570, 'wolff.myrtie@example.net'),
('Maxwell', 89561609424, 'srunolfsdottir@example.org'),
('Lehner', 89438859162, 'lehner.selina@example.org'),
('Friedrich', 89756803199, 'lincoln.witting@example.com'),
('Dewayne', 89878630550, 'caden.cassin@example.com'),
('Afton', 89969083857, 'hallie23@example.net'),
('Mario', 89240381983, 'hglover@example.com'),
('Johnpaul', 89607407653, 'friesen.jermaine@example.net'),
('Ellis', 89675394640, 'zena.macejkovic@example.org'),
('Alex', 89981388299, 'myrtie@example.net');

INSERT IGNORE INTO `profiles` (`gender`, `day_of_birth`, `country`, `city`, `street`, `house`, `apartment`, `created_at`, `updated_at`) VALUES
('F', '2005-05-26', 'Afghanistan', 'Emilianomouth', 'Kemmer Flats', 31, 34, '2011-03-10 17:17:14', '2017-04-15 11:34:43'),
('F', '1988-09-23', 'Afghanistan', 'South Sabinaland', 'Bailey Villages', 5, 19, '2001-11-22 17:23:26', '2004-07-10 23:50:17'),
('M', '1983-04-16', 'Faroe Islands', 'Lake Vivienne', 'Clyde Lock', 144, 33, '2016-05-14 11:39:28', '2017-06-02 19:04:37'),
('M', '1976-12-27', 'Djibouti', 'Rigobertochester', 'Labadie Overpass', 90, 12, '2006-01-30 17:54:04', '2013-11-12 08:52:49'),
('F', '1974-07-10', 'Turkey', 'Heaneyside', 'Tillman Burgs', 7, 26, '1993-01-20 16:33:10', '1999-10-05 13:30:55'),
('M', '2000-11-07', 'Canada', 'Yostfurt', 'Wunsch Roads', 551, 7, '2014-06-11 13:12:22', '2019-05-28 16:22:30'),
('F', '1996-01-30', 'Fiji', 'North Ephraimborough', 'Jefferey Street', 45, 7, '2017-11-29 16:37:43', '2018-06-16 15:04:31'),
('F', '1975-02-23', 'Moldova', 'Jaquelinhaven', 'Walker Trail', 78, 45, '1999-09-10 06:44:29', '2002-09-02 22:48:46'),
('M', '1985-09-11', 'Burundi', 'Borerville', 'Rowena Corners', 685, 12, '2009-08-03 14:39:01', '2010-06-02 20:23:57'),
('F', '1980-03-24', 'Antarctica', 'New Kylie', 'Laurel Summit', 28, 18, '2019-09-02 00:17:40', '2020-10-28 04:42:48');

INSERT IGNORE INTO `pictures` (`product_id`, `filename`, `size`) VALUES
(1, 'image_1.jpg', 32),
(2, 'image_2.png', 47),
(3, 'image_3.jpg', 13),
(4, 'image_4.png', 64),
(5, 'image_5.jpg', 3),
(6, 'image_6.png', 4),
(7, 'image_7.jpg', 16),
(8, 'image_8.png', 96),
(9, 'image_9.jpg', 65),
(10, 'image_10.png', 23),
(11, 'image_11.jpg', 32),
(12, 'image_12.png', 47),
(13, 'image_13.jpg', 13),
(14, 'image_14.png', 64),
(15, 'image_15.jpg', 3),
(16, 'image_16.png', 4),
(17, 'image_17.jpg', 16),
(18, 'image_18.png', 96),
(19, 'image_19.jpg', 65),
(20, 'image_20.png', 52);

UPDATE IGNORE products, pictures 
SET products.picture_id = pictures.id
WHERE pictures.product_id = products.id;

INSERT IGNORE INTO `storages` (`name`, `created_at`) VALUES
('Moscow_storage', '2000-06-01 00:00:00'),
('London_storage', '2001-03-31 00:00:00');

INSERT IGNORE INTO `storages_products` (`storage_id`, `product_id`, `total`) VALUES
(1, 1, 8), (1, 2, 7), (1, 3, 12), (1, 4, 15), (1, 5, 9),
(1, 6, 6), (1, 7, 8), (1, 8, 2), (1, 9, 6), (1, 10, 10),
(1, 11, 8), (2, 12, 1), (2, 13, 10), (2, 14, 6), (2, 15, 7),
(2, 16, 13), (2, 17, 9), (2, 18, 7), (2, 19, 12), (2, 20, 15);

INSERT IGNORE INTO `orders` (`user_id`, `created_at`) VALUES
(1, '2012-09-17 11:40:04'),
(2, '2002-02-13 10:09:47'),
(3, '2017-12-19 23:46:58'),
(4, '2007-01-01 09:33:28'),
(5, '2015-11-22 05:01:01'),
(6, '2018-11-18 00:42:39'),
(7, '2019-05-04 09:03:49'),
(8, '2004-09-13 18:37:44'),
(9, '2010-05-23 07:24:17'),
(10,'2020-10-01 16:56:20');

INSERT IGNORE INTO `orders_products` (`order_id`, `product_id`, `total`) VALUES
(1, 1, 1), (1, 2, 1), (1, 3, 1), (1, 4, 1),
(2, 5, 1), (2, 6, 1),
(3, 7, 1), (3, 8, 1),
(4, 9, 1), (4, 10, 1), (4, 11, 1), (4, 12, 1),
(5, 13, 1),
(6, 14, 1), (6, 15, 1),
(7, 16, 2),
(8, 2, 1),
(9, 8, 1), (9, 5, 1),
(10, 20, 5);

INSERT IGNORE INTO `discounts` (`catalog_id`, `discount`, `started_at`, `finished_at`) VALUES
(4, 0.3, '2021-12-24 00:00:00', '2022-01-10 00:00:00');