-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 09, 2022 at 05:18 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mo3talearn`
--

-- --------------------------------------------------------

--
-- Table structure for table `article`
--

CREATE TABLE `article` (
  `id` int(30) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` varchar(225) NOT NULL,
  `paragraph` text NOT NULL,
  `image_title` varchar(225) NOT NULL,
  `publish_date` datetime NOT NULL DEFAULT current_timestamp(),
  `creator_id` int(30) NOT NULL,
  `quiz_id` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `article`
--

INSERT INTO `article` (`id`, `title`, `description`, `paragraph`, `image_title`, `publish_date`, `creator_id`, `quiz_id`) VALUES
(3, 'Calories in Depth', 'Calorie Restriction and Fasting Diets: What Do We Know? ', 'You may have heard about calorie restriction and fasting diets and wondered why they\'re getting so much attention in the news. Aren\'t they just other terms for dieting to lose weight?\r\n\r\nNo, they\'re not. Calorie restriction means reducing average daily caloric intake below what is typical or habitual, without malnutrition or deprivation of essential nutrients. In a fasting diet, a person does not eat at all or severely limits intake during certain times of the day, week, or month. A practical effect of a fasting diet may be fewer calories because there is less time for regular eating.', 'Calories in Depth_img', '2022-02-06 02:40:11', 1, 1),
(4, 'Energy Balance and Obesity', 'his paper describes the interplay among energy intake, energy expenditure and body energy stores and illustrates how an understanding of energy balance can help develop strategies to reduce obesity. First, reducing obesity wi', 'Food restriction alone will not be effective in reducing obesity if human physiology is biased toward achieving energy balance at a high energy flux (i.e. at a high level of energy intake and expenditure). In previous environments a high energy flux was achieved with a high level of physical activity but in today\'s sedentary environment it is increasingly achieved through weight gain. Matching energy intake to a high level of energy expenditure will likely be more a more feasible strategy for most people to maintain a healthy weight than restricting food intake to meet a low level of energy expenditure. Second, from an energy balance point of view we are likely to be more successful in preventing excessive weight gain than in treating obesity. This is because the energy balance system shows much stronger opposition to weight loss than to weight gain. While large behavior changes are needed to produce and maintain reductions in body weight, small behavior changes may be sufficient to prevent excessive weight gain. In conclusion, the concept of energy balance combined with an understanding of how the body achieves balance may be a useful framework in helping develop strategies to reduce obesity rates.', 'Energy Balance and Obesity img', '2022-02-06 02:40:11', 1, 2),
(5, 'Essential Fiber Benefits', 'Dietary fiber: Essential for a healthy diet\r\nEat more fiber. You\'ve probably heard it before. But do you know why fiber is so good for your health?\r\nDietary fiber — found mainly in fruits, vegetables, whole grains and legumes', 'Benefits of a high-fiber diet\r\n\r\nA high-fiber diet:\r\n\r\n    Normalizes bowel movements. Dietary fiber increases the weight and size of your stool and softens it. A bulky stool is easier to pass, decreasing your chance of constipation. If you have loose, watery stools, fiber may help to solidify the stool because it absorbs water and adds bulk to stool.\r\n\r\n    Helps maintain bowel health. A high-fiber diet may lower your risk of developing hemorrhoids and small pouches in your colon (diverticular disease). Studies have also found that a high-fiber diet likely lowers the risk of colorectal cancer. Some fiber is fermented in the colon. Researchers are looking at how this may play a role in preventing diseases of the colon.\r\n\r\n    Lowers cholesterol levels. Soluble fiber found in beans, oats, flaxseed and oat bran may help lower total blood cholesterol levels by lowering low-density lipoprotein, or \"bad,\" cholesterol levels. Studies also have shown that high-fiber foods may have other heart-health benefits, such as reducing blood pressure and inflammation.\r\n\r\n    Helps control blood sugar levels. In people with diabetes, fiber — particularly soluble fiber — can slow the absorption of sugar and help improve blood sugar levels. A healthy diet that includes insoluble fiber may also reduce the risk of developing type 2 diabetes.\r\n\r\n    Aids in achieving healthy weight. High-fiber foods tend to be more filling than low-fiber foods, so you\'re likely to eat less and stay satisfied longer. And high-fiber foods tend to take longer to eat and to be less \"energy dense,\" which means they have fewer calories for the same volume of food.\r\n\r\n    Helps you live longer. Studies suggest that increasing your dietary fiber intake — especially cereal fiber — is associated with a reduced risk of dying from cardiovascular disease and all cancers.\r\n\r\n\r\n', 'Essentialarticle.png', '2022-02-06 02:40:11', 2, 3),
(6, 'Energy Drinks Components', 'Are Energy Drinks Good or Bad for You?\r\nEnergy drinks are intended to boost your energy, alertness and concentration.\r\nPeople of all ages consume them and they continue to grow in popularity.\r\nBut some health professionals ha', 'Energy drinks are beverages that contain ingredients marketed to increase energy and mental performance.\r\n\r\nRed Bull, 5-Hour Energy, Monster, AMP, Rockstar, NOS and Full Throttle are examples of popular energy drink products.\r\n\r\nNearly all energy drinks contain the ingredient caffeine to stimulate brain function and increase alertness and concentration.\r\n\r\nHowever, the amount of caffeine differs from product to product\r\n\r\nnergy drinks also typically contain several other ingredients. A few of the most common ingredients other than caffeine are listed below:\r\n\r\n    Sugar: Usually the main source of calories in energy drinks, although some do not contain sugar and are low-carb friendly.\r\n    B vitamins: Play an important role in converting the food you eat into energy your body can use.\r\n    Amino acid derivatives: Examples are taurine and L-carnitine. Both are naturally produced by the body and have roles in several biological processes.\r\n    Herbal extracts: Guarana is likely included to add more caffeine, while ginseng may have positive effects on brain function (1).', 'Energy Balance and Obesity img', '2022-02-06 02:40:11', 2, 4),
(7, 'Simpe sugar overview', 'Simple sugars are a type of carbohydrate. Carbohydrates are one of the three basic macronutrients — the other two being protein and fat.\r\n\r\nSimple sugars are found naturally in fruits and milk, or they can be produced commerc', 'Monosaccharides\r\n\r\nMonosaccharides are the simplest carbs, in that your body cannot break them down further.\r\n\r\nThis allows your body to absorb them quickly and easily, with the exception of fructose.\r\n\r\nThere are three types of monosaccharides (1Trusted Source):\r\n\r\n    Glucose: Fruits and vegetables are natural sources of glucose. It’s also commonly found in syrups, candy, honey, sports drinks, and desserts.\r\n    Fructose: The primary natural dietary source of fructose is fruit, which is why fructose is commonly referred to as fruit sugar.\r\n    Galactose: The main dietary source of galactose is lactose, the sugar in milk and milk products, such as cheese, butter, and yogurt.\r\n\r\n    Disaccharides\r\n\r\n    Disaccharides consist of two sugar molecules — or two monosaccharides — bonded together.\r\n\r\n    Your body must break the bonded monosaccharides apart before they can be absorbed.\r\n\r\n    There are three types of disaccharides (1Trusted Source):\r\n        Sucrose (glucose + fructose): Sucrose — most often called table sugar — is a natural sweetener derived from sugarcane or beet. It’s added to foods during processing and occurs naturally in fruits and vegetables.\r\n        Lactose (glucose + galactose): Also known as milk sugar, lactose is found in milk and milk products.\r\n        Maltose (glucose + glucose): Maltose is found in malt beverages, such as beer and malt liquors.\r\n\r\n        Too Many Added Sugars Can Be Detrimental to Your Health\r\n\r\n        To many people, the word “sugar” has a negative connotation.', 'sugerarticle.jpg', '2022-02-06 02:40:11', 2, 5),
(8, 'Non Essential Amino Acid Overview', 'Amino acids are molecules that combine to form proteins. Amino acids and proteins are the building blocks of life.\r\n\r\nWhen proteins are digested or broken down, amino acids are left. The human body uses amino acids to make pr', 'Amino acids are classified into three groups:\r\n1) Essential amino acids\r\n2) Non essential amino acids\r\n3) Conditional amino acids\r\n\r\n    ESSENTIAL AMINO ACIDS:\r\n    Essential amino acids cannot be made by the body from other compounds. As a result, they must come from food.\r\n    The 9 essential amino acids are: histidine, isoleucine, leucine, lysine, methionine, phenylalanine, threonine, tryptophan, and valine.\r\n\r\nNON ESSENTIAL AMINO ACIDS\r\nNonessential means that our bodies can produce the amino acid, even if we do not get it from the food we eat. Nonessential amino acids include: alanine, arginine, asparagine, aspartic acid, cysteine, glutamic acid, glutamine, glycine, proline, serine, and tyrosine.\r\n\r\nCONDITIONAL AMINO ACIDS\r\n\r\n    Conditional amino acids are usually not essential, except in times of illness and stress.\r\n    Conditional amino acids include: arginine, cysteine, glutamine, tyrosine, glycine, ornithine, proline, and serine.\r\n\r\nYou do not need to eat essential and nonessential amino acids at every meal, but getting a balance of them over the whole day is important. A diet based on a single plant item will not be adequate, but we no longer worry about pairing proteins (such as beans with rice) at a single meal. Instead we look at the adequacy of the diet overall throughout the day.', 'Energy Balance and Obesity img', '2022-02-06 02:40:11', 2, 6);

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `id` int(30) NOT NULL,
  `article_id` int(30) NOT NULL,
  `user_id` int(30) NOT NULL,
  `text` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`id`, `article_id`, `user_id`, `text`) VALUES
