

Create database movies;
-- Movie
create table movie(mov_id int primary key, Mov_tittle varchar(200),
 mov_year int, mov_time int,
mov_lan varchar(50), mov_dt_rel date, 
 mov_rel_Country varchar(100));
 
 insert into movie value(901,"Vertigo",1958,128, "English", "1958-08-24","UK");
 insert into movie value(902, "The Innnocents", 1961, 100, "English","1962-02-19","SW");
 insert into movie value(903, "Lawrence of Arabia",1962,216,"English","1962-12-11","UK");
 insert into movie value(904, "The Deer Hunter", 1978, 183,"English","1979-03-08","UK");
 insert into movie value(905, "Amadeus", 1984,160,"English","1985-01-07","UK");
insert into movie value(906,"Blade Runner",1982,117,"English","1982-09-09","UK");
insert into movie(mov_id,Mov_tittle,mov_year,mov_time,mov_lan,mov_rel_Country)
 value(907,"Eyes Wide Shut",1999,159,"English", "UK");
insert into movie value(908,"The Usual Suppect",1995,106,"English","1995-08-25","UK");
insert into movie value(909,"Chinatown",1974,130,"English","1974-08-09","UK");
insert into movie value(910,"Boogie NIghts",1997,155,"English","1998-02-16","UK");
insert into movie value(911,"Annie Hall", 1977,93,"English","1977-04-20","USA");
insert into movie value(912,"Princess Mononoke",1997,134,"Japanese","2001-10-19","UK");
insert into movie value(913,"The Shawshank Redemption",1994,142,"English","1995-02-17","UK");
insert into movie(mov_id,mov_tittle,mov_year,mov_time,mov_lan,mov_rel_Country)
 value(914,"American Beauty",1999,122,"English","UK");
insert into movie value(915,"Titanic",1997,194,"English","1998-01-23","UK");
insert into movie value(916,"Good Will Hunting",1997,126,"English","1998-06-03","UK");
insert into movie value(917,"Deliverance",1972,109,"English","1982-10-05","UK");
insert into movie value(918,"Trainspotting",1996,94,"English","1996-02-23","UK");
insert into movie value(919,"The Prestige",2006,130,"English","2006-11-10","UK");
insert into movie(mov_id,mov_tittle,mov_year,mov_time,mov_lan,mov_rel_Country)
 value(920, "Donnie Darko",2001,113,"English","UK");
insert into movie value(921,"Slumdog Millionaire",2008,120,"English","2009-01-09","UK");
insert into movie value(922,"Alleins",1986,137,"English","1986-08-29","UK");
insert into movie value(923,"Beyond the Sea",2004,120,"English","2004-11-26","UK");
insert into movie value(924,"Avatar","2009",162,"English","2009-12-17","UK");
insert into movie value(926,"Seven Samurai",1954,207,"Japanese","1954-04-26","JP");
insert into movie value(927,"Spirited Away",2001,125,"Japanses","2003-09-12","UK");
insert into movie value(928,"Back to the Future",1985,116,"English","1985-12-04","UK");
insert into movie Value(925,"Braveheart",1995,178,"English","1995-09-08","UK");

-- review table
create table reviewer(rev_id int primary key, rev_name varchar(100));
insert into reviewer value(9001,"Right Sock");
insert into reviewer value(9002,"Jack Malvern");
insert into reviewer value(9003,"Flagrant Baronessa");
insert into reviewer value(9004,"Alac shaw");
insert into reviewer(rev_id) value(9005);
insert into reviewer value(9006, "Victor Woeltjen");
insert into reviewer value(9007,"Simon Woeljen");
insert into reviewer value(9008, "Neal Monks");
insert into reviewer value(9009,"Pual Monks");
insert into reviewer value(9010,"Mike Salvati");
insert into reviewer(rev_id) value(9011);
insert into reviewer value(9012,"Wesley S. Walker");
insert into reviewer value(9013,"Sasha Goldshtein");
insert into reviewer value(9014,"Josh Caetes");
insert into reviewer value(9015,"Krug Stillo");
insert into reviewer value(9016,"Scott LeBrun");
insert into reviewer value(9017,"Hennah Steele");
insert into reviewer value(9018,"Vincent Cadena");
insert into reviewer value(9019,"Brandt Sponseller");
insert into reviewer value(9020,"Richard Adams");

-- rating table 
create table rating(mov_id int,  rev_id int , rev_stars decimal(5,2), num_of_rating int,
foreign key (mov_id) references movie(mov_id), foreign key (rev_id) references reviewer(rev_id));

insert into rating value(901, 9001, 8.40,263575);
insert into rating value(902,9002, 7.90,20207);
insert into rating value(903,9003,8.30,202778);
insert into rating value(906,9005,8.20,484746);
insert into rating (mov_id,rev_id, rev_stars) value(924,9006,7.30);
insert into rating value(908, 9007,8.60,779489);
insert into rating(mov_id,rev_id,num_of_rating) value(909, 9008, 227235);
insert into rating value(910,9009, 3.00, 195961);
insert into rating value(911,9010,8.10,203875);
insert into rating(mov_id,rev_id,rev_stars) value(912,9011,8.40);
insert into rating value(914, 9013,7.00,862618);
insert into rating value(915,9001,7.70,830095);
insert into rating value(916,9014,4.00,642132);
insert into rating value(925,9015,7.70,81328);
insert into rating(mov_id,rev_id,num_of_rating) value(918,9016,580301);
insert into rating value(920,9017,8.10,609451);
insert into rating value(921,9018,8.00,667758);
insert into rating value(922,9019,8.40,511613);
insert into rating value(923,9020,6.70,13091);

