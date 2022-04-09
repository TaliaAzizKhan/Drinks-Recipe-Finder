-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 08, 2022 at 11:51 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `recipe`
--

-- --------------------------------------------------------

--
-- Table structure for table `drinks`
--

CREATE TABLE `drinks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ingredients` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `instructions` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `drinks`
--

INSERT INTO `drinks` (`id`, `name`, `image`, `ingredients`, `instructions`, `created_at`, `updated_at`) VALUES
(1, 'Dark \'n\' Stormy Cocktail', 'darknstormy', '2 fluid ounces dark rum, 4 fluid ounces ginger beer, ½ cup ice', 'Combine rum and ginger beer in an old-fashioned glass. Add ice and stir.', NULL, NULL),
(2, 'Moscow Mule Cocktail', 'moscowmulecocktail', '1 ½ fluid ounces vodka, ½ fluid ounce lime juice, ice cubes, ½ cup ginger beer, 1 lime wedge for garnish', 'Pour vodka and lime juice into a mug; add ice cubes and ginger beer. Stir to combine. Drop a lime wedge into the mug for garnish.', NULL, NULL),
(3, 'Tart Apple-Ginger Shrub', 'applegingershrub', '1 Granny Smith shredded apple, ⅓ cup unfiltered apple cider vinegar, ¼ cup white sugar, 1 teaspoon grated fresh ginger', 'Place apple in a glass jar with a tight-fitting lid. Add apple cider vinegar, sugar, and grated ginger; stir well. Close tightly. Let sit in the refrigerator, 4 to 5 days. Strain syrupy liquid into a clean bottle, discarding apple scraps. Close tightly and chill', NULL, NULL),
(4, 'Peanut Butter Banana Smoothie', 'peanutbutterbanana', '2 bananas, broken into chunks\r\n2 cups milk\r\n½ cup peanut butter\r\n2 tablespoons honey, or to taste\r\n2 cups ice cubes', 'Place bananas, milk, peanut butter, honey, and ice cubes in a blender; blend until smooth, about 30 seconds.', NULL, NULL),
(5, 'Almond Berry Smoothie', 'almondberrysmoothie', '1 cup frozen blueberries\r\n1 banana\r\n½ cup almond milk\r\n1 tablespoon almond butter\r\nwater as needed', 'Combine blueberries, banana, almond milk, and almond butter in a blender; blend until smooth, adding water for a thinner smoothie.', NULL, NULL),
(6, 'Fruit and Yogurt Smoothie', 'fruitandyougartsmoothie', '1 banana\r\n½ cup yogurt\r\n1 ½ teaspoons white sugar\r\n¼ cup pineapple juice\r\n1 cup strawberries\r\n1 teaspoon orange juice\r\n1 teaspoon milk', 'Blend the banana, yogurt, sugar, pineapple juice, strawberries, orange juice, and milk in a blender until smooth.', NULL, NULL),
(7, 'Mango-Banana Smoothie', 'Mango-Banana Smoothie', '1 banana\r\n½ cup frozen mango pieces\r\n⅓ cup plain yogurt\r\n½ cup orange-mango juice blend', 'Combine the banana, mango, yogurt, and juice in a blender; blend until nearly smooth.', NULL, NULL),
(8, 'Strawberry Oatmeal Breakfast Smoothie', 'Strawberry Oatmeal Breakfast Smoothie', '1 cup soy milk\r\n½ cup rolled oats\r\n1 banana, broken into chunks\r\n14 frozen strawberries\r\n½ teaspoon vanilla extract\r\n1 ½ teaspoons white sugar', 'In a blender, combine soy milk, oats, banana and strawberries. Add vanilla and sugar if desired. Blend until smooth. Pour into glasses and serve.', NULL, NULL),
(9, 'Pink Champagne Mocktail', 'Pink Champagne Mocktail', '2 quarts ginger ale\r\n1 (46 fluid ounce) bottle cranberry juice\r\n1 (46 fluid ounce) can pineapple juice\r\n1 (12 fluid ounce) can frozen orange juice concentrate\r\nice cubes', 'Combine ginger ale, cranberry juice, pineapple juice, and orange juice concentrate in a large punch bowl. Stir in ice', NULL, NULL),
(10, 'Pineapple Cleanser Smoothie', 'pineapplecleansersmoothie', '1 cup coconut water, or to taste\r\n1 cup chopped fresh pineapple\r\n1 stalk celery\r\n½ cucumber, peeled\r\n⅓ bunch fresh parsley\r\n½ lemon, peeled\r\n1 (1 inch) piece fresh ginger root', 'Blend coconut water, pineapple, celery, cucumber, parsley, lemon, and ginger together in a blender until smooth.', NULL, NULL),
(11, 'Tornado Twist', 'Tornado Twist', '12 fluid ounces cranberry-raspberry juice\r\n1 (12 fluid ounce) can or bottle lemon-lime flavored carbonated beverage', 'In a pitcher, mix cranberry-raspberry juice with lemon-lime soda. Pour over ice and serve.', NULL, NULL),
(12, 'Italian Cream Soda', 'Italian Cream Soda', '8 fluid ounces carbonated water\r\n¾ fluid ounce passion fruit flavored syrup\r\n¾ fluid ounce watermelon flavored syrup\r\n1 fluid ounce half-and-half cream', 'Fill a tall glass half full with ice. Fill to 2/3 with carbonated water. Pour in watermelon and passion fruit flavored syrups, then float the half-and-half cream on top. Stir when ready to drink.', NULL, NULL),
(13, 'Mock Champagne', 'Mock Champagne', '2 (2 liter) bottles ginger ale, chilled\r\n1 (46 fluid ounce) can pineapple juice, chilled\r\n1 (64 fluid ounce) bottle white grape juice, chilled', 'To make Ice ring: Fill a ring-shaped cake pan to 1/2 with ginger ale. Freeze until partially frozen. At this stage you can place edible flowers, or pieces of fruit around the ring. Fill pan with ginger ale and freeze until solid. Place in punch bowl just before serving.', NULL, NULL),
(14, 'RaspBerry Fizzler', 'RaspBerrY FizzLer', '1 ½ cups raspberry juice\r\n3 scoops raspberry sherbet\r\n½ cup carbonated water', 'In a blender, combine raspberry juice, raspberry sherbet and carbonated water. Blend until smooth. Pour into glasses and serve.', NULL, NULL),
(15, 'Shirley Temple', 'Shirley Temple', '6 fluid ounces lemon-lime flavored carbonated beverage\r\n1 dash grenadine syrup\r\n1 maraschino cherry', 'Into a tall glass, pour soda and grenadine over ice. Add cherry and straw.', NULL, NULL),
(16, 'Lavender Lemonade with Hibiscus', 'Lavender Lemonade with Hibiscus', '3 cups water\r\n1 ½ cups lemon juice\r\n1 ¼ cups white sugar\r\n2 tablespoons dried lavender flowers\r\n1 ½ teaspoons dried hibiscus petals', 'Mix 3 cups water and lemon juice in a large pitcher. Refrigerate until chilled. Bring remaining 3 cups water, sugar, lavender, and hibiscus petals to a boil in a saucepan. Reduce heat to medium-low and simmer for 10 minutes. Remove from heat and allow to cool. Strain lavender and hibiscus from liquid and pour into pitcher with lemon water. Refrigerate until cold.', NULL, NULL),
(17, 'Rhubarb Lemonade', 'Rhubarb Lemonade', '8 cups chopped rhubarb\r\n3 cups white sugar\r\n3 tablespoons grated lemon peel\r\n1 ½ cups lemon juice', 'Combine the rhubarb, sugar, and grated lemon peel into a large saucepan and bring to a boil. Reduce heat to medium-low and simmer until the sugar has dissolved and the rhubarb releases its juice and starts to break up, about 10 minutes. Remove from heat and stir in the lemon juice. Pour the rhubarb mixture through a fine sieve, pressing out as much liquid as possible.', NULL, NULL),
(18, 'Basil Lemonade', 'Basil Lemonade', '12 cups cold water\r\n1 (12 ounce) can frozen lemonade concentrate, thawed\r\n⅓ cup white sugar\r\n¼ cup fresh lime juice\r\n½ cup firmly packed torn basil leaves', 'Stir water, lemonade, sugar, and lime juice together in a pitcher. Add 1/2 cup basil leaves, stir to combine, cover the pitcher, and refrigerate until flavors combine, 8 hours to overnight. Remove basil leaves and discard.', NULL, NULL),
(19, 'Watermelon Pink Lemonade', 'Watermelon Pink Lemonade', '1 cup water\r\n2 tablespoons lemon juice\r\n4 teaspoons white sugar\r\n1 small slice (0.5 oz) watermelon', 'Combine water, lemon juice, sugar, and watermelon in a blender. Blend until smooth.', NULL, NULL),
(20, 'Ginger Lemonade', 'Ginger Lemonade', '3 cups white sugar\r\n4 quarts water\r\n14 slices fresh ginger root\r\n4 cups fresh lemon juice\r\n2 lemons, sliced', 'In an 8-quart saucepan combine sugar, water and ginger root. Heat to boiling, stirring occasionally. Remove from heat. Stir in lemon juice. Cool 15 minutes. Remove ginger. Refrigerate lemonade at least 1 hour, or until chilled. Serve over ice, and garnish with lemon slices.', NULL, NULL),
(21, 'Refreshing Cucumber Lemonade', 'Refreshing Cucumber Lemonade', '1 cup water\r\n½ cup white sugar\r\n1 cucumber, sliced\r\n6 lemons, juiced', 'Make a simple syrup by stirring the water and sugar together in a saucepan over medium heat; heat until just about to boil and the sugar has dissolved. Place in refrigerator 30 minutes, or until cool. Place the cucumber slices in a blender or food processor; blend until mashed into a pulp. Pour the cucumber pulp into a fine mesh strainer place over a bowl to catch the liquid; allow to sit until you have about 2/3 cup of liquid from the cucumber, about 15 minutes. Stir the simple syrup, cucumber liquid, and lemon juice together in a pitcher. Serve cold.', NULL, NULL),
(22, 'Watermelon Cooler Slushy', 'Watermelon Cooler Slushy', '4 cups cubed seedless watermelon\r\n10 ice cubes\r\n⅓ cup fresh lime juice\r\n¼ cup white sugar\r\n⅛ teaspoon salt', 'Place watermelon and ice into a blender. Pour in lime juice, sugar, and salt. Blend until smooth.', NULL, NULL),
(23, 'Cucumber Cooler', 'Cucumber Cooler', '2 cucumbers - peeled, seeded, and chopped\r\n⅜ cup fresh lime juice\r\n⅓ cup white sugar\r\n⅔ cup water', 'Combine the cucumber, lime juice, sugar, and water in a food processor; puree.', NULL, NULL),
(24, 'Orange Fizz', 'Orange Fizz', 'ice cubes\r\n1 cup orange juice\r\n⅓ cup tonic water\r\n1 teaspoon lemon juice', 'Fill a glass with ice cubes. Pour in the orange juice, tonic water and lemon juice. Stir and serve.', NULL, NULL),
(25, 'Watermelon Agua Fresca', 'Watermelon Agua Fresca', '4 cups cubed seeded watermelon\r\n½ cup water\r\n½ cup white sugar, or to taste\r\n4 slices lime\r\n24 fresh mint leaves\r\nice', 'Puree the watermelon and water in a blender until smooth. Add sugar to taste. Cut the lime slices in half. Place a half lime slice into each of 8 glasses along with 3 mint leaves. Crush with a cocktail muddler, then fill each glass with ice. Pour in the watermelon agua fresca, and stir before serving.', NULL, NULL),
(26, 'Mexican Coffee Cocktail', 'Mexican Coffee Cocktail', '1 fluid ounce coffee-flavored liqueur (such as Kahlua®)\r\n½ fluid ounce tequila\r\n5 fluid ounces hot coffee\r\n2 tablespoons whipped cream', 'Mix coffee liqueur and tequila in coffee cup; add coffee, and top with whipped cream.', NULL, NULL),
(27, 'Iced Caramel Macchiato', 'Iced Caramel Macchiato', '1 tablespoon vanilla-flavored syrup\r\n⅓ cup ice cubes\r\n¾ cup milk\r\n4 ounces Gevalia® Cold Brew Concentrate - House Blend\r\n1 tablespoon caramel sauce', 'Pour vanilla syrup into the bottom of a glass. Add ice cubes and pour in milk. Slowly pour in cold brew concentrate. Drizzle with caramel sauce.', NULL, NULL),
(28, 'Cafe Latte', 'Cafe Latte', '2 cups milk\r\n1 ⅓ cups hot freshly brewed dark roast espresso coffee', 'Heat milk in a saucepan set over medium-low heat. Whisk briskly with a wire whisk to create foam. Brew espresso and pour into 4 cups. Pour in milk, holding back the foam with a spoon. Spoon foam over the top.', NULL, NULL),
(29, 'Irish Coffee', 'Irish Coffee', '1 (1.5 fluid ounce) jigger Irish cream liqueur\r\n1 (1.5 fluid ounce) jigger Irish whiskey\r\n1 cup hot brewed coffee\r\n1 tablespoon whipped cream\r\n1 dash ground nutmeg', 'In a coffee mug, combine Irish cream and Irish whiskey. Fill mug with coffee. Top with a dab of whipped cream and a dash of nutmeg.', NULL, NULL),
(30, 'Flavored Latte', 'Flavored Latte', '1 ¼ cups 2% milk\r\n2 tablespoons any flavor of flavored syrup\r\n1 (1.5 fluid ounce) jigger brewed espresso', 'Pour milk into a steaming pitcher and heat to 145 degrees F to 165 degrees F (65 to 70 degrees C) using the steaming wand. Measure the flavored syrup into a large coffee mug. Brew espresso, then add to mug. Pour the steamed milk into the mug, using a spoon to hold back the foam. Spoon foam over the top.', NULL, NULL),
(31, 'Easy Iced Coffee', 'Easy Iced Coffee', '2 teaspoons instant coffee granules\r\n1 teaspoon sugar\r\n3 tablespoons warm water\r\n1 cup ice, or as needed\r\n6 fluid ounces cold milk', 'In sealable jar, combine instant coffee, sugar, and warm water. Cover the jar and shake until mixture is foamy. Pour into a glass full of ice. Fill the glass with milk. Adjust to taste if necessary.', NULL, NULL),
(32, 'Sous Vide \"Cold Brew\" Coffee', 'Sous Vide Cold Brew Coffee', '1 cup coarsely ground coffee\r\n4 (16-ounce) Mason jars\r\n8 cups water', 'Place 1/4 cup coffee grounds into each jar, then top with water. Screw on the lids until just barely tightened; do not overtighten. Fill a large pot with enough water to cover the jars completely and place a sous vide immersion cooker into the water. Set temperature to 150 degrees F (65 degrees C) according to manufacturer\'s directions. Submerge mason jars into the water bath and set timer for 2 hours. Remove jars to a cooling rack and let cool until easily handled. Strain the mixture through a coffee filter to stop the steeping process. Pour over ice and serve, or return to rinsed-out jars and store in the refrigerator for up to 1 week.', NULL, NULL),
(33, 'Iced Mochas', 'Iced Mochas', '1 ½ cups cold coffee\r\n2 cups milk\r\n¼ cup chocolate syrup\r\n¼ cup white sugar', 'Pour coffee into ice cube tray. Freeze until solid, or overnight. In a blender, combine coffee ice cubes, milk, chocolate syrup and sugar. Blend until smooth. Pour into glasses and serve.', NULL, NULL),
(34, 'Cold-Brewed Coffee', 'Cold-Brewed Coffee', '½ pound coarsely ground coffee beans\r\n4 ½ cups cold water\r\ncheesecloth\r\ncoffee filters', 'Put coffee grounds in a large container. Slowly pour water over the grounds.Cover bowl with plastic wrap and steep at room temperature for 18 to 24 hours.Line a strainer with several layers of cheesecloth and place atop a pitcher; strain coffee through the cheesecloth into the pitcher. Discard the grounds. To get a clearer brew, strain coffee again through coffee filters. Store in refrigerator.', NULL, NULL),
(35, 'Irish Slammer', 'Irish Slammer', '¾ fluid ounce Irish whiskey\r\n¾ fluid ounce Irish cream liqueur\r\n6 fluid ounces Irish stout beer', 'Fill a shot glass with half Irish whiskey and half Irish cream. Pour Irish stout beer into a pint glass. Drop in the shot glass and drink entire contents at once.', NULL, NULL),
(36, 'Beer Margaritas', 'Beer Margaritas', '1 (12 fluid ounce) can frozen limeade concentrate\r\n12 fluid ounces tequila\r\n12 fluid ounces water\r\n12 fluid ounces beer\r\nice\r\n1 lime, cut into wedges', 'Pour limeade, tequila, water, and beer into a large pitcher. Stir until well-blended, and limeade has melted. Add plenty of ice, and garnish with lime wedges. Adjust with additional water, if needed.', NULL, NULL),
(37, 'Granny Smackers', 'Granny Smackers', '1 (12 fluid ounce) can or bottle beer\r\n1 (6 ounce) can frozen lemonade concentrate\r\n3 fluid ounces vodka', 'Stir together the beer, lemonade concentrate and vodka. Pour into small glasses, and serve cold.', NULL, NULL),
(38, 'Micheladas with Tajin', 'Micheladas with Tajin', '1 lime, juiced\r\n1 teaspoon chile-lime seasoning (such as Tajin®), or more to taste\r\nice\r\n½ cup tomato juice cocktail (such as Clamato®), chilled\r\n1 tablespoon chamoy (Mexican chili fruit condiment)\r\n1 teaspoon hot pepper sauce (such as Tapatio®)\r\n1 teaspoon Worcestershire sauce\r\n1 teaspoon soy sauce\r\n¼ teaspoon cayenne pepper\r\n1 (12 fluid ounce) can or bottle dark beer (such as Dos Equis XX Cerveza)', 'Rub lime juice around the rim of a glass and dip in chile-lime seasoning. Fill with ice. Combine tomato juice cocktail, chamoy, hot sauce, Worcestershire, soy sauce, and cayenne. Mix well and pour over ice. Fill the glass with beer.', NULL, NULL),
(39, 'Beergarita', 'Beergarita', '6 (12 fluid ounce) cans or bottles beer\r\n1 (12 fluid ounce) can frozen limeade concentrate (such as Minute Maid®)\r\n12 fluid ounces tequila\r\n6 cups ice cubes', 'Pour beers into a large pitcher. Add limeade; stir to combine. Use limeade can to measure out tequila; pour into pitcher and stir to combine. Serve over ice.', NULL, NULL),
(40, 'Stout and Ale', 'Stout and Ale', '1 (12 fluid ounce) bottle lager beer (such as Harp®)\r\n1 (12 fluid ounce) can or bottle Irish stout beer (such as Guinness®)', 'Gently pour half the lager beer into a tall beer glass. Place a large tablespoon, dome side up, an inch or so above the lager beer, with the tip of the spoon pointed slightly downhill. Slowly pour half the stout beer over the tablespoon, so the stout gently pours down the side of the glass in a thick trickle. Allow to stand a few seconds so 2 distinct layers of beer form.', NULL, NULL),
(41, 'Beermosa', 'Beermosa', '1 (12 fluid ounce) can or bottle beer\r\n4 fluid ounces orange juice', 'Pour beer into a glass and top with orange juice.', NULL, NULL),
(42, 'German Cherry Beer', 'German Cherry Beer', '½ cup cherry juice\r\n1 (12 fluid ounce) can or bottle wheat beer (Hefeweizen)', 'Pour cherry juice into a 16 ounce glass; pour in beer. Drink!', NULL, NULL),
(43, 'Shandy', 'Shandy', '1 (12 ounce) bottle lager-style beer\r\n½ cup prepared lemonade', 'Pour the beer into a pint glass. Slowly add the lemonade; stir gently.', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ingredients`
--

CREATE TABLE `ingredients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `drink_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2019_08_19_000000_create_failed_jobs_table', 1),
(3, '2022_04_07_154532_create_drinks_table', 1),
(4, '2022_04_07_175616_create_ingredients_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `drinks`
--
ALTER TABLE `drinks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ingredients`
--
ALTER TABLE `ingredients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `drinks`
--
ALTER TABLE `drinks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ingredients`
--
ALTER TABLE `ingredients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
