create database if not exists SGTravel;

use SGTravel;

drop table if exists Plan;

create table Plan
  (
	planID int,
	startCity varchar(50),
	planTitle varchar(200),
	duration int,
	country varchar(50),
	img_path char(200)
   );

drop table if exists Plan_StartDate;

drop table if exists Plan_Date;

create table Plan_Date
	(
		itemID int,
		planID int,
		startDate date,
		endDate date,
		remainingSeat int,
		price int,
		flightID_1 int,
		flightID_2 int
	);

#drop table if exists Country;
#create table Country
#	(
#		country varchar(50),
#		continent varchar(50)    #Asia, Africa, North America, South America, Antarctica, Europe, Australia
#	);

drop table if exists City;

create table City
	(
		city varchar(50),
		country varchar(50),
		cityID int
	);

drop table if exists Plan_City;

create table Plan_City
	(
		planID int,
		cityID int
	);


drop table if exists Flight;

create table Flight
	(
		flightID int,
		flightNumber char(20),
		airline varchar(50),
		departureCity varchar(50),
		departureTime DATETIME,
		arrivalCity varchar(50),
		arrivalTime DATETIME,
		remainingSeat int,
		price int
	);

drop table if exists Plan_Flight;

drop table if exists User;

drop table if exists Users;

create table Users
	(
		username char(16) not null,
		password char(41) not null,
		primary key (username)
	);

drop table if exists Plan_Users;

create table Plan_Users
	(
		purchaseID char(128),
		itemID int,
		planID int,
		username char(16),
		price int,
		amount int
	);

drop table if exists Comment;

create table Comment
	(
		userID int,
		planID int,
		username varchar(50),
		content varchar(70),
		mark int
	);

drop table if exists Cart;

create table Cart
      (
        planID int,
        qty  int,
        img varchar(200)
      );
#Plan
#planID INT, planTitle varchar(50), duration INT,  remainingSeat INT, country varchar(50), plan_detail varchar(200)

insert into Plan values(001, 'Singapore','4 Days China Tour (Beijing)', 4, 'China', 'images/travel/beijing.jpg');
insert into Plan values(002, 'Singapore','3 Days China Tour (Shanghai) ', 3, 'China', 'images/travel/shanghai.jpg');
insert into Plan values(003, 'New York','2 Days China Tour (Chongqing)', 2, 'China', 'images/travel/chongqing.jpg');

insert into Plan values(004, 'New York','3 Days Singapore Tour', 3, 'Singapore', 'images/travel/singapore.jpg');

insert into Plan values(005, 'London','5 Days Thailand Tour (Bangkok + Chiang Mai + Pattaya)', 5, 'Thailand', 'images/travel/thai.jpg') ;

insert into Plan values(006, 'London','4 Days Italy Tour (Rome + Milan + Florence)', 4, 'Italy', 'images/travel/italy.jpg') ;
insert into Plan values(007, 'Paris','9 Days Italy Tour (Rome + Milan + Florence + Venice + Palermo)', 9, 'Italy' , 'images/travel/italy_2.jpg') ;

insert into Plan values(008, 'Singapore','9 Days France Tour (Bordeaux + Paris + Lille + Nice + Lyon)', 9, 'France' , 'images/travel/france.jpg') ;
insert into Plan values(009, 'Sydney','2 Days France Tour (Paris)', 2, 'France' , 'images/travel/paris.jpg') ;
insert into Plan values(010, 'Sydney','1 Days France Tour (Bordeaux )', 1, 'France', 'images/travel/bordeaux.jpg') ;

insert into Plan values(011, 'Tokyo','1 Days Egypt Tour (Cairo)', 1, 'Egypt', 'images/travel/cairo.jpg') ;
insert into Plan values(012, 'Tokyo','1 Days Egypt Tour (Alexandria)', 1, 'Egypt', 'images/travel/alexandria.jpg') ;

insert into Plan values(013, 'Beijing','4 Days France Tour (Rio de Janeiro + Sao Paulo)', 4, 'Brazil', 'images/travel/sao_paulo.jpg') ;

insert into Plan values(014, 'Beijing','15 Days United States Tour (New York + Chicago + Philadelphia + Boston + Washington)', 15, 'United States', 'images/travel/new_york.jpg') ;
insert into Plan values(015, 'Shanghai','15 Days United States Tour (Los Angeles + San Francisco + Las Vegas + Yellowstone Park)', 15, 'United States', 'images/travel/los_angeles.jpg') ;
insert into Plan values(016, 'Shanghai','2 Days Australia Tour (Sydney)', 2, 'Australia', 'images/travel/sydney.jpg') ;
insert into Plan values(017, 'Paris','2 Days Australia Tour (Melbourne)', 2, 'Australia', 'images/travel/melbourne.jpg') ;




#Country
#country varchar(50), continent varchar(50)
#insert into Country values ('China','Asia');
#insert into Country values ('Singapore','Asia');
#insert into Country values ('Thailand','Asia');
#
#insert into Country values ('Italy','Europe');
#insert into Country values ('France','Europe');
#
#insert into Country values ('Egypt','Africa');
#
#insert into Country values ('Brazil','South America');
#
#insert into Country values ('United states','North America');
#
#insert into Country values ('Australia ','Australia');


#City
#city varchar(50), contry varchar(50),cityID INT
insert into City values ('Beijing','China',1) ;
insert into City values ('Shanghai','China',2) ;
insert into City values ('Chongqing','China',3) ;

insert into City values ('Singapore','Sinagpore',4) ;

insert into City values ('Bangkok','Thailand',5) ;
insert into City values ('Chiang Mai','Thailand',6) ;
insert into City values ('Pattaya','Thailand',7) ;

insert into City values ('Rome','Italy',8) ;
insert into City values ('Milan','Italy',9) ;
insert into City values ('Venice','Italy',10) ;
insert into City values ('Florence','Italy',11) ;
insert into City values ('Palermo','Italy',12) ;

insert into City values ('Bordeaux','France',13) ;
insert into City values ('Paris','France',14) ;
insert into City values ('Lille','France',15) ;
insert into City values ('Lyon','France',16) ;
insert into City values ('Nice','France',17) ;

insert into City values ('Cairo','Egypt',18) ;
insert into City values ('Alexandria','Egypt',19) ;

insert into City values ('Rio de Janeiro','Brazil',20) ;
insert into City values ('Sao Paulo','Brazil',21) ;


