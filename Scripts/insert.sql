INSERT INTO company
	(CompanyId,Name)
	VALUES
	(1,'MosFin'),
	(2,'Cian'),
	(3,'Astoria'),
	(4,'Argo'),
	(5,'VLStroy'),
	(6,'PartnerGroup');
	
INSERT INTO employee
	(EmployeeID,Surname,Name,CompanyId)
	VALUES
	(1,'Ivanov','Ivan',1),
	(2,'Fomin','Daniil',2),
	(3,'Vishnyakov','Evgeniy',6),
	(4,'Ivanov','Arkadyi',5),
	(5,'Grandevald','Petr',3),
	(6,'Veselkin','Andrey',1),
	(7,'Petrova','Angelina',4),
	(8,'Babenko','Oksana',1),
	(9,'Martyshkin','Acaciy',5),
	(10,'Vertushkina','Isabella',6),
	(11,'Semenov','Valdemar',3),
	(12,'Chertopolov','Maria',2),
	(13,'Filipova','Elena',4),
	(14,'Zacoverniy','Victor',1),
	(15,'Andreev','Dmitriy',4),
	(16,'Vasilevskiy','Ivan',1),
	(17,'Sovyshkin','Maksim',2),
	(18,'Kirichenko','Daniil',6),
	(19,'Shylga','Petr',2),
	(20,'Zybenko','Michail',1);
	
INSERT INTO district
	(DistrictId,City,Name)
	VALUES
	(1,'Moscow','Tekstylshyci'),
	(2,'Tula','Privokzlniy'),
	(3,'Tula','Cenralniy'),
	(4,'Moscow','East'),
	(5,'Moscow','West'),
	(6,'Moscow','South'),
	(7,'Moscow','North'),
	(8,'Moscow','Cenralniy'),
	(9,'Tula','Venevskiy');


INSERT INTO passportclient
	(PassportNumber,Date,CodeOffice,Family,Surname,Name,City,Age)
	VALUES
	(1,'2022-06-01',714,'single','Chernomydin','Maksim','Moscow',22),
	(2,'2020-09-08',711,'single','Ostapov','Aleksey','Saint-Petersburg',32),
	(3,'2022-09-06',720,'single','Pochemychkin','Evgeniy','Efremov',19),
	(4,'2019-01-07',710,'maried','Poshlepova','Olga','Kaluga',25),
	(5,'2022-02-22',711,'single','Prihodko','Ivan','Saint-Petersburg',34),
	(6,'2018-05-18',712,'maried','Skychnov','Michail','Barnaul',27),
	(7,'2011-11-11',618,'maried','Veselova','Inga','Volgograd',29),
	(8,'2012-12-12',754,'maried','Ochlobystin','Ryslan','Belgorod',30),
	(9,'2017-12-11',338,'single','Kaznov','Ilia','Ecaterinburg',32),
	(10,'2019-08-29',182,'maried','Shepkin','Ignat','Moscow',42),
	(11,'2013-09-16',205,'maried','Shishova','Yliana','Colomna',50),
	(12,'2017-12-04',263,'single','Doskal','Egor','Novgorod',27),
	(13,'2021-07-30',754,'single','Rogovskaya','Maria','Moscow',34),
	(14,'2019-02-25',274,'maried','Blanter','Ilia','Tver',40),
	(15,'2020-07-25',210,'single','Levkovich','Mark','Taganrog',29),
	(16,'2020-08-23',684,'single','Tenshieva','Mila','Salavat',34),
	(17,'2017-05-13',314,'maried','Nizov','Konstantin','irkuntsk',42),
	(18,'2020-01-12',300,'maried','Shabalina','Irina','Tula',32),
	(19,'2022-08-17',300,'single','Bylkina','Tamara','Tula',23),
	(20,'2022-05-21',773,'single','Tryshevskiy','Grigoriy','Moscow',36),
	(21,'2022-02-20',724,'maried','Cameneva','Clara','Moscow',32),
	(22,'2017-10-16',421,'single','Ysatova','Daria','Tula',27),
	(23,'2013-04-25',467,'maried','Antonovich','Maksim','Ecaterinburg',51),
	(24,'2022-09-26',653,'maried','Yaskin','Andrey','Serpuchov',47),
	(25,'2019-10-15',753,'single','Kulumbaev','Prochor','Saint-Petersburg',34),
	(26,'2017-12-13',775,'maried','Shatochina','Maria','Moscow',64);
	
	
	
INSERT INTO realestateobject
	(ObjectID,Address,Square,ObjectType,DistrictId,OwnerPassportNumber)
	VALUES
	(1,'Novoaleksinskaya 16',140,'flat',8,14),
	(2,'Leningradskoe 58',100,'flat',8,23),
	(3,'Lobachevskogo 120',122,'flat',4,1),
	(4,'Proizvodstvenaya 8',131,'flat',5,6),
	(5,'Autozavodskaya 23/5',150,'flat',1,8),
	(6,'Gorbunova 12/2',116000,'plot',7,16),
	(7,'Konchinka 10',100000,'plot',9,12),
	(8,'Kolpakova 356',3140,'society',6,17),
	(9,'Nekrasova',2800,'society',3,22),
	(10,'Makarenko 7',120,'office',2,9);
	
INSERT INTO contract
	(ContractID,DateOfContract,DateOfPayment,CostOfObject,EmployeeID,ContractType,OwnerPassportNumber,ClientPassportNumber)
	VALUES
	(1,'2022-10-12','2022-10-13',10000000,10,'purchase',9,21),
	(2,'2020-11-23','2029-12-23',222000000,2,'purchase',22,11),
	(3,'2019-09-25','2019-09-25',400000000,3,'purchase',17,25),
	(4,'2021-10-02','2021-10-03',1200000000,19,'purchase',12,4),
	(5,'2018-11-16','2018-11-19',1500000000,6,'purchase',16,11),
	(6,'2019-02-12','2019-02-19',3000000,4,'purchase',8,3),
	(7,'2022-01-12','2022-03-12',2000000,11,'arend',6,15),
	(8,'2020-11-12','2020-11-12',1100000,12,'purchase',1,24),
	(9,'2021-06-12','2021-08-12',100000,16,'arend',23,13),
	(10,'2019-05-12','2019-06-12',120000,9,'arend',14,2);
	
load data infile ".../" into tables 
