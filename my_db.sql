CREATE DATABASE my_db;

USE my_db;

CREATE TABLE `users` (
  `uid` bigint(20) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `bio` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

CREATE TABLE `recipe` (
  `rid` bigint(20) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `rname` varchar(255) DEFAULT NULL,
  `rtype` varchar(10) DEFAULT NULL,
  `preptime` int DEFAULT NULL,
  `ingredients` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `image_url` text DEFAULT NULL,
  `video_url` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

CREATE TABLE `connect` (
  `cid` bigint(10) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `uid` bigint(10) NOT NULL,
  `rid` bigint(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

ALTER TABLE `users`
ADD FOREIGN KEY (uid) REFERENCES `connect`(uid);

ALTER TABLE `recipe`
ADD FOREIGN KEY (rid) REFERENCES `connect`(rid);

INSERT INTO `users`(name, email, password, bio) VALUES ("Admin", "pphanindra.19.cse@anits.edu.in", "9a1996efc97181f0aee18321aa3b3b12", "I am Admin of Share The Taste");

INSERT INTO `recipe`(rname, rtype, preptime, ingredients, description, image_url, video_url) VALUES ("Lamb Chops","Non-Veg",150,"1 pound lamb rib chops,2 tablespoons minced fresh rosemary,2 teaspoons salt,1 teaspoon freshly ground black pepper,1 garlic clove, minced,4 tablespoons extra virgin olive oil, divided.","Food is any substance consumed to provide nutritional support for an organism. Food is usually of plant, animal, or fungal origin, and contains essential nutrients, such as carbohydrates, fats, proteins, vitamins, or minerals. The substance is ingested by an organism and assimilated by the organism's cells to provide energy, maintain life, or stimulate growth. Different species of animals have different feeding behaviours that satisfy the needs of their unique metabolisms, often evolved to fill a specific ecological niche within specific geographical contexts.","lamb.jpg","sample_640x360.mp4");

INSERT INTO `connect`(uid, rid) VALUES(1,1);