insert into City values ('New York','United States',22);
insert into City values ('Chicago','United States',23);
insert into City values ('Philadelphia','United States',24);
insert into City values ('Boston','United States',25);
insert into City values ('Washington','United States',26);
insert into City values ('Los Angeles','United States',27);
insert into City values ('San Francisco','United States',28);
insert into City values ('Las Vegas','United States',29);
insert into City values ('Yellowstone Park','United States',30);


insert into City values ('Sydney','Australia',31);
insert into City values ('Melbourne','Australia',32);




#Plan_City
#planID INT, cityID INT
#001, 4 Days China Tour (Beijing)
#002, 3 Days China Tour (Shanghai)
#003, 2 Days China Tour (Chongqing)
#004, 3 Days Singapore Tour
#005, 5 Days Thailand Tour (Bangkok + Chiang Mai + Pattaya)
#006, 4 Days Italy Tour (Rome + Milan + Florence)
#007, 9 Days Italy Tour (Rome + Milan + Florence + Venice + Palermo)
#008, 9 Days France Tour (Bordeaux + Paris + Lille + Nice + Lyon)
#009, 2 Days France Tour (Paris)
#010, 1 Days France Tour (Bordeaux)
#011, 1 Days Egypt Tour (Cairo)
#012, 1 Days Egypt Tour (Alexandria)
#013, 4 Days France Tour (Rio de Janeiro + Sao Paulo)
#014, 15 Days United States Tour (New York + Chicago + Philadelphia + Boston + Washington)
#015, 15 Days United States Tour (Los Angeles + San Francisco + Las Vegas + Yellowstone Park)
#016, 2 Days Australia Tour (Sydney)
#017, 2 Days Australia Tour (Melbourne)

insert into Plan_City values (001, 1);

insert into Plan_City values (002, 2);

insert into Plan_City values (003, 3);

insert into Plan_City values (004, 4);

insert into Plan_City values (005, 5);
insert into Plan_City values (005, 6);
insert into Plan_City values (005, 7);

insert into Plan_City values (006, 8);
insert into Plan_City values (006, 9);
insert into Plan_City values (006, 11);

insert into Plan_City values (007, 8);
insert into Plan_City values (007, 9);
insert into Plan_City values (007, 10);
insert into Plan_City values (007, 11);
insert into Plan_City values (007, 12);

insert into Plan_City values (008, 13);
insert into Plan_City values (008, 14);
insert into Plan_City values (008, 15);
insert into Plan_City values (008, 16);
insert into Plan_City values (008, 17);

insert into Plan_City values (009, 14);

insert into Plan_City values (010, 13);

insert into Plan_City values (011, 18);

insert into Plan_City values (012, 19);

insert into Plan_City values (013, 20);
insert into Plan_City values (013, 21);

insert into Plan_City values (014, 22);
insert into Plan_City values (014, 23);
insert into Plan_City values (014, 24);
insert into Plan_City values (014, 25);
insert into Plan_City values (014, 26);

insert into Plan_City values (015, 27);
insert into Plan_City values (015, 28);
insert into Plan_City values (015, 29);
insert into Plan_City values (015, 30);

insert into Plan_City values (016, 31);
insert into Plan_City values (017, 32);