(1, 3, 3, 'nice topic'),
(2, 3, 4, 'can you explain more');

-- --------------------------------------------------------

--
-- Table structure for table `follows`
--

CREATE TABLE `follows` (
  `account_id_to_follow` int(11) NOT NULL,
  `following_account` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `follows`
--

INSERT INTO `follows` (`account_id_to_follow`, `following_account`) VALUES
(1, 2),
(1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

CREATE TABLE `likes` (
  `id` int(30) NOT NULL,
  `article_id` int(30) NOT NULL,
  `user_id` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `likes`
--

INSERT INTO `likes` (`id`, `article_id`, `user_id`) VALUES
(1, 3, 3),
(2, 3, 4);

-- --------------------------------------------------------

--
-- Table structure for table `question`
--

CREATE TABLE `question` (
  `id` int(30) NOT NULL,
  `quiz_id` int(30) NOT NULL,
  `question_text` varchar(225) NOT NULL,
  `answer1_text` varchar(225) NOT NULL,
  `answer2_text` varchar(225) NOT NULL,
  `answer3_text` varchar(225) NOT NULL,
  `right_answer_text` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `question`
--

INSERT INTO `question` (`id`, `quiz_id`, `question_text`, `answer1_text`, `answer2_text`, `answer3_text`, `right_answer_text`) VALUES
(1, 1, 'what is the color of carrot', 'red', 'green', 'blue', 'orange'),
(2, 2, 'what is the resutl of 1+1', '1', '3', '4', '2'),
(3, 1, 'what is the color of watermelon from inside', 'yellow', 'green', 'blue', 'red'),
(4, 1, 'what is the color of watermelon from outside', 'brown', 'cyan', 'blue', 'green'),
(5, 1, 'what is the color of water', 'yellow', 'green', 'blue', 'transparent'),
(6, 3, 'Which of the following is true?', 'Fiber is found in Animal Protein', ' Fiber increases bad Cholesterol levels', 'A high fiber diet is unhealthy', 'Fiber helps with healthy bowel movement'),
(7, 3, 'Which of the following is a source of Fiber?', 'Cheese', 'Milk', 'Fish', 'Whole Bread'),
(8, 3, 'Which of the following is a health benefit of a high fiber diet?', 'Improves Eye sight', 'Improves nail health', 'Fights harmfull pathogens', 'Helps Control Blood sugar levels'),
(9, 3, 'Which of the following is not true:', 'Fiber helps lower bad cholesterol', 'Fiber decreases risk of cancer', 'Fiber normalizes Bowel Movements', 'Fiber usually causes constipation'),
(10, 4, 'Which of the following is a common energy drink component?', 'Nicotin', 'Thyroxin', 'Naphthaline', 'L-Carnitine'),
(11, 4, 'Which of the following is true about L-carnitine and Taurine', ' they are not produced by the body', 'they are fatty acids', 'They are not used by the body', 'They are produced by the body'),
(12, 4, 'Which of the following represents the importance of B vitamins?', 'They help in photosynthesis,', 'They are similar to Guarana', 'They Function The same way as Caffeine', 'They play a role in energy production'),
(13, 4, 'Which of the following is True?:', 'Sugar is an Aminoacid', 'B vitamins are not used by the body', 'Guarana is commonly extracted from insects', 'Most energy drinks depend on Caffeine,'),
(14, 5, 'Which of the following Represents the importance of artificial sugar?', 'Does not affect or get used by the body', 'Vital For human function even when complex Carbohydrates are eaten', 'It is needed in high dosa', 'Has its benefits in certain conditions'),
(15, 5, 'Which of the following Represents Disaccharides ?', 'they are formed from 1 Monosaccharide', 'They are structural blocks of proteins, ', 'They are considered as fatty acids', ' They are formed from 2 MonoSaccharide molecules'),
(16, 5, 'Which of the following Illustrates the health risk of a high refined sugar diet:', 'Paralysis', 'Blindness', 'Muscle atrophy', 'Obesity'),
(17, 5, 'What are Carbohydrates?\r\n', 'MicroNutrient (Mineral/vitamin)', 'Immunity Receptors', 'AminoAcids', 'MacroNutrient'),
(18, 6, 'which of the following is a symptom of mild protein malabsorbtion\r\n\r\n', 'trouble hearing', 'loss of eye sight', 'painfull Cramps', 'difficulty to build muscle'),
(19, 6, 'which of the following is produced by the body from other substances:\r\n', 'phenolphythialin', 'starch', 'Essential amino acids', 'Non essential amino acids'),
(20, 6, 'if you know that Glutamin is a  Non essential amino acid. Which of the following describes it\'s properties ?\r\n', 'It is produced from food only', 'it is a toxic substance', 'Muscle atrophy', 'it is produced from food and by the body'),
(21, 6, 'which of the following is correct:\r\n\r\nA) , B) , C) , D) ', 'humans can function with fats and carbohydrates only', 'amino acids are the building block of body fat', 'proteins are not vital for human functions', 'humans need all nutrients including proteins to function properly');

-- --------------------------------------------------------

--
-- Table structure for table `quiz`
--

CREATE TABLE `quiz` (
  `id` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `quiz`
--

INSERT INTO `quiz` (`id`) VALUES
(1),
(2),
(3),
(4),
(5),
(6);

-- --------------------------------------------------------

--
-- Table structure for table `quiz_progress`
--

CREATE TABLE `quiz_progress` (
  `user_id` int(30) NOT NULL,
  `S0_id` int(30) NOT NULL,
  `quiz_id` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `quiz_progress`
--

INSERT INTO `quiz_progress` (`user_id`, `S0_id`, `quiz_id`) VALUES
(1, 4, 1),
(10, 3, 3),
(11, 3, 3);

-- --------------------------------------------------------

--
-- Table structure for table `s3_articles`
--

CREATE TABLE `s3_articles` (
  `s3_id` int(30) NOT NULL,
  `article_id` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `s3_articles`
--

INSERT INTO `s3_articles` (`s3_id`, `article_id`) VALUES
(1, 3),
(2, 4),
(3, 8),
(4, 5),
(14, 6),
(18, 7);

-- --------------------------------------------------------

--
-- Table structure for table `stage0`
--

CREATE TABLE `stage0` (
  `id` int(30) NOT NULL,
  `title` varchar(225) NOT NULL,
  `image_title` varchar(225) NOT NULL,
  `description` text NOT NULL,
  `statues` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `stage0`
--

INSERT INTO `stage0` (`id`, `title`, `image_title`, `description`, `statues`) VALUES
(1, 'Health', 'anatomy.png', 'this topic is about health topics ', 0),
(2, 'Anatomy', 'anatomy.jpg', 'this topic is about cardio topics', 0),
(3, 'Nutrition', 'nutrtion.webp', 'this topic is  about nutrition and diet', 1),
(4, 'Fitness', 'fitness.jpg', 'this topic is about fitness', 1),
(5, 'Endurance', 'endurance1.jpg', 'this topic is about fitness', 0),
(6, 'Soon', 'neon_locked.png', 'this topic is about fitness', 0);

-- --------------------------------------------------------

--
-- Table structure for table `stage1`
--

CREATE TABLE `stage1` (
  `id` int(30) NOT NULL,
  `title` varchar(225) NOT NULL,
  `image_title` varchar(225) NOT NULL,
  `description` text NOT NULL,
  `required_level` int(10) NOT NULL DEFAULT 1,
  `S0_id` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `stage1`
--

INSERT INTO `stage1` (`id`, `title`, `image_title`, `description`, `required_level`, `S0_id`) VALUES
(1, 'General Fitness', 'generalfitness.jpg', 'Living a life that is filled with good health, fitness, and mental well-being requires regularly exercising, consuming a well-balanced whole foods diet, and taking the time to calm and center the mind. A few statistics may give you a better idea of the general fitness level of the average American. The Centers for Disease Control and Prevention states that nearly one-third of all Americans are obese. ', 1, 4),
(2, 'Weight Loss', 'weight loss.webp', 'Maintaining a healthy weight should be a concern for everyone. A study conducted by the National Center for Health Statistics stated that nearly 32% of all adults in America are obese. ', 1, 4),
(3, 'Weight Training', 'weight training.jpg', 'If you are looking to tone your body and build muscle mass, there is no better method than weight training. The American Heritage Dictionary defines weight training as weightlifting done as a training program for improving or maintaining overall fitness, strength or endurance. This is indeed a very accurate, albeit simple, description of the act of weight training. ', 2, 4),
(4, 'Essential', 'Essential.webp', 'Living a life that is filled with good health, fitness, and mental well-being requires regularly exercising, consuming a well-balanced whole foods diet, and taking the time to calm and center the mind. A few statistics may give you a better idea of the general fitness level of the average American. The Centers for Disease Control and Prevention states that nearly one-third of all Americans are obese. ', 0, 3),
(5, 'Thyroid', 'Thyroid.jpg', 'Maintaining a healthy weight should be a concern for everyone. A study conducted by the National Center for Health Statistics stated that nearly 32% of all adults in America are obese. ', 5, 3),
(6, 'Energy', 'Energy.jpg', 'If you are looking to tone your body and build muscle mass, there is no better method than weight training. The American Heritage Dictionary defines weight training as weightlifting done as a training program for improving or maintaining overall fitness, strength or endurance. This is indeed a very accurate, albeit simple, description of the act of weight training. ', 4, 3),
(7, 'Complex', 'Complex.jpg', 'Living a life that is filled with good health, fitness, and mental well-being requires regularly exercising, consuming a well-balanced whole foods diet, and taking the time to calm and center the mind. A few statistics may give you a better idea of the general fitness level of the average American. The Centers for Disease Control and Prevention states that nearly one-third of all Americans are obese. ', 6, 3),
(8, 'Simple', 'Simple.jpg', 'Maintaining a healthy weight should be a concern for everyone. A study conducted by the National Center for Health Statistics stated that nearly 32% of all adults in America are obese. ', 1, 3),
(9, 'NonEssential', 'Nonessential.jpg', 'If you are looking to tone your body and build muscle mass, there is no better method than weight training. The American Heritage Dictionary defines weight training as weightlifting done as a training program for improving or maintaining overall fitness, strength or endurance. This is indeed a very accurate, albeit simple, description of the act of weight training. ', 3, 3);

-- --------------------------------------------------------

--
-- Table structure for table `stage2`
--

CREATE TABLE `stage2` (
  `id` int(30) NOT NULL,
  `title` varchar(225) NOT NULL,
  `image_title` varchar(225) NOT NULL,
  `description` text NOT NULL,
  `S1_id` int(30) NOT NULL,
  `available` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `stage2`
--

INSERT INTO `stage2` (`id`, `title`, `image_title`, `description`, `S1_id`, `available`) VALUES
(1, 'Obesity', 'red_neon.jpg', 'Obesity has reached epidemic proportions globally, with at least 2.8 million people dying each year as a result of being overweight or obese. Once associated with high-income countries, obesity is now also prevalent in low- and middle-income countries.', 2, 0),
(2, 'Diets', 'red_neon.jpg', 'Many diet plans make weight-loss claims. It can be difficult to know if they are true.Some are evidence-based, safe, and effective, but others are not. Many health professionals, dietitians, and nutritionists agree that the best results tend to come from combining a healthy, weight-reduction diet with physical activity, especially in the long term.', 2, 0),
(3, 'Calories', 'red_neon.jpg', 'Many factors determine how many calories a person should eat per day to lose weight.', 2, 0),
(4, 'Amino Acid', 'AminoAcid.jpg', 'Obesity has reached epidemic proportions globally, with at least 2.8 million people dying each year as a result of being overweight or obese. Once associated with high-income countries, obesity is now also prevalent in low- and middle-income countries.', 4, 0),
(5, 'Oil', 'oil.jpg', 'Many diet plans make weight-loss claims. It can be difficult to know if they are true.Some are evidence-based, safe, and effective, but others are not. Many health professionals, dietitians, and nutritionists agree that the best results tend to come from combining a healthy, weight-reduction diet with physical activity, especially in the long term.', 4, 0),
(6, 'Fiber', 'fiber.jpg', 'Many factors determine how many calories a person should eat per day to lose weight.', 4, 1),
(7, 'Nutrients', 'Nutrients.webp', 'Many diet plans make weight-loss claims. It can be difficult to know if they are true.Some are evidence-based, safe, and effective, but others are not. Many health professionals, dietitians, and nutritionists agree that the best results tend to come from combining a healthy, weight-reduction diet with physical activity, especially in the long term.', 4, 0),
(8, 'Thyroxin', 'red_neon.jpg', 'Many factors determine how many calories a person should eat per day to lose weight.', 5, 0),
(9, 'Calcitonin', 'red_neon.jpg', 'Obesity has reached epidemic proportions globally, with at least 2.8 million people dying each year as a result of being overweight or obese. Once associated with high-income countries, obesity is now also prevalent in low- and middle-income countries.', 5, 0),
(10, 'Functions', 'red_neon.jpg', 'Many diet plans make weight-loss claims. It can be difficult to know if they are true.Some are evidence-based, safe, and effective, but others are not. Many health professionals, dietitians, and nutritionists agree that the best results tend to come from combining a healthy, weight-reduction diet with physical activity, especially in the long term.', 5, 0),
(11, 'Gland', 'red_neon.jpg', 'Many factors determine how many calories a person should eat per day to lose weight.', 5, 0),
(12, 'Drinks', 'red_neon.jpg', 'Obesity has reached epidemic proportions globally, with at least 2.8 million people dying each year as a result of being overweight or obese. Once associated with high-income countries, obesity is now also prevalent in low- and middle-income countries.', 6, 0),
(13, 'Sugar', 'simpleSuger.jpg', 'Many diet plans make weight-loss claims. It can be difficult to know if they are true.Some are evidence-based, safe, and effective, but others are not. Many health professionals, dietitians, and nutritionists agree that the best results tend to come from combining a healthy, weight-reduction diet with physical activity, especially in the long term.', 8, 1),
(14, 'Soluble Fiber', 'red_neon.jpg', 'Many factors determine how many calories a person should eat per day to lose weight.', 7, 0),
(15, 'Inhibitors', 'red_neon.jpg', 'Many diet plans make weight-loss claims. It can be difficult to know if they are true.Some are evidence-based, safe, and effective, but others are not. Many health professionals, dietitians, and nutritionists agree that the best results tend to come from combining a healthy, weight-reduction diet with physical activity, especially in the long term.', 6, 0),
(16, 'Proteins', 'protien.jpg', 'Many factors determine how many calories a person should eat per day to lose weight.', 8, 0),
(18, 'Insoluble fibers', 'red_neon.jpg', 'Many diet plans make weight-loss claims. It can be difficult to know if they are true.Some are evidence-based, safe, and effective, but others are not. Many health professionals, dietitians, and nutritionists agree that the best results tend to come from combining a healthy, weight-reduction diet with physical activity, especially in the long term.', 7, 0),
(20, 'Stores', 'red_neon.jpg', 'Many diet plans make weight-loss claims. It can be difficult to know if they are true.Some are evidence-based, safe, and effective, but others are not. Many health professionals, dietitians, and nutritionists agree that the best results tend to come from combining a healthy, weight-reduction diet with physical activity, especially in the long term.', 6, 0),
(21, 'Compounds', 'red_neon.jpg', 'Many diet plans make weight-loss claims. It can be difficult to know if they are true.Some are evidence-based, safe, and effective, but others are not. Many health professionals, dietitians, and nutritionists agree that the best results tend to come from combining a healthy, weight-reduction diet with physical activity, especially in the long term.', 6, 0),
(23, 'Carbs', 'simplecarbs.jpg', 'Many diet plans make weight-loss claims. It can be difficult to know if they are true.Some are evidence-based, safe, and effective, but others are not. Many health professionals, dietitians, and nutritionists agree that the best results tend to come from combining a healthy, weight-reduction diet with physical activity, especially in the long term.', 8, 0),
(24, 'Minerals', 'Minerals.jpg', 'Many factors determine how many calories a person should eat per day to lose weight.', 8, 0),
(25, 'Amino Acid', 'AminoAcid.jpg', 'Obesity has reached epidemic proportions globally, with at least 2.8 million people dying each year as a result of being overweight or obese. Once associated with high-income countries, obesity is now also prevalent in low- and middle-income countries.', 9, 0),
(26, 'Fat', 'red_neon.jpg', 'Many diet plans make weight-loss claims. It can be difficult to know if they are true.Some are evidence-based, safe, and effective, but others are not. Many health professionals, dietitians, and nutritionists agree that the best results tend to come from combining a healthy, weight-reduction diet with physical activity, especially in the long term.', 9, 0),
(27, 'Fiber', 'fiber.jpg', 'Many factors determine how many calories a person should eat per day to lose weight.', 9, 0),
(28, 'Nutrients', 'Nutrients.webp', 'Many diet plans make weight-loss claims. It can be difficult to know if they are true.Some are evidence-based, safe, and effective, but others are not. Many health professionals, dietitians, and nutritionists agree that the best results tend to come from combining a healthy, weight-reduction diet with physical activity, especially in the long term.', 9, 0);

-- --------------------------------------------------------

--
-- Table structure for table `stage3`
--

CREATE TABLE `stage3` (
  `id` int(30) NOT NULL,
  `title` varchar(225) NOT NULL,
  `image_title` varchar(225) NOT NULL,
  `description` text NOT NULL,
  `S2_id` int(30) NOT NULL,
  `available` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `stage3`
--

INSERT INTO `stage3` (`id`, `title`, `image_title`, `description`, `S2_id`, `available`) VALUES
(1, 'Calorie restriction', 'Calorie restriction img', 'Calorie restriction (CR), i.e., the limitation of ingested calories without malnutrition, is known to enhance animal life span and prevent age-related diseases, including neurological deficits, brain atrophy, and cognitive decline. CR induces mitochondrial biogenesis in a NO mediated manner that culminates in increased mitophagy and the production of new, more efficient mitochondria that have reduced membrane potential, produce less ROS, consume increased levels of oxygen, and exhibit an improved ATP/ROS ratio—leading to decreased energy expenditure', 3, 0),
(2, 'Increased Energy Intake', 'Intake img', 'Calorie intake in average American children had remained steady until approximately 1990. Since then, studies have indicated an increase of approximately 10%–15% in daily caloric intake across most pediatric age groups (Bowman et al., 2004). The source of this increase in calories is likely due to increased intake of simple sugars.', 3, 0),
(3, 'Overview', 'Calorie restriction img', 'Calorie restriction (CR), i.e., the limitation of ingested calories without malnutrition, is known to enhance animal life span and prevent age-related diseases, including neurological deficits, brain atrophy, and cognitive decline. CR induces mitochondrial biogenesis in a NO mediated manner that culminates in increased mitophagy and the production of new, more efficient mitochondria that have reduced membrane potential, produce less ROS, consume increased levels of oxygen, and exhibit an improved ATP/ROS ratio—leading to decreased energy expenditure', 25, 0),
(4, 'Benefits', 'fiberbenfites.jpg', 'Calorie intake in average American children had remained steady until approximately 1990. Since then, studies have indicated an increase of approximately 10%–15% in daily caloric intake across most pediatric age groups (Bowman et al., 2004). The source of this increase in calories is likely due to increased intake of simple sugars.', 6, 1),
(5, 'Consumption', 'fiberconsumption.jpg', 'Calorie restriction (CR), i.e., the limitation of ingested calories without malnutrition, is known to enhance animal life span and prevent age-related diseases, including neurological deficits, brain atrophy, and cognitive decline. CR induces mitochondrial biogenesis in a NO mediated manner that culminates in increased mitophagy and the production of new, more efficient mitochondria that have reduced membrane potential, produce less ROS, consume increased levels of oxygen, and exhibit an improved ATP/ROS ratio—leading to decreased energy expenditure', 6, 0),
(6, 'Sources', 'Intake img', 'Calorie intake in average American children had remained steady until approximately 1990. Since then, studies have indicated an increase of approximately 10%–15% in daily caloric intake across most pediatric age groups (Bowman et al., 2004). The source of this increase in calories is likely due to increased intake of simple sugars.', 7, 0),
(7, 'Thyroxin Overview', 'Calorie restriction img', 'Calorie restriction (CR), i.e., the limitation of ingested calories without malnutrition, is known to enhance animal life span and prevent age-related diseases, including neurological deficits, brain atrophy, and cognitive decline. CR induces mitochondrial biogenesis in a NO mediated manner that culminates in increased mitophagy and the production of new, more efficient mitochondria that have reduced membrane potential, produce less ROS, consume increased levels of oxygen, and exhibit an improved ATP/ROS ratio—leading to decreased energy expenditure', 8, 0),
(8, 'Test', 'Intake img', 'Calorie intake in average American children had remained steady until approximately 1990. Since then, studies have indicated an increase of approximately 10%–15% in daily caloric intake across most pediatric age groups (Bowman et al., 2004). The source of this increase in calories is likely due to increased intake of simple sugars.', 9, 0),
(9, 'Problems', 'Calorie restriction img', 'Calorie restriction (CR), i.e., the limitation of ingested calories without malnutrition, is known to enhance animal life span and prevent age-related diseases, including neurological deficits, brain atrophy, and cognitive decline. CR induces mitochondrial biogenesis in a NO mediated manner that culminates in increased mitophagy and the production of new, more efficient mitochondria that have reduced membrane potential, produce less ROS, consume increased levels of oxygen, and exhibit an improved ATP/ROS ratio—leading to decreased energy expenditure', 10, 0),
(10, 'Sources', 'Intake img', 'Calorie intake in average American children had remained steady until approximately 1990. Since then, studies have indicated an increase of approximately 10%–15% in daily caloric intake across most pediatric age groups (Bowman et al., 2004). The source of this increase in calories is likely due to increased intake of simple sugars.', 11, 0),
(11, 'Overview', 'Calorie restriction img', 'Calorie restriction (CR), i.e., the limitation of ingested calories without malnutrition, is known to enhance animal life span and prevent age-related diseases, including neurological deficits, brain atrophy, and cognitive decline. CR induces mitochondrial biogenesis in a NO mediated manner that culminates in increased mitophagy and the production of new, more efficient mitochondria that have reduced membrane potential, produce less ROS, consume increased levels of oxygen, and exhibit an improved ATP/ROS ratio—leading to decreased energy expenditure', 12, 0),
(12, 'Stores Benefits ', 'Intake img', 'Calorie intake in average American children had remained steady until approximately 1990. Since then, studies have indicated an increase of approximately 10%–15% in daily caloric intake across most pediatric age groups (Bowman et al., 2004). The source of this increase in calories is likely due to increased intake of simple sugars.', 20, 0),
(13, 'Compounds Consumption', 'Calorie restriction img', 'Calorie restriction (CR), i.e., the limitation of ingested calories without malnutrition, is known to enhance animal life span and prevent age-related diseases, including neurological deficits, brain atrophy, and cognitive decline. CR induces mitochondrial biogenesis in a NO mediated manner that culminates in increased mitophagy and the production of new, more efficient mitochondria that have reduced membrane potential, produce less ROS, consume increased levels of oxygen, and exhibit an improved ATP/ROS ratio—leading to decreased energy expenditure', 21, 0),
(14, 'Components', 'Intake img', 'Calorie intake in average American children had remained steady until approximately 1990. Since then, studies have indicated an increase of approximately 10%–15% in daily caloric intake across most pediatric age groups (Bowman et al., 2004). The source of this increase in calories is likely due to increased intake of simple sugars.', 12, 0),
(18, 'Overview', 'sugeroverview.jpg', 'Calorie intake in average American children had remained steady until approximately 1990. Since then, studies have indicated an increase of approximately 10%–15% in daily caloric intake across most pediatric age groups (Bowman et al., 2004). The source of this increase in calories is likely due to increased intake of simple sugars.', 13, 1);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(30) NOT NULL,
  `nickname` varchar(125) NOT NULL,
  `email` varchar(125) NOT NULL,
  `password` varchar(125) NOT NULL,
  `avatar` varchar(255) NOT NULL,
  `contentcreator` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `nickname`, `email`, `password`, `avatar`, `contentcreator`) VALUES
(1, 'amr', 'amr9k8@gmail.com', '12345', 'amravatar', 1),
(2, 'mo3ta', 'mo3ta11@hotmail.com', '12345', 'mo3taavatar', 0),
(3, 'abdeeen', 'tifa123@gmail.com', '1234', 'abdeenavatar', 0),
(4, 'aly', 'aly@gmail.com', '12345', 'aliavatar', 0),
(5, 'joe', 'joe@gmail.com', '1234', 'joeavatar', 0),
(6, 'adel2', 'kandy2@gmail.com', '12345', 'adelavatar', 0),
(10, 'mosf', 'mosf12@gmail.com', '12345', '', 0),
(11, 'mo3tasm', 'mo3tasm12@gmail.com', '12345', '', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`id`),
  ADD KEY `creator_id` (`creator_id`),
  ADD KEY `quiz_id` (`quiz_id`);

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `article_id` (`article_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `follows`
--
ALTER TABLE `follows`
  ADD PRIMARY KEY (`following_account`),
  ADD KEY `account_id_to_follow` (`account_id_to_follow`,`following_account`);

--
-- Indexes for table `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `article_id` (`article_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `question`
--
ALTER TABLE `question`
  ADD PRIMARY KEY (`id`),
  ADD KEY `quiz_id` (`quiz_id`);

--
-- Indexes for table `quiz`
--
ALTER TABLE `quiz`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quiz_progress`
--
ALTER TABLE `quiz_progress`
  ADD PRIMARY KEY (`user_id`,`S0_id`,`quiz_id`),
  ADD KEY `S0_id` (`S0_id`),
  ADD KEY `quiz_id` (`quiz_id`);

--
-- Indexes for table `s3_articles`
--
ALTER TABLE `s3_articles`
  ADD PRIMARY KEY (`s3_id`,`article_id`),
  ADD KEY `s3_id` (`s3_id`,`article_id`),
  ADD KEY `article_id` (`article_id`);

--
-- Indexes for table `stage0`
--
ALTER TABLE `stage0`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stage1`
--
ALTER TABLE `stage1`
  ADD PRIMARY KEY (`id`),
  ADD KEY `S0_id` (`S0_id`);

--
-- Indexes for table `stage2`
--
ALTER TABLE `stage2`
  ADD PRIMARY KEY (`id`),
  ADD KEY `S1_id` (`S1_id`);

--
-- Indexes for table `stage3`
--
ALTER TABLE `stage3`
  ADD PRIMARY KEY (`id`),
  ADD KEY `S2_id` (`S2_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `article`
--
ALTER TABLE `article`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `likes`
--
ALTER TABLE `likes`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `question`
--
ALTER TABLE `question`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `quiz`
--
ALTER TABLE `quiz`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `stage0`
--
ALTER TABLE `stage0`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `stage1`
--
ALTER TABLE `stage1`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `stage2`
--
ALTER TABLE `stage2`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `stage3`
--
ALTER TABLE `stage3`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `article`
--
ALTER TABLE `article`
  ADD CONSTRAINT `article_ibfk_1` FOREIGN KEY (`creator_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `article_ibfk_2` FOREIGN KEY (`quiz_id`) REFERENCES `quiz` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `comment_ibfk_1` FOREIGN KEY (`article_id`) REFERENCES `article` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `comment_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `follows`
--
ALTER TABLE `follows`
  ADD CONSTRAINT `follows_ibfk_1` FOREIGN KEY (`account_id_to_follow`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `follows_ibfk_2` FOREIGN KEY (`following_account`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `likes`
--
ALTER TABLE `likes`
  ADD CONSTRAINT `likes_ibfk_1` FOREIGN KEY (`article_id`) REFERENCES `article` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `likes_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `question`
--
ALTER TABLE `question`
  ADD CONSTRAINT `question_ibfk_1` FOREIGN KEY (`quiz_id`) REFERENCES `quiz` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `quiz_progress`
--
ALTER TABLE `quiz_progress`
  ADD CONSTRAINT `quiz_progress_ibfk_1` FOREIGN KEY (`S0_id`) REFERENCES `stage0` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `quiz_progress_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `quiz_progress_ibfk_3` FOREIGN KEY (`quiz_id`) REFERENCES `quiz` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `s3_articles`
--
ALTER TABLE `s3_articles`
  ADD CONSTRAINT `s3_articles_ibfk_1` FOREIGN KEY (`s3_id`) REFERENCES `stage3` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `s3_articles_ibfk_2` FOREIGN KEY (`article_id`) REFERENCES `article` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `stage1`
--
ALTER TABLE `stage1`
  ADD CONSTRAINT `stage1_ibfk_1` FOREIGN KEY (`S0_id`) REFERENCES `stage0` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `stage2`
--
ALTER TABLE `stage2`
  ADD CONSTRAINT `stage2_ibfk_1` FOREIGN KEY (`S1_id`) REFERENCES `stage1` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `stage3`
--
ALTER TABLE `stage3`
  ADD CONSTRAINT `stage3_ibfk_1` FOREIGN KEY (`S2_id`) REFERENCES `stage2` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
