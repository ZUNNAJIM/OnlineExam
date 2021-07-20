/*
 Navicat Premium Data Transfer

 Source Server         : mamp
 Source Server Type    : MySQL
 Source Server Version : 5.7.32
 Source Host           : localhost:3306
 Source Schema         : online_exam

 Target Server Type    : MySQL
 Target Server Version : 5.7.32
 File Encoding         : 65001

 Date: 2021/07/15  14:16
*/

CREATE DATABASE IF NOT EXISTS `online_exam`;
USE `online_exam`;

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- -------------------------------------
-- Table structure for administrator
-- -------------------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin`
(
    `adminID`  int(11)                                                NOT NULL AUTO_INCREMENT,
    `account`  VARCHAR(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `password` VARCHAR(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    PRIMARY KEY (`adminID`),
    UNIQUE (`account`)
) ENGINE = InnoDB
  CHARACTER SET = latin1
  COLLATE = latin1_swedish_ci
  ROW_FORMAT = Dynamic;

-- -------------------------------------
-- Records for table administrator
-- -------------------------------------
INSERT INTO `admin` VALUE (1, 'admin', 'admin');
INSERT INTO `admin` VALUE (2, 'root', 'root');


-- -------------------------------------
-- Table structure for teacher
-- -------------------------------------
DROP TABLE IF EXISTS `teacher`;
CREATE TABLE `teacher`
(
    `teacherID` int(11)                                                NOT NULL AUTO_INCREMENT,
    `account`   VARCHAR(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `password`  VARCHAR(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `name` VARCHAR(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `gender` int(10) NOT NULL ,
    `mail`      VARCHAR(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `exam_name`   varchar(50) NOT NULL,
    PRIMARY KEY (`teacherID`),
    UNIQUE (`account`)
) ENGINE = InnoDB
  CHARACTER SET = latin1
  COLLATE = latin1_swedish_ci
  ROW_FORMAT = Dynamic;

-- -------------------------------------
-- Records for table teacher
-- -------------------------------------
INSERT INTO `teacher` VALUE (1, 'teach01', 'teach01', 'zunnajim', 1, '12345@qq.com', 'JAVA-developing');
INSERT INTO `teacher` VALUE (2, 'teach02', 'teach02', '罗盛丽', 2, '12345@qq.com', 'C++-developing');



-- -------------------------------------
-- Table structure for student
-- -------------------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student`
(
    `studentID` int(11)                                                NOT NULL AUTO_INCREMENT,
    `account`   VARCHAR(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `password`  VARCHAR(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `name` VARCHAR(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `gender` int(10) NOT NULL ,
    `major` varchar(20) NOT NULL ,
    `grade`     int(10)                                                 NOT NULL DEFAULT 0,
    PRIMARY KEY (`studentID`),
    UNIQUE (`account`)
) ENGINE = InnoDB
  CHARACTER SET = latin1
  COLLATE = latin1_swedish_ci
  ROW_FORMAT = Dynamic;

-- -------------------------------------
-- Records for table student
-- -------------------------------------
INSERT INTO `student` VALUE (1, 'stu01', 'stu01', '张三', 1, 'java', 89);
INSERT INTO `student` VALUE (2, 'stu02', 'stu02', '小丽', 2,'C++', 99);



-- -------------------------------------
-- Table structure for exam_result
-- -------------------------------------
DROP TABLE IF EXISTS `exam_result`;
CREATE TABLE `exam_result`
(
    `resultID`  int(11) NOT NULL AUTO_INCREMENT,
    `studentID` int(11) NOT NULL,
    `paperID`   int(11) NOT NULL,
    `date`      date    NOT NULL,
    `result`    int(8)  NOT NULL,
    PRIMARY KEY (`resultID`),
    CONSTRAINT FOREIGN KEY (`studentID`) REFERENCES `student` (`studentID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB
  CHARACTER SET = latin1
  COLLATE = latin1_swedish_ci
  ROW_FORMAT = Dynamic;

-- -------------------------------------
-- Records for table exam_result
-- -------------------------------------
INSERT INTO `exam_result` VALUE (1, 1, 01, now(), 89);
INSERT INTO `exam_result` VALUE (2, 2, 02, now(), 99);



-- -------------------------------------
-- Table structure for queston
-- -------------------------------------
DROP TABLE IF EXISTS `question`;
CREATE TABLE `question`
(
    `ID`         int(11)                                             NOT NULL AUTO_INCREMENT,
    `questionID` int(11)                                             NOT NULL,
    `question`   longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `answer`     longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `option_a`   longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `option_b`   longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `option_c`   longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `option_d`   longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `analysis`   longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `point`      longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `difficulty` varchar(50)                                         NOT NULL,
    `exam_name`    varchar(50) NOT NULL ,
    PRIMARY KEY (`ID`) ,
    CONSTRAINT FOREIGN KEY (`exam_name`) REFERENCES `paper` (`exam_name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB
  CHARACTER SET = latin1
  COLLATE = latin1_swedish_ci;

-- -------------------------------------
-- Records for table question
-- -------------------------------------
INSERT INTO `question` VALUE (1, 1, 'JAVA所定义的版本中不包括：', 'D', 'A、JAVA2 EE', 'B、 JAVA2 Card', 'C、 JAVA2 ME', 'D、JAVA2 HE', '无', 'java基础知识', 'easy', 'JAVA-developing');
INSERT INTO `question` VALUE (2, 1, 'C++基本数据类型不包括：', 'B', 'A、int', 'B、struct', 'C、double', 'D、char', 'C++基本数据类型', '略', 'easy', 'C++-developing');




-- -------------------------------------
-- Table structure for paper
-- -------------------------------------
DROP TABLE IF EXISTS `paper`;
CREATE TABLE `paper`
(
    `paperID` int(11)     NOT NULL,
    `major`   varchar(20) NOT NULL,
    `exam_name` varchar(50) NOT NULL ,
    `start_date` datetime NOT NULL ,
    `end_date` datetime NOT NULL ,
    `exam_time` int(11) NOT NULL DEFAULT 60,
    PRIMARY KEY (`paperID`) ,
    UNIQUE (`exam_name`)
) ENGINE = InnoDB
  CHARACTER SET = latin1
  COLLATE = latin1_swedish_ci;

-- -------------------------------------
-- Records structure for paper
-- -------------------------------------
INSERT INTO `paper` VALUE (1, 'JAVA', 'JAVA-developing', '2021-07-16', '2021-08-16', 120);
INSERT INTO `paper` VALUE (2, 'C++', 'C++-developing', '2021-07-16', '2021-08-16', 120);

    
SET FOREIGN_KEY_CHECKS = 1;