insert into Flight values(001, 'SQ800', 'Singapore Airlines', 'Singapore', '2020-03-21 01:10:00', 'Beijing', '2020-03-21 07:15:00', 10, 1000);
insert into Flight values(002, 'SQ5879', 'Singapore Airlines', 'Beijing', '2020-03-21 15:35:00', 'Singapore', '2020-03-21 21:55:00', 0, 1200);
insert into Flight values(003, 'SQ800', 'Singapore Airlines', 'Singapore', '2020-03-22 01:10:00', 'Beijing', '2020-03-22 07:15:00', 6, 950);
insert into Flight values(004, 'SQ5879', 'Singapore Airlines', 'Beijing', '2020-03-22 15:35:00', 'Singapore', '2020-03-22 21:55:00', 30, 900);
insert into Flight values(005, 'SQ800', 'Singapore Airlines', 'Singapore', '2020-03-22 01:10:00', 'Beijing', '2020-06-01 07:15:00', 30, 900);
insert into Flight values(006, 'SQ5879', 'Singapore Airlines', 'Beijing', '2020-06-04 15:35:00', 'Singapore', '2020-06-04 21:55:00', 30, 900);
insert into Flight values(007, 'SQ800', 'Singapore Airlines', 'Singapore', '2020-03-01 01:10:00', 'Beijing', '2020-03-01 07:15:00', 30, 970);
insert into Flight values(008, 'SQ5879', 'Singapore Airlines', 'Beijing', '2020-03-04 15:35:00', 'Singapore', '2020-03-04 21:55:00', 30, 900);
insert into Flight values(009, 'SQ800', 'Singapore Airlines', 'Singapore', '2020-04-01 01:10:00', 'Beijing', '2020-04-01 07:15:00', 40, 900);
insert into Flight values(010, 'SQ5879', 'Singapore Airlines', 'Beijing', '2020-04-04 15:35:00', 'Singapore', '2020-04-04 21:55:00', 32, 900);
insert into Flight values(011, 'SQ800', 'Singapore Airlines', 'Singapore', '2020-03-01 01:10:00', 'Beijing', '2020-03-01 07:15:00', 34, 900);
insert into Flight values(012, 'SQ5879', 'Singapore Airlines', 'Beijing', '2020-03-04 15:35:00', 'Singapore', '2020-03-04 21:55:00', 12, 1000);
insert into Flight values(013, 'SQ800', 'Singapore Airlines', 'Singapore', '2020-10-01 01:10:00', 'Beijing', '2020-10-01 07:15:00', 21, 900);
insert into Flight values(014, 'SQ5879', 'Singapore Airlines', 'Beijing', '2020-10-04 15:35:00', 'Singapore', '2020-10-04 21:55:00', 45, 820);
insert into Flight values(015, 'SQ800', 'Singapore Airlines', 'Singapore', '2020-11-01 01:10:00', 'Beijing', '2020-11-01 07:15:00', 30, 900);
insert into Flight values(016, 'SQ5879', 'Singapore Airlines', 'Beijing', '2020-05-04 15:35:00', 'Singapore', '2020-05-04 21:55:00', 49, 900);
insert into Flight values(017, 'SQ800', 'Singapore Airlines', 'Singapore', '2020-06-01 01:10:00', 'Beijing', '2020-06-01 07:15:00', 100, 900);
insert into Flight values(018, 'SQ5879', 'Singapore Airlines', 'Beijing', '2020-06-04 15:35:00', 'Singapore', '2020-06-04 21:55:00', 100, 900);
insert into Flight values(019, 'SQ800', 'Singapore Airlines', 'Singapore', '2020-03-01 01:10:00', 'Beijing', '2020-03-01 07:15:00', 2, 1100);
insert into Flight values(020, 'SQ5879', 'Singapore Airlines', 'Beijing', '2020-03-04 15:35:00', 'Singapore', '2020-03-04 21:55:00', 3, 1200);
insert into Flight values(021, 'SQ826', 'Singapore Airlines', 'Singapore', '2020-04-01 01:15:00', 'Shanghai', '2020-04-01 06:35:00', 0, 900);
insert into Flight values(022, 'SQ831', 'Singapore Airlines', 'Shanghai', '2020-04-03 14:30:00', 'Singapore', '2020-04-03 19:50:00', 2, 850);
insert into Flight values(023, 'SQ826', 'Singapore Airlines', 'Singapore', '2020-05-15 01:15:00', 'Shanghai', '2020-05-15 06:35:00', 13, 870);
insert into Flight values(024, 'SQ831', 'Singapore Airlines', 'Shanghai', '2020-05-17 14:30:00', 'Singapore', '2020-05-16 19:50:00', 10, 800);
insert into Flight values(025, 'SQ826', 'Singapore Airlines', 'Singapore', '2020-06-21 01:15:00', 'Shanghai', '2020-06-21 06:35:00', 90, 700);
insert into Flight values(026, 'SQ831', 'Singapore Airlines', 'Shanghai', '2020-06-23 14:30:00', 'Singapore', '2020-06-23 19:50:00', 20, 900);
insert into Flight values(027, 'SQ826', 'Singapore Airlines', 'Singapore', '2020-03-21 01:15:00', 'Shanghai', '2020-03-21 06:35:00', 23, 860);
insert into Flight values(028, 'SQ831', 'Singapore Airlines', 'Shanghai', '2020-03-23 14:30:00', 'Singapore', '2020-03-23 19:50:00', 120, 800);
insert into Flight values(029, 'SQ826', 'Singapore Airlines', 'Singapore', '2020-04-21 01:15:00', 'Shanghai', '2020-04-21 06:35:00', 150, 800);
insert into Flight values(030, 'SQ831', 'Singapore Airlines', 'Shanghai', '2020-04-23 14:30:00', 'Singapore', '2020-04-23 19:50:00', 150, 800);
insert into Flight values(031, 'SQ826', 'Singapore Airlines', 'Singapore', '2020-03-21 01:15:00', 'Shanghai', '2020-03-21 06:35:00', 124, 800);
insert into Flight values(032, 'SQ831', 'Singapore Airlines', 'Shanghai', '2020-03-23 14:30:00', 'Singapore', '2020-03-23 19:50:00', 230, 800);
insert into Flight values(033, 'NY233', 'China Southern Airlines', 'New York', '2020-04-01 07:15:00', 'Chongqing', '2020-04-02 01:35:00', 134, 1670);
insert into Flight values(034, 'NY223', 'China Southern Airlines', 'Chongqing', '2020-04-02 03:30:00', 'New York', '2020-04-02 21:50:00', 132, 1700);
insert into Flight values(035, 'NY233', 'China Southern Airlines', 'New York', '2020-03-01 07:15:00', 'Chongqing', '2020-03-02 01:35:00', 136, 1700);
insert into Flight values(036, 'NY223', 'China Southern Airlines', 'Chongqing', '2020-03-02 03:30:00', 'New York', '2020-03-02 21:50:00', 189, 1700);
insert into Flight values(037, 'NY233', 'China Southern Airlines', 'New York', '2020-10-01 07:15:00', 'Chongqing', '2020-10-02 01:35:00', 187, 1700);
insert into Flight values(038, 'NY223', 'China Southern Airlines', 'Chongqing', '2020-05-02 03:30:00', 'New York', '2020-05-02 21:50:00', 165, 1700);
insert into Flight values(039, 'NY233', 'China Southern Airlines', 'New York', '2020-05-01 07:15:00', 'Chongqing', '2020-05-02 01:35:00', 155, 1700);
insert into Flight values(040, 'NY223', 'China Southern Airlines', 'Chongqing', '2020-05-02 03:30:00', 'New York', '2020-05-02 21:50:00', 133, 1700);
insert into Flight values(041, 'NY233', 'China Southern Airlines', 'New York', '2020-06-01 07:15:00', 'Chongqing', '2020-06-02 01:35:00', 153, 1700);
insert into Flight values(042, 'NY223', 'China Southern Airlines', 'Chongqing', '2020-06-02 03:30:00', 'New York', '2020-06-02 21:50:00', 198, 1700);
insert into Flight values(043, 'DL800', 'Delta Airlines', 'Singapore', '2020-04-01 01:10:00', 'New York', '2020-04-01 07:15:00', 10, 1000);
insert into Flight values(044, 'DL5879', 'Delta Airlines', 'New York', '2020-04-04 15:35:00', 'Singapore', '2020-04-04 21:55:00', 0, 1200);
insert into Flight values(045, 'DL800', 'Delta Airlines', 'Singapore', '2020-05-01 01:10:00', 'New York', '2020-05-01 07:15:00', 6, 950);
insert into Flight values(046, 'DL5879', 'Delta Airlines', 'New York', '2020-05-04 15:35:00', 'Singapore', '2020-05-04 21:55:00', 30, 900);
insert into Flight values(047, 'DL800', 'Delta Airlines', 'Singapore', '2020-06-01 01:10:00', 'New York', '2020-06-01 07:15:00', 30, 900);
insert into Flight values(048, 'DL5879', 'Delta Airlines', 'New York', '2020-06-04 15:35:00', 'Singapore', '2020-06-04 21:55:00', 30, 900);
insert into Flight values(049, 'DL800', 'Delta Airlines', 'Singapore', '2020-03-01 01:10:00', 'New York', '2020-03-01 07:15:00', 30, 970);
insert into Flight values(050, 'DL5879', 'Delta Airlines', 'New York', '2020-03-04 15:35:00', 'Singapore', '2020-03-04 21:55:00', 30, 900);
insert into Flight values(051, 'DL800', 'Delta Airlines', 'Singapore', '2020-04-01 01:10:00', 'New York', '2020-04-01 07:15:00', 40, 900);
insert into Flight values(052, 'DL5879', 'Delta Airlines', 'New York', '2020-04-04 15:35:00', 'Singapore', '2020-04-04 21:55:00', 32, 900);
insert into Flight values(053, 'DL800', 'Delta Airlines', 'Singapore', '2020-03-01 01:10:00', 'New York', '2020-03-01 07:15:00', 34, 900);
insert into Flight values(054, 'DL5879', 'Delta Airlines', 'New York', '2020-03-04 15:35:00', 'Singapore', '2020-03-04 21:55:00', 12, 1000);
insert into Flight values(055, 'DL800', 'Delta Airlines', 'Singapore', '2020-05-01 01:10:00', 'New York', '2020-05-01 07:15:00', 21, 900);
insert into Flight values(056, 'DL5879', 'Delta Airlines', 'New York', '2020-05-04 15:35:00', 'Singapore', '2020-05-04 21:55:00', 45, 820);
insert into Flight values(057, 'DL800', 'Delta Airlines', 'Singapore', '2020-05-01 01:10:00', 'New York', '2020-05-01 07:15:00', 30, 900);
insert into Flight values(058, 'DL5879', 'Delta Airlines', 'New York', '2020-05-04 15:35:00', 'Singapore', '2020-05-04 21:55:00', 49, 900);
insert into Flight values(059, 'DL800', 'Delta Airlines', 'Singapore', '2020-06-01 01:10:00', 'New York', '2020-06-01 07:15:00', 100, 900);
insert into Flight values(060, 'DL5879', 'Delta Airlines', 'New York', '2020-06-04 15:35:00', 'Singapore', '2020-06-04 21:55:00', 100, 900);
insert into Flight values(061, 'JL800', 'Japan Airlines', 'Singapore', '2020-03-01 01:10:00', 'Tokyo', '2020-03-01 07:15:00', 2, 1100);
insert into Flight values(062, 'JL5879', 'Japan Airlines', 'Tokyo', '2020-03-04 15:35:00', 'Singapore', '2020-03-04 21:55:00', 3, 1200);
insert into Flight values(063, 'JL826', 'Japan Airlines', 'Singapore', '2020-04-01 01:15:00', 'Tokyo', '2020-04-01 06:35:00', 0, 900);
insert into Flight values(064, 'JL831', 'Japan Airlines', 'Tokyo', '2020-04-03 14:30:00', 'Singapore', '2020-04-03 19:50:00', 2, 850);
insert into Flight values(065, 'JL826', 'Japan Airlines', 'Singapore', '2020-05-15 01:15:00', 'Tokyo', '2020-05-15 06:35:00', 13, 870);
insert into Flight values(066, 'JL831', 'Japan Airlines', 'Tokyo', '2020-05-17 14:30:00', 'Singapore', '2020-05-16 19:50:00', 10, 800);
insert into Flight values(067, 'QT826', 'Qantas Airways', 'Singapore', '2020-06-21 01:15:00', 'Sydney', '2020-06-21 06:35:00', 90, 700);
insert into Flight values(068, 'QT831', 'Qantas Airways', 'Sydney', '2020-06-23 14:30:00', 'Singapore', '2020-06-23 19:50:00', 20, 900);
insert into Flight values(069, 'QT826', 'Qantas Airways', 'Singapore', '2020-03-21 01:15:00', 'Sydney', '2020-03-21 06:35:00', 23, 860);
insert into Flight values(070, 'QT831', 'Qantas Airways', 'Sydney', '2020-03-23 14:30:00', 'Singapore', '2020-03-23 19:50:00', 120, 800);
insert into Flight values(071, 'QT826', 'Qantas Airways', 'Singapore', '2020-04-21 01:15:00', 'Sydney', '2020-04-21 06:35:00', 150, 800);
insert into Flight values(072, 'QT831', 'Qantas Airways', 'Sydney', '2020-04-23 14:30:00', 'Singapore', '2020-04-23 19:50:00', 150, 800);
insert into Flight values(073, 'QT826', 'Qantas Airways', 'Singapore', '2020-03-21 01:15:00', 'Sydney', '2020-03-21 06:35:00', 124, 800);

