-- Adminer 4.8.4 MySQL 8.0.39-0ubuntu0.22.04.1 dump

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

DROP TABLE IF EXISTS `assigned`;
CREATE TABLE `assigned` (
  `client_id` int NOT NULL,
  `lesson_code` varchar(5) NOT NULL,
  `watched` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`client_id`,`lesson_code`),
  KEY `lesson_code` (`lesson_code`),
  CONSTRAINT `assigned_ibfk_1` FOREIGN KEY (`client_id`) REFERENCES `clients` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `assigned_ibfk_2` FOREIGN KEY (`lesson_code`) REFERENCES `lessons` (`code`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

INSERT INTO `assigned` (`client_id`, `lesson_code`, `watched`) VALUES
(1,	'CORNF',	0),
(1,	'JUMPB',	0),
(2,	'BODYP',	0),
(2,	'CORNB',	1),
(2,	'SETUP',	0);

DROP TABLE IF EXISTS `clients`;
CREATE TABLE `clients` (
  `id` int NOT NULL AUTO_INCREMENT,
  `forename` varchar(30) NOT NULL,
  `surname` varchar(30) NOT NULL,
  `email` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

INSERT INTO `clients` (`id`, `forename`, `surname`, `email`) VALUES
(1,	'Steve',	'Copley',	'steve.copley@waimea.school.nz'),
(2,	'Jim',	'Smith',	'jimmy@housebuilders.co.nz');

DROP TABLE IF EXISTS `lessons`;
CREATE TABLE `lessons` (
  `code` varchar(5) NOT NULL,
  `level` enum('Beginner','Intermediate','Advanced','Expert') NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `youtube_id` varchar(25) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  PRIMARY KEY (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

INSERT INTO `lessons` (`code`, `level`, `title`, `description`, `youtube_id`) VALUES
('BODYP',	'Beginner',	'Body Position',	'This lesson focuses on how to position your body whilst riding your bike.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Placerat duis ultricies lacus sed turpis tincidunt id aliquet risus. Etiam tempor orci eu lobortis elementum nibh tellus molestie nunc.',	'lienHJ82Pj4'),
('BUNNY',	'Intermediate',	'Bunny Hops',	'Mastering the bunny hop opens up a whole range of other skills and techniques.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',	'e-OkWl_1M4s'),
('CORNB',	'Beginner',	'Cornering Basics',	'This lesson guides you through the basics of cornering.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Placerat duis ultricies lacus sed turpis tincidunt id aliquet risus. Etiam tempor orci eu lobortis elementum nibh tellus molestie nunc. Et netus et malesuada fames ac turpis egestas.',	'Te9OKLIhWZo'),
('CORNF',	'Intermediate',	'Cornering Faster',	'Having mastered the basics of cornering, this lesson looks at how you can improve your speed through corners.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Placerat duis ultricies lacus sed turpis tincidunt id aliquet risus.',	'dv0B_0Dtjj4'),
('FASTR',	'Advanced',	'Riding Faster',	'Learning how to ride trails fast involves building your confidence and also reading the trail a little differently.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Placerat duis ultricies lacus sed turpis tincidunt id aliquet risus. Etiam tempor orci eu lobortis elementum nibh tellus molestie nunc.',	'7W1ptfTAB8U'),
('JUMPB',	'Advanced',	'Jumping Basics',	'Learning to jump can be intimidating. This lesson looks at th basic skills you will need to start to jump.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Placerat duis ultricies lacus sed turpis tincidunt id aliquet risus.',	'Wt40a8AzELA'),
('SETUP',	'Beginner',	'Bike Setup',	'This lesson focuses on on how to setup your bike for the trails.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Placerat duis ultricies lacus sed turpis tincidunt id aliquet risus.',	'kazhK55iXak');

-- 2024-09-02 23:22:38
