/*
SQLyog - Free MySQL GUI v5.0
Host - 5.0.37-community-nt : Database - dthree
*********************************************************************
Server version : 5.0.37-community-nt
*/


create database if not exists `dthree`;

USE `dthree`;

/*Table structure for table `bloodregister` */

DROP TABLE IF EXISTS `bloodregister`;

CREATE TABLE `bloodregister` (
  `Donor Name` varchar(25) default NULL,
  `Gender` char(6) default NULL,
  `BloodGroup` varchar(10) default NULL,
  `DateofBirth` date default '1500-10-10',
  `Weight` int(3) default NULL,
  `DateofLastDonation` date default '1500-10-10',
  `City` varchar(10) default NULL,
  `MobileNumber` decimal(15,0) default NULL,
  `PhoneNumber` decimal(15,0) default NULL,
  `EmailID` varchar(25) default NULL,
  `Address` varchar(50) default NULL,
  `UserName` varchar(15) default NULL,
  `Password` varchar(15) default NULL,
  `ConfirmPassword` varchar(15) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `bloodregister` */

insert into `bloodregister` values 

('Ankit Sinhal','Male','B+','1988-10-10',45,'1788-06-03','Indore','8109041214','8109041214','ankit.sinhal@gmail.com','hello','Ankit.Sinhal','12345','12345'),

('abhineet','Male','B+','1998-02-05',54,'1952-06-09','Bhopal','908098','4514581','abhineetchdhr@gmail.com','hiii','abhineet','1111','1111'),

('Priya','Female','B+','1966-05-05',26,'1965-03-09','Pune','4665488','5456464','priya.cchjk@gmail.com','Good','Priya Ch','22222','22222'),

('Sumit','Male','B-','1988-10-10',21,'1788-06-03','Indore','8109041214','989890','ankit.sinhal@gmail.com','ndjkwhsakj','Vishal','1111','1111'),

('Sumit','Male','A+','1989-02-07',55,'2010-06-05','Indore','325689','32654','ankit.sinhal@gmail.com','afj','Vivek','2222','2222'),

('abhineet','Male','O+','1988-10-10',60,'2010-06-05','Indore','9584086335','8109041214','abhineetchdhr@gmail.com','indore','abhineet','9584025555','564564+9898');

/*Table structure for table `chemist` */

DROP TABLE IF EXISTS `chemist`;

CREATE TABLE `chemist` (
  `Name` varchar(25) default NULL,
  `Area` varchar(100) default NULL,
  `Contact_No` decimal(25,0) default NULL,
  `Email` varchar(25) default NULL,
  `Type` varchar(100) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `chemist` */

/*Table structure for table `doctormaster` */

DROP TABLE IF EXISTS `doctormaster`;

CREATE TABLE `doctormaster` (
  `ID Number` int(20) NOT NULL,
  `Name` varchar(25) default NULL,
  `Gender` varchar(6) default NULL,
  `Phone Number` decimal(15,0) default NULL,
  `Mobile Number` decimal(15,0) default NULL,
  `E-mail ID` varchar(25) default NULL,
  `Clinic Address` varchar(50) default NULL,
  `Home Address` varchar(50) default NULL,
  `Specialization` varchar(100) default NULL,
  `Degree` varchar(20) default NULL,
  `Visiting Time` varchar(15) default NULL,
  PRIMARY KEY  (`ID Number`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `doctormaster` */

insert into `doctormaster` values 

(111,'Ankit','Male','8109041214','8109041214','ankit.sinhal@gmail.com','Indore','Timarni','EC','BE','1-2'),

(123,'Sumit','Male','451','54','sabu.sumit@gmail.com','saf','asdf','EC','BE','11-2'),

(212,'Ankit','Male','34209','39202390','ankit.sinhal@gmail.com','Indore','dsalk','Allergy','sjjsal','jlkdcsa'),

(222,'Anil','Male','9982712726','9982712726','anil.abc@yahoo.co.in','Dehli','Mumbai','Heart','MBBS','4-5'),

(333,'Priya','Female','9584033845','9584033845','priya_chanoo@yahoo.co.in','Pune','Indore','Eye','MS','5-8'),

(3487,'dsiouf','Male','3824832098','8490283048','aaa.hcds@gmail.com','hdkahd','hduh','`hadwouih','adah','doajoi'),

(84239,'jfdwj','Male','83280492','902503928','HASJKH','','','','',''),

(548093,'fdjkk','Male','48380','84389','nlsdknlgdn','','','','',''),

(792379,'ufhsiu','Male','783748927','7489274','aa.@com','fiw','sefed','ioui','uquewioue','i'),

(823409,'lkdj','Male','9281349018','19489218','9LRWQKK','','','','',''),

(857389,'iesjfio','Male','358938','839823','aaa.ujdfih@gmail.com','njansj','nadnjn','ncosn','jcioaj','ofjiaj'),

(7327527,'sdhfh','Male','38238','8342849238','a@.com','hguihu','hgg','gkhgk','hkh',''),

(8249809,'SEJFOJO','Male','8923409','8421398','.KJKASD@NDVJN','BHB','JN','HKJH','','JKHMN'),

(8439289,'ifjsiofj','Male','923482','8492390','','','','','',''),

(8539859,'jfklsjfj','Male','832984209','8230983','djfdsklf','','','','',''),

(83428728,'hsjekhfh','Male','8732487819','3824748','hdkjfhsjkh','','','','',''),

(98582390,'ioejsfioji','Male','8934209','8493289','jklfjsklj','','','','','');

/*Table structure for table `feedbackform` */

DROP TABLE IF EXISTS `feedbackform`;

CREATE TABLE `feedbackform` (
  `Name` varchar(25) default NULL,
  `Email ID` varchar(25) default NULL,
  `Contact No.` decimal(15,0) default NULL,
  `Message` varchar(100) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `feedbackform` */

insert into `feedbackform` values 

('Ankit','aadsfas','56456846514','hvbmbjln\r\n457\r\n75\r\nj'),

('Ankit','eye','89080980980','hiiiiiiiii\r\n');

/*Table structure for table `getassistance` */

DROP TABLE IF EXISTS `getassistance`;

CREATE TABLE `getassistance` (
  `Name` varchar(25) default NULL,
  `Email_ID` varchar(25) default NULL,
  `Query` varchar(100) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `getassistance` */

insert into `getassistance` values 

('aaaaaaaaddd','dddddd@gmail.com','sdfdf'),

('njjnhcsakh','ljlvjsdlj','jdsipvjpviojs'),

('rajesh','jksndfkjnsdsdkjnvkj','hello'),

('hiiiii','hello','hhhh'),

('Ankit Sinhal','dddddd@gmail.com','abhineet choudhary'),

('abhineeet choudhary','abhibmnnjksdfuiehf','edjwqoirj239u93uf4 f43ufh4if 3hri34jf 3jrio34jr');

/*Table structure for table `hospitalsearch` */

DROP TABLE IF EXISTS `hospitalsearch`;

CREATE TABLE `hospitalsearch` (
  `Name` varchar(50) default NULL,
  `Address` varchar(100) default NULL,
  `No_Of_Doctor` int(5) default NULL,
  `Specialization` varchar(100) default NULL,
  `ContactNo` int(15) default NULL,
  `EmailID` varchar(25) default NULL,
  `About_Hospital` varchar(200) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `hospitalsearch` */

insert into `hospitalsearch` values 

('Amol Hospital P Ltd','20/1,Y.N.Road, Indore:452003',50,'Anatomy',2147483647,'@.in',''),

('AIIMS','Vijay nagar',1350,'Pediatric Dentistry, Exodontics, Radiation Oncology, Surgical Oncology, Medical Oncology, Clinical p',91,'webmastr@aiims.ac.in','The hospital has a total of 1766 beds (incl. newly constructed Emergency & Private wards)'),

('aaaaaa','Vijay nagar',565,'Anatomy',545564984,'@.co.in',''),

('Ankur Hospital P Ltd','10Yeshwant Niwas Rd, Malwa Mill, Indore:452001',0,'Cardio Thoracic Vascular Surgery',454564564,'@.com',''),

('AnandHospital and Research Centre','7 SindhuNagar, Bhanwarkua Road, Indore:452001',50,'',2472121,'',''),

('Ankur Hospital P Ltd','10Yeshwant Niwas Rd, Malwa Mill, Indore:452001',56,'',0,'',''),

('Arpan Nursing Home','Rajwada',0,'',0,'',''),

('Arihant hospital','283,Gumasta Nagar',0,'',0,'',''),

('Bafna Hospital and Orth Research Centre','18/1NorthRajmohalla,(Opp Vaishnav High School), Indore :452001',0,'',0,'',''),

('Bapat Hospital and Lapro. Surgery Ctr','Ahd-30 Sukhlia, Indore: 452010',0,'',0,'',''),

('Bhandari Nursing Home','Sch.No. 54 ,Vijay nagar',0,'',0,'',''),

('Charak Hospital','Film Bhawan, Rani Sati Gate, Y.N.Road, Indore:452003',0,'',0,'',''),

('Chl Apollo Hospitals','Convenient Hospital Ltd A B Road Near Lig Square,Indore:452001',0,'',0,'',''),

('Choithram Hospital and Researchcentre','Manik Bagh Road, Indore: 452014',0,'',0,'',''),

('City Orthopaedic and Acident Hospital','282 Jawahar Marg, Opp Taj Building, Indore: 452001',0,'',0,'',''),

('City Nursing Home','Rajmohalla',0,'',0,'',''),

('Ctr For Chronic Disease and Research','G-2, Anuj Apartment, Patrakar Colony,Near Saket Nagar,Indore: 452001',0,'',0,'',''),

('Cloth Market Hospital','Dhar Road',0,'',0,'',''),

('Chacha Nehru Bal Chiktsalaya','Behind M.Y.Hospital',0,'',0,'',''),

('Curewell Hospital P.Ltd','New Palasia',0,'',0,'',''),

('Dental Hospital','App.M.Y.Hospital',0,'',0,'',''),

('Devi Ahilya Hospital and Research','1 Anand Nagar, Nemavar Road Navlakha, Indore:',0,'',0,'',''),

('District Hospital','Dhar road',0,'',0,'',''),

('Gokuldas Hospital Ltd','11, Dr Sarju Prasad Marg, Indore: 452001',0,'',0,'',''),

('Goyal Maternity Nursing HomeGoyal Maternity Nursin','78/47 Agrawal Nagar, Navlakha,Indore: 452001',0,'',0,'',''),

('Govind Ram Sakseria Hospital','Malwa Mill,Y.N.Road',0,'',0,'',''),

('Gurjar Hospital and Endoscopy Cntr Pltd','2 and 3 Scheme No.44,A.B.Road Bhanwarkua, Indore: 452001,',0,'',0,'',''),

('Geeta Bhavan Hospital','Geeta Bhavan Square',0,'',0,'','');

/*Table structure for table `pathology` */

DROP TABLE IF EXISTS `pathology`;

CREATE TABLE `pathology` (
  `Name` varchar(50) default NULL,
  `Area` varchar(100) default NULL,
  `Contact_No` decimal(15,0) default NULL,
  `Email` varchar(25) default NULL,
  `Speciality` varchar(100) default NULL,
  `City` varchar(10) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `pathology` */

insert into `pathology` values 

('Ani','hghjygjh','1456546','bhjgjgk','Blood Test','Indore'),

('hello','Mahu naka','0','jnklsjlad','X-Ray','Bhopal');
