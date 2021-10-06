CREATE DATABASE  IF NOT EXISTS `project` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `project`;
-- MySQL dump 10.13  Distrib 5.6.17, for Win64 (x86_64)
--
-- Host: localhost    Database: project
-- ------------------------------------------------------
-- Server version	5.5.0-m2-community

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories` (
  `cat_id` int(8) NOT NULL AUTO_INCREMENT,
  `cat_name` varchar(255) NOT NULL,
  `cat_description` varchar(255) NOT NULL,
  PRIMARY KEY (`cat_id`),
  UNIQUE KEY `cat_name_UNIQUE` (`cat_name`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Science ','Science is a systematic enterprise that builds and organizes knowledge in the form of testable explanations and predictions about the universe.'),(2,'History','History is the study of the past as it is described in written documents.'),(3,'Fiction','In its most narrow usage fiction refers to novels, but it may also denote any \"literary narrative\" (see literary fiction), including novels, novellas, and short stories.'),(4,'Travel','Travel is the movement of people between distant geographical locations. Travel can be done by foot, bicycle, automobile, train, boat, bus, airplane, or other means, with or without luggage, and can be one way or round trip.'),(5,'Educational','Education is the process of facilitating learning, or the acquisition of knowledge, skills, values, beliefs, and habits.'),(6,'Technology','Technology is the collection of techniques, skills, methods, and processes used in the production of goods or services or in the accomplishment of objectives, such as scientific investigation.'),(7,'Design and analysis of Algorithms','Design and Analysis of Algorithm is very important for designing algorithm to solve different types of problems in the branch of computer science and information technology.'),(8,'Operating System','An operating system (OS) is system software that manages computer hardware and software resources and provides common services for computer programs.'),(9,'Computer Organization and Architecture','Computer Organization and Architecture is the study of internal working, structuring and implementation of a computer system. '),(10,'Computer Networks','A computer network, or data network, is a digital telecommunications network which allows nodes to share resources. In computer networks, computing devices exchange data with each other using connections (data links) between nodes.'),(11,'Digital Logic','Digital, or boolean, logic is the fundamental concept underpinning all modern computer systems.'),(12,'Theory of Computation','In theoretical computer science and mathematics, the theory of computation is the branch that deals with how efficiently problems can be solved on a model of computation, using an algorithm.'),(13,'Compiler Design','A compiler is computer software that transforms computer code written in one programming language (the source language) into another programming language (the target language).'),(14,'Discrete Mathematics','Discrete mathematics is the study of mathematical structures that are fundamentally discrete rather than continuous.'),(15,'Engineering Mathematics','Engineering mathematics is a branch of applied mathematics concerning mathematical methods and techniques that are typically used in engineering');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comments` (
  `username` varchar(45) NOT NULL,
  `email_id` varchar(45) NOT NULL,
  `date` date NOT NULL,
  `comment` varchar(2000) NOT NULL,
  `cmt_id` int(8) NOT NULL,
  KEY `cmt_id_idx` (`cmt_id`),
  CONSTRAINT `cmt_id` FOREIGN KEY (`cmt_id`) REFERENCES `topics` (`topic_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments`
--

LOCK TABLES `comments` WRITE;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
INSERT INTO `comments` VALUES ('Gagan_s','prabhakar.gagan21@gmail.com','2018-12-11','hi',14),('Gagan_s','prabhakar.gagan21@gmail.com','2018-12-12','@kd thanks for the explanation!',14),('Gagan_s','prabhakar.gagan21@gmail.com','2018-12-12','am i the only one writing answers here?',15);
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `login`
--

DROP TABLE IF EXISTS `login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `login` (
  `first_name` varchar(45) NOT NULL,
  `last_name` varchar(45) NOT NULL,
  `username` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `address` varchar(45) NOT NULL,
  `contact` varchar(45) NOT NULL,
  PRIMARY KEY (`username`),
  UNIQUE KEY `username_UNIQUE` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login`
--

LOCK TABLES `login` WRITE;
/*!40000 ALTER TABLE `login` DISABLE KEYS */;
INSERT INTO `login` VALUES ('ashish','mahaur','asm','asm','type 3','43276'),('ayush','tripathi','ays','ays','ekta nagar','567432'),('balwinder','singh','balli','balli','type 3','56743'),('dilpreet','singh','dilli','dilli','1234@amannagar','23451'),('gabbar','singh','gabbar_S','sambha','221 B','23433213'),('Gagandeep','Shubham','Gagan_s','gagandeep','Q.no.1773, Type-2 DMW Colony','789'),('shubham','p','gsp','pro@1','pta','14'),('keyur','dhawan','kd','kd','type 4','4532812'),('shailly','prabhakar','rashmi','1234','Q.no.1773, Type-2 DMW Colony','8427653585'),('vikas','meena','vks','vks','type 4 ','45321');
/*!40000 ALTER TABLE `login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `posts` (
  `post_id` int(8) NOT NULL AUTO_INCREMENT,
  `post_content` varchar(2000) NOT NULL,
  `post_date` date NOT NULL,
  `post_topic` int(8) NOT NULL,
  `post_by` varchar(30) NOT NULL,
  PRIMARY KEY (`post_id`),
  KEY `post_topic` (`post_topic`),
  KEY `post_by` (`post_by`),
  CONSTRAINT `posts_ibfk_1` FOREIGN KEY (`post_topic`) REFERENCES `topics` (`topic_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (1,'Physics is a Vastly complicated, wildly unknown,and incredibly slippery subject. Just when we think we already know something,it turns out to be ever so minusculey wrong. Take the theory of relativity.You would think that riding a motorcycle at 20 miles per hour on top of a train going 40 would give you a combined total of 60 mph,right? Nope.Wrong.Not by much,but still slightly wrong.It would just be just a little bit less,due  to all the wierd stuff that happens with relativity.Reference frames,time dilation,space contraction,etc.Not by much,but it makes a difference at relativistics speeds. There is so much we do not know.','2018-10-26',1,'Gagan_s'),(2,'Blockchain technology is  the next generation of the internet as we know it..It is a technology that has many applications and holds vast promise for every business,society and individual person reading this answer.In order to understand the Blockchain let us take an example, when i am sending you a word document,powerpoint,Email or text message , I am not actually sending you the original , I am sending you a copy.But when it comes to financial assets,things like Money,Bonds,Energy,Art,Voting  then Sending you a copy is a really bad idea .. if I am sending you $100 its pretty important that i do not still have the money.','2018-10-27',2,'Gagan_s'),(3,'may be too soon.','2018-10-27',4,'gabbar_S'),(7,'The year was 1683 AD, and for the past 300 years, the Christian Holy Roman Empire and the Muslim Ottoman Empire had been locked in deadly struggle.  But now, the end of that struggle was at hand.  Kara Mustafa Pasha, one of the Sultan?s most feared commanders, was to bring that end. In the summer of 1683, he led 140,000 men against the last bastion of Christendom, capital of the house of Hapsburg, the final bulwark between the Muslim hordes and Europe? Vienna.  On 14 July, the Ottomans laid siege to the city. Trenches were built, food supplies were cut off, and 130 cannon started pounding the city. With only 15,000 defenders, the jewel of the Holy Roman Empire seemed doomed. By September, large portions of the city walls were already in ruins, and the remaining defenders readied themselves to fight to the last man.','2018-11-10',8,'balli'),(8,'Steve Rogers tries to cover the dummy grenade by throwing himself on it . He did not thought of his own life , rather he was ready to sacrifice his own life for others .','2018-11-02',11,'vks'),(9,'In the Bay of Bengal, home to the Sentinelese tribe, lies an island whose people are known for killing anyone who ventures too close to the island?s shores, be that intentionally or by accident.  In 2006, two eager Indian fishermen were mud crabbing not far from the island.  As night fell they put down a makeshift anchor, which failed them while they were sleeping. The current pushed their boat too close to the shore, and the Sentinelese murdered them in an instant.  When Indian officials came to retrieve the bodies, a volley of arrows was shot at the helicopter forcing the pilots to retreat and eventually give up.','2018-10-26',12,'Gagan_s'),(10,'NO POSSESSION OF DICE  This is a true story from our English class.  No one ever found English even remotely interesting in our class. It used to be one of the most boring lessons one could imagine, especially the last two periods on a Friday afternoon.  It was during that very lesson that one of my friends, Will, invented a game that would revolutionize every classroom:  Will had a habit of borrowing small (8mm) dice from the math classrooms (they were used to teach probability) . ','2018-10-22',13,'balli'),(11,'No,DPDA is not powerful than an NPDA because NPDA is non-deterministic, it can do anything a normal DPDA can do but also what a DPDA can not do. Which implies DPDA is not powerful than an NPDA','2018-11-10',14,'Gagan_s'),(12,'No @gsp, DPDA is not powerful than an NPDA because there are certain languages which can not be accepted by a DPDA but an NPDA can accept them,whereas an NPDA can accept all the languages which a DPDA can accept , so NPDA is more powerful than DPDA not the other way round.','2018-11-10',14,'kd'),(13,'Both DFA and NFA are equivalent in power because both can accept the same languages, i.e. an NFA can accept what a DFA can accept and vice-versa. Also note that every DFA is also an NFA','2018-11-10',15,'Gagan_s'),(14,'Yes, a^p falls under the category of Recursively Enumerable languages, which can be accepted by a Turing Machine.so yes a^p can be accepted by a TM.','2018-11-10',16,'Gagan_s'),(15,'Halting Problem for a TM is undecidable because for a given string of a given language we can not say that the turing machine will definitely halt.It may or may not halt, therefore the halting problem for TM is undecidable.','2018-11-10',17,'Gagan_s'),(16,'The problem is Undecidable','2018-11-10',17,'gsp');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `register`
--

DROP TABLE IF EXISTS `register`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `register` (
  `email` varchar(30) NOT NULL,
  `pass` varchar(45) NOT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `register`
--

LOCK TABLES `register` WRITE;
/*!40000 ALTER TABLE `register` DISABLE KEYS */;
INSERT INTO `register` VALUES ('gagandeep@gmail.com','54321'),('gsp@gmail.com','1234');
/*!40000 ALTER TABLE `register` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `topics`
--

DROP TABLE IF EXISTS `topics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `topics` (
  `topic_id` int(8) NOT NULL AUTO_INCREMENT,
  `topic_subject` varchar(255) NOT NULL,
  `topic_date` date NOT NULL,
  `topic_cat` int(8) NOT NULL,
  `topic_by` varchar(30) NOT NULL,
  PRIMARY KEY (`topic_id`),
  UNIQUE KEY `topic_subject_UNIQUE` (`topic_subject`),
  KEY `topic_cat` (`topic_cat`),
  KEY `topic_by` (`topic_by`),
  CONSTRAINT `topics_ibfk_1` FOREIGN KEY (`topic_cat`) REFERENCES `categories` (`cat_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `topic_by` FOREIGN KEY (`topic_by`) REFERENCES `login` (`username`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `topics`
--

LOCK TABLES `topics` WRITE;
/*!40000 ALTER TABLE `topics` DISABLE KEYS */;
INSERT INTO `topics` VALUES (1,'What are some unsolved problems in Physics?','2018-10-25',1,'Gagan_s'),(2,'What is blockchain technology?','2018-10-27',6,'gsp'),(3,'We know universe is expanding, but into what?','2018-10-27',1,'gsp'),(4,'How long will it take till the real AI comes into existence? ','2018-10-27',6,'Gagan_s'),(8,'What was the most clichéd moment in history?','2018-11-10',2,'ays'),(11,'What is the greatest display of bravery in the Marvel Cinematic Universe?','2018-10-18',3,'ays'),(12,'What is one place on Earth you would never go to? Why?','2018-10-20',4,'dilli'),(13,'What is the most pointless rule in your school?','2018-10-20',5,'gsp'),(14,'Is DPDA  more powerful than NPDA ?','2018-11-10',12,'gsp'),(15,'Which is more powerful a DFA or an NFA?','2018-11-08',12,'gsp'),(16,'can a^p (where p is a prime number) be accepted by any machine?','2018-11-10',12,'rashmi'),(17,'Is Halting Problem for a TM is decidable or not?','2018-11-09',12,'kd');
/*!40000 ALTER TABLE `topics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'project'
--

--
-- Dumping routines for database 'project'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-12-13 11:42:53
