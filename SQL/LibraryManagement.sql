CREATE DATABASE library_management;
SHOW DATABASES;
USE library_management;

CREATE TABLE staff_register(
id INT AUTO_INCREMENT,
name VARCHAR (80),
designation VARCHAR (80),
department VARCHAR (80),
PRIMARY KEY (id)
);

INSERT INTO staff_register (name,designation,department) VALUES
('tamanna','librarians','history'),
('pranty','library_technicians','history'),
('noor','library_assistants','english'),
('adib','public_relations_specialists','managment'),
('aurpa','computer_support_specialists','science'),
('rodushi','janitors','management');





CREATE TABLE student_register (
Id INT AUTO_INCREMENT,
name VARCHAR (80),
gender VARCHAR (15) ,
address VARCHAR (80),
PRIMARY KEY (Id)
);

INSERT INTO student_register (name,gender,address) VALUES
('fahim','male','mirpur'),
('sabiha','female','dhanmondi'),
('auny','male','kolabagan'),
('sabbir','male','proshika'),
('anamika','female','mohammadpur'),
('sarkar','male','shaymoli');






CREATE TABLE issue_master (
roll INT (15),
Id INT AUTO_INCREMENT,
book_typr VARCHAR (15),
book_title VARCHAR (50),
PRIMARY KEY (Id)
);

INSERT INTO issue_master (roll,book_typr,book_title) VALUES
(13227,'novels','lolita'),
(13224,'science_fiction','borne'),
(12334,'histry','sapiens'),
(16228,'comic','hulk'),
(15663,'science_fiction','uvhochor_manush'),
(76884,'novels','those_days');



SELECT *FROM student_register;

SELECT *FROM issue_master;



SELECT  student_register.Id,roll,name,gender,address,book_typr,book_title
FROM student_register,issue_master
WHERE  student_register.Id=issue_master.Id;



SELECT COUNT (roll) FROM issue_master;