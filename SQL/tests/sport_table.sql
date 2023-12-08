create table sport (
	id INT unique not null auto_increment primary key,
	athlete_name VARCHAR(50) not null,
	age INT not null,
	gender VARCHAR(50),
	nationality VARCHAR(50),
	sport VARCHAR(10) not null,
	ranking INT
);
insert into sport (athlete_name, age, gender, nationality, sport, ranking, id) values ('Waite Edgeson', 21, 'Male', 'Honduras', 'swimming', 58, 1);
insert into sport (athlete_name, age, gender, nationality, sport, ranking, id) values ('Paten Consadine', 32, 'Male', 'Belarus', 'swimming', 82, 2);
insert into sport (athlete_name, age, gender, nationality, sport, ranking, id) values ('Tiebout Bottrill', 26, 'Male', 'Portugal', 'tennis', 45, 3);
insert into sport (athlete_name, age, gender, nationality, sport, ranking, id) values ('Maury Blackster', 28, 'Male', 'Venezuela', 'football', 8, 4);
insert into sport (athlete_name, age, gender, nationality, sport, ranking, id) values ('Marji Whyler', 38, 'Female', 'Albania', 'tennis', 92, 5);
insert into sport (athlete_name, age, gender, nationality, sport, ranking, id) values ('Marie-ann McElvogue', 19, 'Female', 'China', 'tennis', 43, 6);
insert into sport (athlete_name, age, gender, nationality, sport, ranking, id) values ('Kylie Leith', 36, 'Female', 'Guinea', 'tennis', 89, 7);
insert into sport (athlete_name, age, gender, nationality, sport, ranking, id) values ('Jobi McComiskie', 32, 'Female', 'Japan', 'football', 24, 8);
insert into sport (athlete_name, age, gender, nationality, sport, ranking, id) values ('Moise Prinne', 31, 'Polygender', 'Philippines', 'basketball', 92, 9);
insert into sport (athlete_name, age, gender, nationality, sport, ranking, id) values ('Jeannette Feeham', 22, 'Female', 'Ukraine', 'swimming', 65, 10);

show columns from sport;

select * from sport;

drop table sport;
truncate sport;

delete from sport;

delete from sport where ranking>90;

