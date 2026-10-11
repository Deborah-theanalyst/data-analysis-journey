create database Student_DB;

create table Students(
StudentID int primary key auto_increment,
StudentName varchar (50),
Department varchar (50),
Level varchar (50)
);

insert into Students (StudentName, Department, Level) values
("Ada Johnson", "Economics", "100"),
("Tunde Bello", "Accounting", "200"),
("Grace Williams", "Computer Science", "300"),
("David Okafor", "Economics", "400"),
("Sarah Adeyemi", "Accounting", "200");