-- Actor Table
create table actor(ct_id int primary key, act_fname varchar(50),
act_lname varchar(50), gender enum("M", "F"));

insert into actor value(101,"James", "Stewart", "M");
insert into actor value(102, "Deborah","Kerr","F");
insert into actor value(103,"Peter", "OToole","M");
insert into actor value(104,"Robert","De Niro","M");
insert into actor value(105, "F.Murray", "Abraham", "M");
insert into actor value(106,"Harrison","Ford","M");
insert into actor value(107,"Nicole","Kidman","F");
insert into actor value(108,"Stephen", "Baldwin","M");
insert into actor value(109,"Jack","NIcholoson","M");
insert into actor value(110, "Mark", "Wahleberg","M");
insert into actor value(111, "Woody", "Allen","M");
insert into actor value(112, "Claire", "Danes","F");
insert into actor value(113, "Tim", "Robbins", "M");
insert into actor value(114, "Kevin", "Spacey","M");
insert into actor value(115,"Kate", "Winslet", "F");
insert into actor value(116, "Robin", "Williams", "M");
insert into actor value(117,"Jon","Voilght","M");
insert into actor value(118, "Ewan","McGregor","M");
insert into actor value(119,"Christian", "Bale", "M");
insert into actor value(120, "Maggie","Gyllenhaal","F");
insert into actor value(121,"Dev","Patel", "M");
insert into actor value(122,"Sigourney","Weaver","F");
insert into actor value(123,"David","Aston","M");
insert into actor value(124,"Ali","Astin","F");

-- Movie Cast
create table movie_cast(act_id int, mov_id int, role text,
foreign key(act_id) references actor(ct_id), 
foreign key (mov_id) references movie(mov_id) );


insert into movie_cast value(101,901,"Jonh Scottie Ferguson");
insert into movie_cast value(102,902,"Miss Giddens");
insert into movie_cast value(103,903, "T.E. Lawrence");
insert into movie_cast value(104,904,"Michael");
insert into movie_cast value(105,905,"Antonio Salieri");
insert into movie_cast value(106, 906, "Rick Deckard");
insert into movie_cast value(107, 907, "Alice harford");
insert into movie_cast value(108, 908,"McManus");
insert into movie_cast value(110, 910, "Eddie Addams");
insert into movie_cast value(111,911, "Alvy Singer");
insert into movie_cast value(112, 912, "San");
insert into movie_cast value(113, 913, "Andy Dufresne");
insert into movie_cast value(114, 914, "Lester Burnham");
insert into movie_cast value(115, 915, "Rose DeWitt Bukater");
insert into movie_cast value(116, 916, "Sean maguire");
insert into movie_cast value(117, 917, "ED");
insert into movie_cast value(118, 918, "Renton");
insert into movie_cast value(120, 920, "Elizabeth Darko");
insert into movie_cast value(121, 921, "Older Jamal");
insert into movie_cast value(122, 922,"Ripley");
insert into movie_cast value(114, 923, "Bobby Darin");
insert into movie_cast value(109, 909, "J.J. Gittes");
insert into movie_cast value(119, 919, "Alfred Borden");
-- Director 
create table director(dir_id int primary key, dirfname varchar(50), dir_lname
varchar(50));

insert into director value( 201, "Alfred", "Hitchcock");
insert into director value(202, "Jack", "Clayton");
insert into director value(203, "David", "Lean");
insert into director value(204, "Michael","Ciminno");
insert into director value (205,"Milos", "Forman");
insert into director value(206, "Ridley", "Scott");
insert into director value(207, "Stanley", "Kubrick");
insert into director value(208, "Bryan", "Singer");
insert into director value(209, "Roman", "Polanski");
insert into director value(210, "Paul", "Thomas Andreson");
insert into director value(211, "Woody", "Allen");
insert into director value(212, "Hayao","Miyazaki");
insert into director value(213,"Fraank", "Darabont");
insert into director value(214, "Sam", "Mendes");
insert into director value(215, "James", "Cameron");
insert into director value(216,"Gus","Van Sant");
insert into director value(217, "John", "Boorman");
insert into director value(218, "Danny", "Boyle");
insert into director value(219, "Christopher", "Nolan");
insert into director value(220, "Richard", "Kelly");
insert into director value(221, "Kevin", "Spacey");
insert into director value(222,"Andrei", "Tarkovsky");
insert into director value(223, "Peter", "Jackson");

-- movie direction
create table movie_direction( dir_id int, mov_id int,
foreign key (dir_id) references director(dir_id), foreign key
(mov_id) references movie(mov_id) );

insert into movie_direction value(201, 901);
insert into movie_direction value(202,902);
insert into movie_direction value(203, 903);
insert into movie_direction value(204, 904);
insert into movie_direction value(205, 905);
insert into movie_direction value(206, 906);
insert into movie_direction value(207, 907);
insert into movie_direction value(208, 908);
insert into movie_direction value(209, 909);
insert into movie_direction value(210, 910);
insert into movie_direction value(211, 911);
insert into movie_direction value(212, 912);
insert into movie_direction value(213, 913);
insert into movie_direction value(214, 914);
insert into movie_direction value(215,915);
insert into movie_direction value(216,916);
insert into movie_direction value(217,917);
insert into movie_direction value(218, 918);
insert into movie_direction value(219, 919);
insert into movie_direction value(220, 920);
insert into movie_direction value(218, 921);
insert into movie_direction value(215, 922);
insert into movie_direction value(221,923);

select*From movie;
select*from movie_cast;
select*from director;
select*from actor;
select*from movie_direction;
select*from rating;
select*from reviewer