insert into Plan_Date values (001001, 001, '2020-03-01', '2020-03-04', 0, 800, 019, 020);
insert into Plan_Date values (001002, 001, '2020-04-01', '2020-04-04', 5, 800, 001, 002);
insert into Plan_Date values (001003, 001, '2020-05-01', '2020-05-04', 10, 780, 003, 004);
insert into Plan_Date values (001004, 001, '2020-06-01', '2020-06-04', 45, 700, 005, 006);
insert into Plan_Date values (001005, 001, '2020-03-01', '2020-03-04', 50, 800, 007, 008);
insert into Plan_Date values (001006, 001, '2020-04-01', '2020-04-04', 50, 800, 009, 010);
insert into Plan_Date values (001007, 001, '2020-03-01', '2020-03-04', 50, 700, 011, 012);
insert into Plan_Date values (001008, 001, '2020-05-01', '2020-05-04', 50, 700, 013, 014);
insert into Plan_Date values (001009, 001, '2020-05-01', '2020-05-04', 50, 700, 015, 016);
insert into Plan_Date values (001010, 001, '2020-06-01', '2020-06-04', 50, 700, 017, 018);
insert into Plan_Date values (002001, 002, '2020-04-01', '2020-04-03', 20, 700, 021, 022);
insert into Plan_Date values (002002, 002, '2020-05-15', '2020-05-17', 30, 600, 023, 024);
insert into Plan_Date values (002003, 002, '2020-06-21', '2020-06-23', 20, 600, 025, 026);
insert into Plan_Date values (002004, 002, '2020-03-21', '2020-03-23', 40, 700, 027, 028);
insert into Plan_Date values (002005, 002, '2020-04-21', '2020-04-23', 20, 600, 029, 030);
insert into Plan_Date values (002006, 002, '2020-03-21', '2020-03-23', 10, 600, 031, 032);

insert into Plan_Date values (003001, 003, '2020-04-01', '2020-04-02', 15, 400, 033, 034);
insert into Plan_Date values (003002, 003, '2020-03-01', '2020-03-02', 20, 400, 035, 036);
insert into Plan_Date values (003003, 003, '2020-05-01', '2020-05-02', 30, 400, 037, 038);
insert into Plan_Date values (003004, 003, '2020-05-01', '2020-05-02', 40, 400, 039, 040);
insert into Plan_Date values (003005, 003, '2020-06-01', '2020-06-02', 20, 500, 041, 042);

