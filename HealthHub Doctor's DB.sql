CREATE DATABASE HealthHub;
USE HealthHub;

CREATE TABLE `doctors` (
  `Doctor_ID` varchar(10) NOT NULL,
  `First_Name` varchar(20) NOT NULL,
  `Last_Name` varchar(20) NOT NULL,
  `Specialization` varchar(20) NOT NULL,
  `Experience` int NOT NULL,
  `Gender` varchar(6) NOT NULL,
  `Education` varchar(40) NOT NULL,
  `Image` varchar(20) NOT NULL,
  PRIMARY KEY (`Doctor_ID`)
);

SHOW TABLES;
SELECT * FROM doctors;

CREATE TABLE `aptmnt` (
  `Aptmnt_ID` int NOT NULL AUTO_INCREMENT,
  `Patient_ID` char(10) NOT NULL,
  `Doctor_ID` varchar(10) NOT NULL,
  `Date` Date NOT NULL,
  `Slot` char(11) NOT NULL,
  PRIMARY KEY (`Aptmnt_ID`),
  KEY `Doctor_ID` (`Doctor_ID`),
  CONSTRAINT `aptmnt_ibfk_2` FOREIGN KEY (`Doctor_ID`) REFERENCES `doctors` (`Doctor_ID`)
);

CREATE TABLE `slots` (
  `Date` char(10) NOT NULL,
  `Doctor_ID` varchar(10) NOT NULL,
  `Time` char(24) NOT NULL DEFAULT '000000000000000000000000',
  PRIMARY KEY (`Date`,`Doctor_ID`),
  KEY `Doctor_ID` (`Doctor_ID`),
  CONSTRAINT `slots_ibfk_1` FOREIGN KEY (`Doctor_ID`) REFERENCES `doctors` (`Doctor_ID`)
);

CREATE TABLE `users` (
  `Phone_Number` char(10) NOT NULL,
  `Password` char(56) NOT NULL,
  `First_Name` varchar(20) NOT NULL,
  `Last_Name` varchar(20) NOT NULL,
  `Date_Of_Birth` Date NOT NULL,
  `Gender` varchar(6) NOT NULL,
  PRIMARY KEY (`Phone_Number`)
);

CREATE TABLE `temp_users` (
  `First_Name` varchar(20) NOT NULL,
  `Last_Name` varchar(20) NOT NULL,
  `Date_Of_Birth` Date NOT NULL,
  `Gender` varchar(6) NOT NULL,
  `Phone_Number` char(10) NOT NULL,
  `Slot` char(11) NOT NULL,
  `Date` Date NOT NULL,
  `Doctor_ID` varchar(10) NOT NULL,
  PRIMARY KEY (`Slot`,`Date`,`Phone_Number`,`Doctor_ID`)
);

CREATE TABLE `admin` (
  `Admin_ID` varchar(10) NOT NULL,
  `Password` char(56) NOT NULL,
  `First_Name` varchar(20) NOT NULL,
  `Last_Name` varchar(20) NOT NULL,
  PRIMARY KEY (`Admin_ID`)
);

INSERT INTO `healthhub`.`doctors` (`Doctor_ID`,`First_Name`,`Last_Name`,`Specialization`,`Experience`,`Gender`,`Education`,`Image`) VALUES ('Doc001','Jayjit','Ghosh','Cardiology',20,'Male','M.D.,D.M','DoctorMale');
INSERT INTO `healthhub`.`doctors` (`Doctor_ID`,`First_Name`,`Last_Name`,`Specialization`,`Experience`,`Gender`,`Education`,`Image`) VALUES ('Doc002','Subhash','Chandra','Cardiology',35,'Male','M.D.,D.M','DoctorMale');
INSERT INTO `healthhub`.`doctors` (`Doctor_ID`,`First_Name`,`Last_Name`,`Specialization`,`Experience`,`Gender`,`Education`,`Image`) VALUES ('Doc003','Anantha','Subramaniam','General Physician',30,'Male','MBBS, DNB','DoctorMale');
INSERT INTO `healthhub`.`doctors` (`Doctor_ID`,`First_Name`,`Last_Name`,`Specialization`,`Experience`,`Gender`,`Education`,`Image`) VALUES ('Doc004','Rohith','Batra','Dermatology',20,'Male','MBBS, MD','DoctorMale');
INSERT INTO `healthhub`.`doctors` (`Doctor_ID`,`First_Name`,`Last_Name`,`Specialization`,`Experience`,`Gender`,`Education`,`Image`) VALUES ('Doc005','Tapasi','Kanaka','Neurology',34,'Female','MBBS, MCh','DoctorFemale');
INSERT INTO `healthhub`.`doctors` (`Doctor_ID`,`First_Name`,`Last_Name`,`Specialization`,`Experience`,`Gender`,`Education`,`Image`) VALUES ('Doc006','Gagan','Sabharwal','Dentist',25,'Male','BDS, MDS','DoctorMale');
INSERT INTO `healthhub`.`doctors` (`Doctor_ID`,`First_Name`,`Last_Name`,`Specialization`,`Experience`,`Gender`,`Education`,`Image`) VALUES ('Doc007','Mukul','Varma','Neurology',26,'Male','MBBS, MS','DoctorMale');
INSERT INTO `healthhub`.`doctors` (`Doctor_ID`,`First_Name`,`Last_Name`,`Specialization`,`Experience`,`Gender`,`Education`,`Image`) VALUES ('Doc008','Indira','Hinduja','General Physician',27,'Female','MBBS','DoctorFemale');
INSERT INTO `healthhub`.`doctors` (`Doctor_ID`,`First_Name`,`Last_Name`,`Specialization`,`Experience`,`Gender`,`Education`,`Image`) VALUES ('Doc009','Kalpesh','Thakur','Dermatology',35,'Male','MBBS, MD','DoctorMale');
INSERT INTO `healthhub`.`doctors` (`Doctor_ID`,`First_Name`,`Last_Name`,`Specialization`,`Experience`,`Gender`,`Education`,`Image`) VALUES ('Doc010','Tarun','Gupta','Dentist',38,'Male','BDS, MDS','DoctorMale');
INSERT INTO `healthhub`.`doctors` (`Doctor_ID`,`First_Name`,`Last_Name`,`Specialization`,`Experience`,`Gender`,`Education`,`Image`) VALUES ('Doc011','Sneha','Kumar','General Physician',25,'Female','MBBS, DNB','DoctorFemale');

select * from doctors;

