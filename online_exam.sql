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
CREATE TABLE `admin` (
	`adminID` int(11) NOT NULL AUTO_INCREMENT ,
    `account` VARCHAR(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
    `password` VARCHAR(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
    PRIMARY KEY (`adminID`) ,
    UNIQUE (`account`)
)ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- -------------------------------------
-- Records for table administrator
-- -------------------------------------
INSERT INTO `admin` VALUE(1,'admin' ,'admin');


-- -------------------------------------
-- Table structure for teacher
-- -------------------------------------
DROP TABLE IF EXISTS `teacher`;
CREATE TABLE `teacher` (
	`teacherID` int(11) NOT NULL AUTO_INCREMENT ,
    `account` VARCHAR(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
    `password` VARCHAR(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
	`mail` VARCHAR(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
    `paperID` int(11) NOT NULL ,
    PRIMARY KEY(`teacherID`) ,
    UNIQUE (`account`) 
)ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- -------------------------------------
-- Records for table teacher
-- -------------------------------------
INSERT INTO `teacher` VALUE(1, 'teach01', 'teach01', '12345@qq.com', 001);
INSERT INTO `teacher` VALUE(2, 'teach02', 'teach02', '12345@qq.com', 002);



-- -------------------------------------
-- Table structure for student
-- -------------------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
	`studentID` int(11) NOT NULL AUTO_INCREMENT ,
    `account` VARCHAR(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
    `password` VARCHAR(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
	`grade`	int(8) NOT NULL DEFAULT 0 ,
    PRIMARY KEY(`studentID`) ,
    UNIQUE (`account`)
)ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- -------------------------------------
-- Records for table student
-- -------------------------------------
INSERT INTO `student` VALUE(1, 'stu01', 'stu01', 89);
INSERT INTO `student` VALUE(2, 'stu02', 'stu02', 89);




-- -------------------------------------
-- Table structure for exam_result
-- -------------------------------------
DROP TABLE IF EXISTS `exam_result`;
CREATE TABLE `exam_result` (
	`resultID` int(11) NOT NULL AUTO_INCREMENT ,
    `studentID` int(11) NOT NULL ,
    `paperID` int(11) NOT NULL ,
    `date` date NOT NULL ,
    `result` int(8) NOT NULL, 
    PRIMARY KEY (`resultID`) , 
    CONSTRAINT FOREIGN KEY(`studentID`) REFERENCES `student`(`studentID`) ON DELETE CASCADE ON UPDATE CASCADE
)ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- -------------------------------------
-- Records for table exam_result
-- -------------------------------------
INSERT INTO `exam_result` VALUE(1, 1, 01, now(), 89);
INSERT INTO `exam_result` VALUE(2, 2, 02, now(), 89);





-- -------------------------------------
-- Table structure for queston
-- -------------------------------------
DROP TABLE IF EXISTS `question`;
CREATE TABLE `question` (
	`ID` int(11) NOT NULL AUTO_INCREMENT ,
    `questionID` int(11) NOT NULL ,
    `answer` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
    `opyion_a` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
	`opyion_b` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
    `opyion_c` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
    `opyion_d` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
    `analysis` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
    `point` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
	`difficulty` varchar(50) NOT NULL ,
    `paperID` int(11) NOT NULL ,
    PRIMARY KEY (`ID`) ,
    CONSTRAINT FOREIGN KEY (`paperID`) REFERENCES `paper`(`paperID`) ON DELETE CASCADE ON UPDATE CASCADE
)ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;


-- -------------------------------------
-- Table structure for paper
-- -------------------------------------
DROP TABLE IF EXISTS `paper`;
CREATE TABLE `paper` (
	`paperID` int(11) NOT NULL ,
    `major` varchar(20) NOT NULL ,
    PRIMARY KEY (`paperID`)
)ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;