insert into Plan_Date values (004003, 004, '2020-05-01', '2020-05-03', 10, 780, 0, 0);
insert into Plan_Date values (004004, 004, '2020-06-01', '2020-06-03', 45, 700, 0, 0);
insert into Plan_Date values (004005, 004, '2020-03-01', '2020-03-03', 50, 800, 0, 0);
insert into Plan_Date values (004006, 004, '2020-04-01', '2020-04-03', 5, 800, 0, 0);
insert into Plan_Date values (004007, 004, '2020-03-01', '2020-03-03', 0, 700, 0, 0);
insert into Plan_Date values (004008, 004, '2020-05-01', '2020-05-03', 50, 700, 0, 0);

insert into Plan_Date values (005001, 005, '2020-05-01', '2020-05-05', 10, 1200, 0, 0);
insert into Plan_Date values (005002, 005, '2020-06-01', '2020-06-05', 45, 1200, 0, 0);
insert into Plan_Date values (005003, 005, '2020-03-01', '2020-03-05', 30, 1100, 0, 0);
insert into Plan_Date values (005004, 005, '2020-04-01', '2020-04-05', 5, 1200, 0, 0);
insert into Plan_Date values (005005, 005, '2020-03-01', '2020-03-05', 10, 1200, 0, 0);
insert into Plan_Date values (005006, 005, '2020-05-01', '2020-05-05', 50, 1100, 0, 0);

insert into Plan_Date values (006001, 006, '2020-03-01', '2020-03-04', 6, 800, 0, 0);
insert into Plan_Date values (006002, 006, '2020-06-01', '2020-06-04', 20, 900, 0, 0);
insert into Plan_Date values (006003, 006, '2020-03-01', '2020-03-04', 30, 1000, 0, 0);
insert into Plan_Date values (006004, 006, '2020-04-01', '2020-04-04', 5, 1000, 0, 0);
insert into Plan_Date values (006005, 006, '2020-03-01', '2020-03-04', 10, 800, 0, 0);
insert into Plan_Date values (006006, 006, '2020-05-01', '2020-05-04', 40, 800, 0, 0);

insert into Plan_Date values (007001, 007, '2020-04-01', '2020-04-09', 7, 1200, 0, 0);
insert into Plan_Date values (007002, 007, '2020-06-01', '2020-06-09', 20, 1200, 0, 0);
insert into Plan_Date values (007003, 007, '2020-03-01', '2020-03-09', 10, 1400, 0, 0);
insert into Plan_Date values (007004, 007, '2020-04-01', '2020-04-09', 9, 1100, 0, 0);
insert into Plan_Date values (007005, 007, '2020-03-01', '2020-03-09', 10, 1200, 0, 0);
insert into Plan_Date values (007006, 007, '2020-05-01', '2020-05-09', 40, 1100, 0, 0);

insert into Plan_Date values (008001, 008, '2020-06-01', '2020-06-09', 20, 1200, 0, 0);
insert into Plan_Date values (008002, 008, '2020-03-01', '2020-03-09', 10, 1400, 0, 0);
insert into Plan_Date values (008003, 008, '2020-04-01', '2020-04-09', 9, 1100, 0, 0);
insert into Plan_Date values (008004, 008, '2020-03-01', '2020-03-09', 10, 1200, 0, 0);
insert into Plan_Date values (008005, 008, '2020-05-01', '2020-05-09', 40, 1100, 0, 0);

insert into Plan_Date values (009001, 009, '2020-03-01', '2020-03-02', 60, 300, 0, 0);
insert into Plan_Date values (009002, 009, '2020-04-01', '2020-04-02', 60, 300, 0, 0);

insert into Plan_Date values (010001, 010, '2020-03-01', '2020-03-01', 60, 300, 0, 0);
insert into Plan_Date values (010002, 010, '2020-04-01', '2020-04-01', 60, 300, 0, 0);

insert into Plan_Date values (011001, 011, '2020-06-01', '2020-06-01', 10, 400, 0, 0);
insert into Plan_Date values (011002, 011, '2020-03-01', '2020-03-01', 0, 400, 0, 0);
insert into Plan_Date values (011003, 011, '2020-04-01', '2020-04-01', 10, 400, 0, 0);

insert into Plan_Date values (012001, 012, '2020-05-01', '2020-05-01', 10, 450, 0, 0);
insert into Plan_Date values (012002, 012, '2020-06-01', '2020-06-01', 0, 450, 0, 0);

insert into Plan_Date values (013001, 013, '2020-03-01', '2020-03-04', 10, 900, 0, 0);
insert into Plan_Date values (013002, 013, '2020-05-01', '2020-05-04', 40, 900, 0, 0);
insert into Plan_Date values (013003, 013, '2020-05-01', '2020-05-04', 30, 1000, 0, 0);
insert into Plan_Date values (013004, 013, '2020-06-01', '2020-06-04', 7, 1000, 0, 0);

insert into Plan_Date values (014001, 014, '2020-04-01', '2020-04-15', 15, 2000, 0, 0);
insert into Plan_Date values (014002, 014, '2020-03-01', '2020-03-15', 20, 2000, 0, 0);
insert into Plan_Date values (014003, 014, '2020-05-01', '2020-05-15', 20, 1800, 0, 0);
insert into Plan_Date values (014004, 014, '2020-05-01', '2020-05-15', 20, 1800, 0, 0);
insert into Plan_Date values (014005, 014, '2020-06-01', '2020-06-15', 20, 1800, 0, 0);

insert into Plan_Date values (015001, 015, '2020-04-01', '2020-04-15', 0, 2000, 0, 0);
insert into Plan_Date values (015002, 015, '2020-03-01', '2020-03-15', 5, 2000, 0, 0);
insert into Plan_Date values (015003, 015, '2020-05-01', '2020-05-15', 10, 1800, 0, 0);

insert into Plan_Date values (016001, 016, '2020-04-01', '2020-04-02', 15, 700, 0, 0);
insert into Plan_Date values (016002, 016, '2020-03-01', '2020-03-02', 5, 700, 0, 0);
insert into Plan_Date values (016003, 016, '2020-05-01', '2020-05-02', 10, 700, 0, 0);

insert into Plan_Date values (017001, 017, '2020-06-01', '2020-06-02', 0, 600, 0, 0);
insert into Plan_Date values (017002, 017, '2020-03-01', '2020-03-02', 15, 500, 0, 0);
insert into Plan_Date values (017003, 017, '2020-04-01', '2020-04-02', 10, 500, 0, 0);
insert into Plan_Date values (017004, 017, '2020-04-21', '2020-03-02', 15, 500, 0, 0);


drop table if exists Hotel;
create table Hotel
	(
		hotelID int,
		hotelName varchar(50),
		destinationCity varchar(50),
		room varchar(20),
		inDateAvailable DATE,
		outDateAvailable DATE,
		remainingRoom int,
		price int
	);


insert into Hotel values (1, 'The Jefferson', 'Beijing', 'Single Room', '2020-03-11', '2020-04-03', 7, 600);
insert into Hotel values (1, 'The Jefferson', 'Beijing', 'Single Room', '2020-04-05', '2020-04-12', 20, 600);
insert into Hotel values (1, 'The Jefferson', 'Beijing', 'Single Room', '2020-04-15', '2020-04-30', 10, 600);
insert into Hotel values (1, 'The Jefferson', 'Beijing', 'Single Room', '2020-03-01', '2020-05-03', 10, 600);
insert into Hotel values (1, 'The Jefferson', 'Beijing', 'Double Room', '2020-03-01', '2020-03-21', 10, 600);
insert into Hotel values (1, 'The Jefferson', 'Beijing', 'Double Room', '2020-03-22', '2020-04-03', 10, 600);
insert into Hotel values (1, 'The Jefferson', 'Beijing', 'Double Room', '2020-04-07', '2020-05-03', 10, 600);
insert into Hotel values (1, 'The Jefferson', 'Beijing', 'Suite Room', '2020-03-01', '2020-03-03', 2, 2600);
insert into Hotel values (1, 'The Jefferson', 'Beijing', 'Suite Room', '2020-04-01', '2020-05-03', 5, 2200);
insert into Hotel values (2, 'Wanda Vista', 'Beijing', 'Single Room', '2020-03-11', '2020-04-03', 7, 600);
insert into Hotel values (2, 'Wanda Vista', 'Beijing', 'Single Room', '2020-04-05', '2020-04-12', 20, 600);
insert into Hotel values (2, 'Wanda Vista', 'Beijing', 'Single Room', '2020-04-15', '2020-04-30', 10, 600);
insert into Hotel values (2, 'Wanda Vista', 'Beijing', 'Single Room', '2020-03-01', '2020-05-03', 10, 600);
insert into Hotel values (2, 'Wanda Vista', 'Beijing', 'Double Room', '2020-03-01', '2020-03-21', 10, 600);
insert into Hotel values (2, 'Wanda Vista', 'Beijing', 'Double Room', '2020-03-22', '2020-04-03', 10, 600);
insert into Hotel values (2, 'Wanda Vista', 'Beijing', 'Double Room', '2020-04-07', '2020-05-03', 10, 600);
insert into Hotel values (2, 'Wanda Vista', 'Beijing', 'Suite Room', '2020-03-01', '2020-03-03', 2, 2600);
insert into Hotel values (2, 'Wanda Vista', 'Beijing', 'Suite Room', '2020-04-01', '2020-05-03', 5, 2200);
insert into Hotel values (3, 'Mandarin Oriental', 'Beijing', 'Single Room', '2020-03-11', '2020-04-03', 7, 600);
insert into Hotel values (3, 'Mandarin Oriental', 'Beijing', 'Single Room', '2020-04-05', '2020-04-12', 20, 600);
insert into Hotel values (3, 'Mandarin Oriental', 'Beijing', 'Single Room', '2020-04-15', '2020-04-30', 10, 600);
insert into Hotel values (3, 'Mandarin Oriental', 'Beijing', 'Single Room', '2020-03-01', '2020-05-03', 10, 600);
insert into Hotel values (3, 'Mandarin Oriental', 'Beijing', 'Double Room', '2020-03-01', '2020-03-21', 10, 600);
insert into Hotel values (3, 'Mandarin Oriental', 'Beijing', 'Double Room', '2020-03-22', '2020-04-03', 10, 600);
insert into Hotel values (3, 'Mandarin Oriental', 'Beijing', 'Double Room', '2020-04-07', '2020-05-03', 10, 600);
insert into Hotel values (3, 'Mandarin Oriental', 'Beijing', 'Suite Room', '2020-03-01', '2020-03-03', 2, 2600);
insert into Hotel values (3, 'Mandarin Oriental', 'Beijing', 'Suite Room', '2020-04-01', '2020-05-03', 5, 2200);
insert into Hotel values (4, 'Mandarin Oriental', 'Singapore', 'Single Room', '2020-03-11', '2020-04-03', 7, 600);
insert into Hotel values (4, 'Mandarin Oriental', 'Singapore', 'Single Room', '2020-04-05', '2020-04-12', 20, 600);
insert into Hotel values (4, 'Mandarin Oriental', 'Singapore', 'Single Room', '2020-04-15', '2020-04-30', 10, 600);
insert into Hotel values (4, 'Mandarin Oriental', 'Singapore', 'Single Room', '2020-03-01', '2020-05-03', 10, 600);
insert into Hotel values (4, 'Mandarin Oriental', 'Singapore', 'Double Room', '2020-03-01', '2020-03-21', 10, 600);
insert into Hotel values (4, 'Mandarin Oriental', 'Singapore', 'Double Room', '2020-03-22', '2020-04-03', 10, 600);
insert into Hotel values (4, 'Mandarin Oriental', 'Singapore', 'Double Room', '2020-04-07', '2020-05-03', 10, 600);
insert into Hotel values (4, 'Mandarin Oriental', 'Singapore', 'Suite Room', '2020-03-01', '2020-03-03', 2, 2600);
insert into Hotel values (4, 'Mandarin Oriental', 'Singapore', 'Suite Room', '2020-04-01', '2020-05-03', 5, 2200);
insert into Hotel values (5, 'Garden Inn', 'Singapore', 'Single Room', '2020-03-11', '2020-04-03', 7, 600);
insert into Hotel values (5, 'Garden Inn', 'Singapore', 'Single Room', '2020-04-05', '2020-04-12', 20, 600);
insert into Hotel values (5, 'Garden Inn', 'Singapore', 'Single Room', '2020-04-15', '2020-04-30', 10, 600);
insert into Hotel values (5, 'Garden Inn', 'Singapore', 'Single Room', '2020-03-01', '2020-05-03', 10, 600);
insert into Hotel values (5, 'Garden Inn', 'Singapore', 'Double Room', '2020-03-01', '2020-03-21', 10, 600);
insert into Hotel values (5, 'Garden Inn', 'Singapore', 'Double Room', '2020-03-22', '2020-04-03', 10, 600);
insert into Hotel values (5, 'Garden Inn', 'Singapore', 'Double Room', '2020-04-07', '2020-05-03', 10, 600);
insert into Hotel values (5, 'Garden Inn', 'Singapore', 'Suite Room', '2020-03-01', '2020-03-03', 2, 2600);
insert into Hotel values (5, 'Garden Inn', 'Singapore', 'Suite Room', '2020-04-01', '2020-05-03', 5, 2200);
insert into Hotel values (6, 'Four Seansons Resort', 'Shanghai', 'Single Room', '2020-03-11', '2020-04-03', 7, 600);
insert into Hotel values (6, 'Four Seansons Resort', 'Shanghai', 'Single Room', '2020-04-05', '2020-04-12', 20, 600);
insert into Hotel values (6, 'Four Seansons Resort', 'Shanghai', 'Single Room', '2020-04-15', '2020-04-30', 10, 600);
insert into Hotel values (6, 'Four Seansons Resort', 'Shanghai', 'Single Room', '2020-03-01', '2020-05-03', 10, 600);
insert into Hotel values (6, 'Four Seansons Resort', 'Shanghai', 'Double Room', '2020-03-01', '2020-03-21', 10, 600);
insert into Hotel values (6, 'Four Seansons Resort', 'Shanghai', 'Double Room', '2020-03-22', '2020-04-03', 10, 600);
insert into Hotel values (6, 'Four Seansons Resort', 'Shanghai', 'Double Room', '2020-04-07', '2020-05-03', 10, 600);
insert into Hotel values (6, 'Four Seansons Resort', 'Shanghai', 'Suite Room', '2020-03-01', '2020-03-03', 2, 2600);
insert into Hotel values (6, 'Four Seansons Resort', 'Shanghai', 'Suite Room', '2020-04-01', '2020-05-03', 5, 2200);
insert into Hotel values (7, 'Knights Inn', 'Shanghai', 'Single Room', '2020-03-11', '2020-04-03', 7, 600);
insert into Hotel values (7, 'Knights Inn', 'Shanghai', 'Single Room', '2020-04-05', '2020-04-12', 20, 600);
insert into Hotel values (7, 'Knights Inn', 'Shanghai', 'Single Room', '2020-04-15', '2020-04-30', 10, 600);
insert into Hotel values (7, 'Knights Inn', 'Shanghai', 'Single Room', '2020-03-01', '2020-05-03', 10, 600);
insert into Hotel values (7, 'Knights Inn', 'Shanghai', 'Double Room', '2020-03-01', '2020-03-21', 10, 600);
insert into Hotel values (7, 'Knights Inn', 'Shanghai', 'Double Room', '2020-03-22', '2020-04-03', 10, 600);
insert into Hotel values (7, 'Knights Inn', 'Shanghai', 'Double Room', '2020-04-07', '2020-05-03', 10, 600);
insert into Hotel values (7, 'Knights Inn', 'Shanghai', 'Suite Room', '2020-03-01', '2020-03-03', 2, 2600);
insert into Hotel values (7, 'Knights Inn', 'Shanghai', 'Suite Room', '2020-04-01', '2020-05-03', 5, 2200);
insert into Hotel values (8, 'Astro Resort', 'London', 'Single Room', '2020-03-11', '2020-04-03', 8, 600);
insert into Hotel values (8, 'Astro Resort', 'London', 'Single Room', '2020-04-05', '2020-04-12', 20, 600);
insert into Hotel values (8, 'Astro Resort', 'London', 'Single Room', '2020-04-15', '2020-04-30', 10, 600);
insert into Hotel values (8, 'Astro Resort', 'London', 'Single Room', '2020-03-01', '2020-05-03', 10, 600);
insert into Hotel values (8, 'Astro Resort', 'London', 'Double Room', '2020-03-01', '2020-03-21', 10, 600);
insert into Hotel values (8, 'Astro Resort', 'London', 'Double Room', '2020-03-22', '2020-04-03', 10, 600);
insert into Hotel values (8, 'Astro Resort', 'London', 'Double Room', '2020-04-07', '2020-05-03', 10, 600);
insert into Hotel values (8, 'Astro Resort', 'London', 'Suite Room', '2020-03-01', '2020-03-03', 2, 2600);
insert into Hotel values (8, 'Astro Resort', 'London', 'Suite Room', '2020-04-01', '2020-05-03', 5, 2200);
insert into Hotel values (9, 'Astro Resort', 'Paris', 'Single Room', '2020-03-11', '2020-04-03', 9, 600);
insert into Hotel values (9, 'Astro Resort', 'Paris', 'Single Room', '2020-04-05', '2020-04-12', 20, 600);
insert into Hotel values (9, 'Astro Resort', 'Paris', 'Single Room', '2020-04-15', '2020-04-30', 10, 600);
insert into Hotel values (9, 'Astro Resort', 'Paris', 'Single Room', '2020-03-01', '2020-05-03', 10, 600);
insert into Hotel values (9, 'Astro Resort', 'Paris', 'Double Room', '2020-03-01', '2020-03-21', 10, 600);
insert into Hotel values (9, 'Astro Resort', 'Paris', 'Double Room', '2020-03-22', '2020-04-03', 10, 600);
insert into Hotel values (9, 'Astro Resort', 'Paris', 'Double Room', '2020-04-07', '2020-05-03', 10, 600);
insert into Hotel values (9, 'Astro Resort', 'Paris', 'Suite Room', '2020-03-01', '2020-03-03', 2, 2600);
insert into Hotel values (9, 'Astro Resort', 'Paris', 'Suite Room', '2020-04-01', '2020-05-03', 5, 2200);
insert into Hotel values (10, 'The Enchanted Knights', 'Tokyo', 'Single Room', '2020-03-11', '2020-04-03', 10, 600);
insert into Hotel values (10, 'The Enchanted Knights', 'Tokyo', 'Single Room', '2020-04-05', '2020-04-12', 20, 600);
insert into Hotel values (10, 'The Enchanted Knights', 'Tokyo', 'Single Room', '2020-04-15', '2020-04-30', 10, 600);
insert into Hotel values (10, 'The Enchanted Knights', 'Tokyo', 'Single Room', '2020-03-01', '2020-05-03', 10, 600);
insert into Hotel values (10, 'The Enchanted Knights', 'Tokyo', 'Double Room', '2020-03-01', '2020-03-21', 10, 600);
insert into Hotel values (10, 'The Enchanted Knights', 'Tokyo', 'Double Room', '2020-03-22', '2020-04-03', 10, 600);
insert into Hotel values (10, 'The Enchanted Knights', 'Tokyo', 'Double Room', '2020-04-07', '2020-05-03', 10, 600);
insert into Hotel values (10, 'The Enchanted Knights', 'Tokyo', 'Suite Room', '2020-03-01', '2020-03-03', 2, 2600);
insert into Hotel values (10, 'The Enchanted Knights', 'Tokyo', 'Suite Room', '2020-04-01', '2020-05-03', 5, 2200);
insert into Hotel values (11, 'Garden Inn', 'Tokyo', 'Single Room', '2020-03-11', '2020-04-03', 11, 600);
insert into Hotel values (11, 'Garden Inn', 'Tokyo', 'Single Room', '2020-04-05', '2020-04-12', 20, 600);
insert into Hotel values (11, 'Garden Inn', 'Tokyo', 'Single Room', '2020-04-15', '2020-04-30', 11, 600);
insert into Hotel values (11, 'Garden Inn', 'Tokyo', 'Single Room', '2020-03-01', '2020-05-03', 11, 600);
insert into Hotel values (11, 'Garden Inn', 'Tokyo', 'Double Room', '2020-03-01', '2020-03-21', 11, 600);
insert into Hotel values (11, 'Garden Inn', 'Tokyo', 'Double Room', '2020-03-22', '2020-04-03', 11, 600);
insert into Hotel values (11, 'Garden Inn', 'Tokyo', 'Double Room', '2020-04-07', '2020-05-03', 11, 600);
insert into Hotel values (11, 'Garden Inn', 'Tokyo', 'Suite Room', '2020-03-01', '2020-03-03', 2, 2600);
insert into Hotel values (11, 'Garden Inn', 'Tokyo', 'Suite Room', '2020-04-01', '2020-05-03', 5, 2200);
insert into Hotel values (12, 'The Enchanted Knights', 'New York', 'Single Room', '2020-03-11', '2020-04-03', 12, 600);
insert into Hotel values (12, 'The Enchanted Knights', 'New York', 'Single Room', '2020-04-05', '2020-04-12', 20, 600);
insert into Hotel values (12, 'The Enchanted Knights', 'New York', 'Single Room', '2020-04-15', '2020-04-30', 12, 600);
insert into Hotel values (12, 'The Enchanted Knights', 'New York', 'Single Room', '2020-03-01', '2020-05-03', 12, 600);
insert into Hotel values (12, 'The Enchanted Knights', 'New York', 'Double Room', '2020-03-01', '2020-03-21', 12, 600);
insert into Hotel values (12, 'The Enchanted Knights', 'New York', 'Double Room', '2020-03-22', '2020-04-03', 12, 600);
insert into Hotel values (12, 'The Enchanted Knights', 'New York', 'Double Room', '2020-04-07', '2020-05-03', 12, 600);
insert into Hotel values (12, 'The Enchanted Knights', 'New York', 'Suite Room', '2020-03-01', '2020-03-03', 2, 2600);
insert into Hotel values (12, 'The Enchanted Knights', 'New York', 'Suite Room', '2020-04-01', '2020-05-03', 5, 2200);
insert into Hotel values (13, 'The Enchanted Knights', 'Paris', 'Single Room', '2020-03-11', '2020-04-03', 13, 600);
insert into Hotel values (13, 'The Enchanted Knights', 'Paris', 'Single Room', '2020-04-05', '2020-04-12', 20, 600);
insert into Hotel values (13, 'The Enchanted Knights', 'Paris', 'Single Room', '2020-04-15', '2020-04-30', 13, 600);
insert into Hotel values (13, 'The Enchanted Knights', 'Paris', 'Single Room', '2020-03-01', '2020-05-03', 13, 600);
insert into Hotel values (13, 'The Enchanted Knights', 'Paris', 'Double Room', '2020-03-01', '2020-03-21', 13, 600);
insert into Hotel values (13, 'The Enchanted Knights', 'Paris', 'Double Room', '2020-03-22', '2020-04-03', 13, 600);
insert into Hotel values (13, 'The Enchanted Knights', 'Paris', 'Double Room', '2020-04-07', '2020-05-03', 13, 600);
insert into Hotel values (13, 'The Enchanted Knights', 'Paris', 'Suite Room', '2020-03-01', '2020-03-03', 2, 2600);
insert into Hotel values (13, 'The Enchanted Knights', 'Paris', 'Suite Room', '2020-04-01', '2020-05-03', 5, 2200);
insert into Hotel values (14, 'The Enchanted Knights', 'Paris', 'Single Room', '2020-03-11', '2020-04-03', 14, 600);
insert into Hotel values (14, 'The Enchanted Knights', 'Paris', 'Single Room', '2020-04-05', '2020-04-12', 20, 600);
insert into Hotel values (14, 'The Enchanted Knights', 'Paris', 'Single Room', '2020-04-15', '2020-04-30', 14, 600);
insert into Hotel values (14, 'The Harbor Hotel', 'Paris', 'Single Room', '2020-03-01', '2020-05-03', 14, 600);
insert into Hotel values (14, 'The Harbor Hotel', 'Paris', 'Double Room', '2020-03-01', '2020-03-21', 14, 600);
insert into Hotel values (14, 'The Harbor Hotel', 'Paris', 'Double Room', '2020-03-22', '2020-04-03', 14, 600);
insert into Hotel values (14, 'The Harbor Hotel', 'Paris', 'Double Room', '2020-04-07', '2020-05-03', 14, 600);
insert into Hotel values (14, 'The Harbor Hotel', 'Paris', 'Suite Room Room', '2020-03-01', '2020-03-03', 2, 2600);
insert into Hotel values (14, 'The Harbor Hotel', 'Paris', 'Suite Room', '2020-04-01', '2020-05-03', 5, 2200);