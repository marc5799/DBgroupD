create database test;
use test;

CREATE TABLE students (
	id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(255) NOT NULL,
    last_name VARCHAR(255) NOT NULL
);

CREATE TABLE professors (
	id INT AUTO_INCREMENT PRIMARY KEY,
    prof_first_name VARCHAR(255) NOT NULL,
    prof_last_name VARCHAR(255) NOT NULL
);

CREATE TABLE sections (
	id INT AUTO_INCREMENT PRIMARY KEY,
    subject VARCHAR(255) NOT NULL,
    prof_id INT,
    FOREIGN KEY (prof_id)
        REFERENCES professors(id)
);

CREATE TABLE activities (
	id INT AUTO_INCREMENT PRIMARY KEY,
    activity_name VARCHAR(255) NOT NULL,
    activity_grade INT
);

CREATE TABLE stud_sec_junc (
	id INT AUTO_INCREMENT PRIMARY KEY,
	student_id INT,
    FOREIGN KEY (student_id)
        REFERENCES students(id),
    section_id INT,
    FOREIGN KEY (section_id)
        REFERENCES sections(id)    
);

CREATE TABLE final_grades (
	id INT AUTO_INCREMENT PRIMARY KEY,
    grade INT,
    student_sec_junc_id INT,
    FOREIGN KEY (student_sec_junc_id)
        REFERENCES stud_sec_junc(id)
);

CREATE TABLE stud_act_junc (
	id INT AUTO_INCREMENT PRIMARY KEY,
	student_id INT,
    FOREIGN KEY (student_id)
        REFERENCES students(id),
    activity_id INT,
    FOREIGN KEY (activity_id)
        REFERENCES activities(id)
);

INSERT INTO students(first_name, last_name)
VALUES
	('Harper', 'Garza'),
	('Stephen', 'Mcfadden'),
	('Kareem', 'Keith'),
	('Uma', 'Mills'),
	('Lana', 'Brady'),
	('Hall', 'Delacruz'),
	('Linda', 'Payne'),
	('Chloe', 'Stokes'),
	('Heather', 'Rogers'),
	('Jason', 'Flowers'),
	('Timon', 'Hayden'),
	('Bree', 'Tran'),
	('Rudyard', 'Monroe'),
	('Wylie', 'Oneill'),
	('Quinn', 'Miles'),
	('Kitra', 'Lee'),
	('Xyla', 'Hutchinson'),
	('Kadeem', 'Carver'),
	('Ishmael', 'Welch'),
	('Lee', 'Sanford'),
	('Allegra', 'Warren'),
	('Elaine', 'Hess'),
	('Channing', 'Blackwell'),
	('Zachery', 'Sargent'),
	('Baker', 'Park'),
	('Alyssa', 'Hicks'),
	('Dakota', 'Hooper'),
	('Clio', 'Roth'),
	('Mannix', 'Wilkins'),
	('Laurel', 'Cummings'),
	('Jocelyn', 'Delacruz'),
	('Jordan', 'Brewer'),
	('Ariel', 'Larsen'),
	('Ingrid', 'Jenkins'),
	('Alice', 'Webster'),
	('Macey', 'Savage'),
	('Daria', 'Snow'),
	('Hilda', 'Woods'),
	('Kalia', 'Young'),
	('Gail', 'Irwin'),
	('Kibo', 'Golden'),
	('Carla', 'Dudley'),
	('Logan', 'Sanders'),
	('Harper', 'Haley'),
	('Kelly', 'Ellis'),
	('Ann', 'Santiago'),
	('Ronan', 'Whitney'),
	('Shelly', 'Mcclain'),
	('Indira', 'Mcgee'),
	('Lars', 'Buchanan'),
	('Lev', 'Malone'),
	('Xaviera', 'Stanton'),
	('Vladimir', 'Burks'),
	('Ann', 'Love'),
	('Daryl', 'Freeman'),
	('Palmer', 'Lott'),
	('Gisela', 'Fernandez'),
	('Aretha', 'Rodgers'),
	('Ori', 'Meadows'),
	('Macy', 'Lambert'),
	('Ursa', 'Summers'),
	('Xander', 'Rivers'),
	('Noelle', 'Whitehead'),
	('Josephine', 'Kennedy'),
	('Clare', 'Burch'),
	('Abraham', 'Delacruz'),
	('Serina', 'Yates'),
	('Oprah', 'Delaney'),
	('Gay', 'Sargent'),
	('Lewis', 'Hubbard'),
	('Jonah', 'Pena'),
	('Dillon', 'Guy'),
	('Courtney', 'Hoover'),
	('Casey', 'Suarez'),
	('Amela', 'Blackwell'),
	('Barry', 'Curry'),
	('Warren', 'Marshall'),
	('Aidan', 'Glover'),
	('Garth', 'Melendez'),
	('Imani', 'Mckenzie'),
	('Alexis', 'Romero'),
	('Rebecca', 'Bryant'),
	('Zenaida', 'Terrell'),
	('Lydia', 'Vinson'),
	('Nigel', 'Bentley'),
	('Nicholas', 'Thornton'),
	('Lewis', 'Graves'),
	('Carson', 'Mack'),
	('Kiara', 'Mendoza'),
	('Zoe', 'Franks'),
	('Lucy', 'Harding'),
	('Phillip', 'Cantu'),
	('Lacy', 'Downs'),
	('Yuli', 'Ratliff'),
	('Grant', 'Aguirre'),
	('Aretha', 'Wilkinson'),
	('Eagan', 'Doyle'),
	('Rhiannon', 'Hurley'),
	('Maisie', 'Kaufman'),
	('Wang', 'Mason')
;

INSERT INTO professors(prof_first_name, prof_last_name)
VALUES
	('Alejandro', 'Campbell'),
	('Youssef', 'Forster'),
	('Emmie', 'Berry'),
	('Aanya', 'Iles'),
	('Marnie', 'Roche'),
	('Arandeep', 'Patton'),
	('Jevan', 'Morton'),
	('Jane', 'Adam'),
	('Krystian', 'Gallagher'),
	('Gurpreet', 'Pratt'),
	('Maisey', 'Delgado'),
	('Clodagh', 'Bass'),
	('Elspeth', 'Yu'),
	('Gurdeep', 'Valenzuela'),
	('Josef', 'Neil'),
	('Charles', 'Morley'),
	('Carolyn', 'Whyte'),
	('Julie', 'Ryder'),
	('Reuben', 'Horton'),
	('Nazia', 'Brennan'),
	('Shanaya', 'Rivas'),
	('Annaliese', 'Hodson'),
	('Arif', 'Ashton'),
	('Larissa', 'Tucker'),
	('Maxine', 'Cherry'),
	('Allan', 'Castro'),
	('Teejay', 'Mitchell'),
	('Theresa', 'Akhtar'),
	('Anaya', 'Buchanan'),
	('Ifrah', 'Schneider'),
	('Samara', 'Hogg'),
	('Maison', 'Gallagher'),
	('Kaila', 'Forster'),
	('Mayson', 'Gilliam'),
	('Amani', 'Rich'),
	('Chardonnay', 'Lovell'),
	('Ariana', 'Kay'),
	('Yannis', 'Solis'),
	('Gruffydd', 'Ponce'),
	('Melissa', 'Barrera'),
	('Cindy', 'Hendricks'),
	('Mackenzie', 'Jeffery'),
	('Yaseen', 'Bob'),
	('Rick', 'Dickerson'),
	('Cecily', 'Moon'),
	('Gilbert', 'Duffy'),
	('Caitlyn', 'Andrade'),
	('Emme', 'Dalby'),
	('Preston', 'Field'),
	('Tara', 'Key'),
	('Jamie-Leigh', 'Macgregor'),
	('Rosina', 'Meza'),
	('Shauna', 'Smith'),
	('Amman', 'Smyth'),
	('Kairon', 'Robson'),
	('Danyl', 'Yu'),
	('Myra', 'Carter'),
	('Khadeejah', 'Sheldon'),
	('Skylar', 'Harwood'),
	('Abby', 'Mcgill'),
	('Linda', 'Moody'),
	('Mekhi', 'Briggs'),
	('Raheel', 'Marks'),
	('Ruby-May', 'Wood'),
	('Simone', 'Harris'),
	('Ariadne', 'Ramos'),
	('Cally', 'Byrne'),
	('Caine', 'Phelps'),
	('Kylan', 'Carney'),
	('Eric', 'Lopez'),
	('Lleyton', 'Miles'),
	('Shahid', 'Mcdonald'),
	('Lucie', 'Rooney'),
	('Jameel', 'Gillespie'),
	('Arooj', 'Forrest'),
	('Jean-Luc', 'Hensley'),
	('Evangeline', 'Meyer'),
	('Valentino', 'Gentry'),
	('Massimo', 'Noel'),
	('Areeba', 'David'),
	('Bryce', 'Brandt'),
	('Katerina', 'Peralta'),
	('Tasnia', 'Kavanagh'),
	('Marlie', 'Mcphee'),
	('Arian', 'Sykes'),
	('Umayr', 'Swanson'),
	('Jayson', 'Ali'),
	('Maddy', 'Parra'),
	('Horace', 'Phillips'),
	('Sufyaan', 'Needham'),
	('Keagan', 'Fischer'),
	('Ritik', 'Booker'),
	('Umaima', 'Burke'),
	('Jaime', 'Ferry'),
	('Burhan', 'Lindsey'),
	('Saqib', 'Lacey'),
	('Aamna', 'Kirby'),
	('Ace', 'Porter'),
	('Dylon', 'Dotson'),
	('Zac', 'Walls')
;

INSERT INTO activities(activity_name, activity_grade)
VALUES
	('Recitation', 85),
	('Recitation', 95),
	('Recitation', 76),
	('Recitation', 69),
	('Recitation', 72),
	('Recitation', 92),
	('Recitation', 0),
	('Recitation', 56),
	('Recitation', 89),
	('Recitation', 71),
	('Recitation', 56),
	('Recitation', 91),
	('Recitation', 86),
	('Recitation', 66),
	('Recitation', 82),
	('Recitation', 70),
	('Recitation', 90),
	('Recitation', 67),
	('Recitation', 75),
	('Recitation', 85),
	('Boardwork', 91),
	('Boardwork', 82),
	('Boardwork', 73),
	('Boardwork', 83),
	('Boardwork', 92),
	('Boardwork', 71),
	('Boardwork', 56),
	('Boardwork', 77),
	('Boardwork', 94),
	('Boardwork', 0),
	('Boardwork', 50),
	('Boardwork', 88),
	('Boardwork', 12),
	('Boardwork', 65),
	('Boardwork', 74),
	('Boardwork', 47),
	('Boardwork', 95),
	('Boardwork', 76),
	('Boardwork', 88),
	('Boardwork', 90),
	('Seatwork', 90),
	('Seatwork', 85),
	('Seatwork', 74),
	('Seatwork', 85),
	('Seatwork', 96),
	('Seatwork', 77),
	('Seatwork', 54),
	('Seatwork', 62),
	('Seatwork', 96),
	('Seatwork', 69),
	('Seatwork', 74),
	('Seatwork', 67),
	('Seatwork', 59),
	('Seatwork', 35),
	('Seatwork', 0),
	('Seatwork', 79),
	('Seatwork', 71),
	('Seatwork', 80),
	('Seatwork', 99),
	('Seatwork', 84),
	('Homework', 100),
	('Homework', 95),
	('Homework', 90),
	('Homework', 96),
	('Homework', 86),
	('Homework', 93),
	('Homework', 0),
	('Homework', 86),
	('Homework', 76),
	('Homework', 86),
	('Homework', 95),
	('Homework', 72),
	('Homework', 70),
	('Homework', 80),
	('Homework', 90),
	('Homework', 86),
	('Homework', 81),
	('Homework', 94),
	('Homework', 72),
	('Homework', 83),
	('Project', 60),
	('Project', 75),
	('Project', 85),
	('Project', 95),
	('Project', 65),
	('Project', 88),
	('Project', 92),
	('Project', 76),
	('Project', 0),
	('Project', 67),
	('Project', 97),
	('Project', 81),
	('Project', 80),
	('Project', 70),
	('Project', 90),
	('Project', 69),
	('Project', 66),
	('Project', 81),
	('Project', 87),
	('Project', 0),
	('Quiz', 47),
	('Quiz', 56),
	('Quiz', 87),
	('Quiz', 78),
	('Quiz', 15),
	('Quiz', 65),
	('Quiz', 45),
	('Quiz', 35),
	('Quiz', 78),
	('Quiz', 65),
	('Quiz', 72),
	('Quiz', 69),
	('Quiz', 49),
	('Quiz', 55),
	('Quiz', 75),
	('Quiz', 76),
	('Quiz', 36),
	('Quiz', 90),
	('Quiz', 62),
	('Quiz', 68),
	('Exam', 75),
	('Exam', 62),
	('Exam', 81),
	('Exam', 75),
	('Exam', 62),
	('Exam', 34),
	('Exam', 56),
	('Exam', 30),
	('Exam', 29),
	('Exam', 45),
	('Exam', 91),
	('Exam', 72),
	('Exam', 80),
	('Exam', 73),
	('Exam', 64),
	('Exam', 90),
	('Exam', 79),
	('Exam', 27),
	('Exam', 61),
	('Exam', 100)
;

INSERT INTO sections(subject, prof_id)
VALUES
	('Theology 1', 7),
	('Theology 2', 23),
	('Theology 3', 12),
	('Theology 4', 99),
	('Physical Education 1', 41),
	('Physical Education 2', 74),
	('Physical Education 3', 15),
	('Physical Education 4', 9),
	('English Communication 1', 5),
	('English Communication 2', 1),
	('General Chemistry Lec', 47),
	('College Algebra', 98),
	('Advance Algebra', 78),
	('Trigonometry', 69),
	('Differential Calculus', 4),
	('Panitikang Filipino', 87),
	('Politics and Government', 1),
	('Physics 1 Lec', 47),
	('Discrete Mathematics', 78),
	('Logic Circuits', 46),
	('Advance Logic Circuits', 27),
	('Computer Programming', 34),
	('Electrical Circuits', 87),
	('Object Oriented Programming', 35),
	('Engineering Economy', 20),
	('Static of Rigid Bodies', 25),
	('Differential Equations', 40),
	('Nihongo 1', 53),
	('Nihongo 2', 55),
	('World Literature', 67),
	('Integral Calculus', 34),
	('Dynamics of Rigid Bodies', 98),
	('Mechanics of Deformable Bodies', 92),
	('General Psychology 1', 51),
	('Logic', 48),
	('Software Engineering', 77),
	('Engineering Drawing Lab', 18),
	('General Chemistry Lab', 93),
	('Society and Culture', 84),
	('Sining ng Pakikipagtalastasan', 34),
	('Computer Engineering Orientation', 18),
	('Basic Economics', 77),
	('Solid Mensuration', 65),
	('Analytic Geometry', 75),
	('Computer Aided Drafting Lab', 17),
	('Computer Fundamentals', 9),
	('Technical English', 25),
	('Data Structure', 72),
	('ROTC 1', 42),
	('CWTS 1', 16),
	('ROTC 2', 89),
	('CWTS 2', 34),
	('Linear Algebra', 9),
	('Physics 2 Lab', 94),
	('Physics 1 Lab', 79),
	('Physics 2 Lec', 40),
	('Comp Sys Org', 18),
	('Engineering Probability and Statistics', 9),
	('Computer Hardware', 7),
	('Safety Management', 55),
	('Operating Systems Lec', 8),
	('Operating Systems Lab', 50),
	('Computer Engineering Draft and Design Lab', 63),
	('Electrical Circuits 1 Lec', 47),
	('Electrical Circuits 2 Lec', 2),
	('Electrical Circuits 1 Lab', 47),
	('Electrical Circuits 2 Lab', 52),
	('Electrical Devices and Circuits Lec', 51),
	('Electrical Devices and Circuits Lab', 21),
	('Elemenraty Spanish', 6),
	('Rizals Life and Work', 40),
	('General Psychology 2', 96),
	('Online Technology', 69),
	('Database Design', 46),
	('Electrical Circuits Analysis and Design Lec', 44),
	('Electrical Circuits Analysis and Design Lab', 59),
	('Visual Communication', 71),
	('Control Systems Lab', 38),
	('Control Systems Lec', 61),
	('Computer Interfacing and Automaton Lab', 7),
	('Principles of Communication', 79),
	('Microelectronics', 34),
	('Database Management Systems', 32),
	('Microprocessor Lec', 94),
	('Microprocessor Lab', 69),
	('CPE Practicum', 43),
	('Computer System Architecture Lec', 24),
	('Computer System Architecture Lab', 32),
	('IC Fabrication', 13),
	('Embedded System Lec', 95),
	('Embedded System Lab', 68),
	('System Analysis and Design Lec', 30),
	('System Analysis and Design Lab', 86),
	('Data Signal Processing Lec', 62),
	('Data Signal Processing Lab', 82),
	('Computer Network Lec', 69),
	('Computer Network Lab', 18),
	('Design Project 1', 10),
	('Design Project 1', 84),
	('CPE Seminars and Field Trips', 33),
	('Project Management', 1)
;


INSERT INTO stud_sec_junc(student_id, section_id)
VALUES
	(90, 46),
	(27, 67),
	(44, 58),
	(84, 89),
	(37, 17),
	(73, 1),
	(26, 31),
	(2, 83),
	(93, 19),
	(45, 18),
	(67, 71),
	(30, 60),
	(90, 44),
	(6, 22),
	(69, 72),
	(91, 92),
	(1, 58),
	(47, 47),
	(75, 66),
	(76, 6),
	(16, 5),
	(64, 75),
	(32, 13),
	(67, 50),
	(73, 47),
	(70, 19),
	(23, 7),
	(87, 40),
	(52, 36),
	(14, 85),
	(60, 95),
	(58, 82),
	(1, 72),
	(31, 60),
	(65, 5),
	(76, 86),
	(75, 54),
	(81, 66),
	(63, 36),
	(17 ,53),
	(22, 26),
	(51, 69),
	(77, 81),
	(58, 44),
	(44, 31),
	(52, 71),
	(84, 87),
	(38, 92),
	(74, 73),
	(52, 91),
	(70, 17),
	(94, 91),
	(80, 76),
	(28, 27),
	(65, 91),
	(19, 56),
	(34, 80),
	(70, 70),
	(68, 46),
	(56, 11),
	(90, 19),
	(23, 75),
	(15, 42),
	(18, 39),
	(97, 64),
	(3, 53),
	(82, 46),
	(21, 68),
	(48, 54),
	(30, 69),
	(20, 56),
	(91, 6),
	(79, 55),
	(26, 27),
	(47, 17),
	(57, 10),
	(65, 3),
	(95, 92),
	(53, 45),
	(67, 61),
	(95, 99),
	(34, 29),
	(76, 89),
	(69, 71),
	(25, 65),
	(72, 94),
	(45, 50),
	(40, 52),
	(95, 40),
	(77, 44),
	(36, 36),
	(45, 88),
	(27, 34),
	(43, 54),
	(96, 93),
	(25, 23),
	(32, 57),
	(17, 3),
	(21, 97),
	(37, 30)
;

INSERT INTO stud_act_junc(student_id, activity_id)
VALUES
	(70, 137),
	(61, 66),
	(1, 30),
	(92, 64),
	(82, 53),
	(75, 133),
	(3, 123),
	(1, 57),
	(57, 93),
	(5, 94),
	(84, 107),
	(59, 46),
	(9, 86),
	(53, 105),
	(61, 15),
	(29, 127),
	(45, 85),
	(11, 74),
	(8, 76),
	(66, 90),
	(81, 55),
	(61, 27),
	(24, 19),
	(68, 47),
	(31, 110),
	(58, 85),
	(1, 25),
	(51, 10),
	(46, 135),
	(18, 58),
	(99, 43),
	(4, 15),
	(78, 46),
	(62, 135),
	(58, 40),
	(19, 132),
	(72, 120),
	(69, 117),
	(78, 34),
	(46, 14),
	(28, 67),
	(47, 113),
	(70, 58),
	(19, 105),
	(83, 72),
	(40, 101),
	(17, 116),
	(42, 88),
	(88, 7),
	(59, 118),
	(87, 128),
	(23, 127),
	(42, 14),
	(16, 134),
	(24, 123),
	(42, 83),
	(12, 117),
	(33, 64),
	(73, 12),
	(67, 133),
	(80, 111),
	(1, 90),
	(70, 125),
	(52, 105),
	(85, 79),
	(84, 93),
	(95, 39),
	(62, 104),
	(44, 34),
	(54, 23),
	(60, 66),
	(5, 139),
	(82, 74),
	(40, 1),
	(98, 76),
	(99, 15),
	(1, 59),
	(71, 128),
	(23, 75),
	(78, 14),
	(28, 127),
	(6, 130),
	(48, 88),
	(72, 116),
	(13, 67),
	(15, 127),
	(74, 58),
	(5, 88),
	(77, 62),
	(2, 20),
	(87, 66),
	(27, 53),
	(3, 104),
	(74, 121),
	(37, 113),
	(30, 134),
	(63, 139),
	(5, 28),
	(7, 92),
	(45, 91)
;

INSERT INTO final_grades(grade, student_sec_junc_id)
VALUES
	(85, 8),
	(97, 18),
	(99, 30),
	(60, 88),
	(81, 20),
	(70, 52),
	(92, 51),
	(74, 98),
	(100, 7),
	(95, 34),
	(77, 86),
	(83, 46),
	(67, 81),
	(88, 9),
	(95, 29),
	(82, 53),
	(62, 38),
	(83, 85),
	(76, 6),
	(78, 19),
	(81, 80),
	(90, 57),
	(85, 15),
	(71, 87),
	(81, 84),
	(92, 33),
	(48, 79),
	(71, 83),
	(89, 5),
	(96, 56),
	(63, 16),
	(92, 23),
	(72, 82),
	(66, 32),
	(73, 78),
	(100, 10),
	(94, 55),
	(60, 45),
	(61, 12),
	(83, 89),
	(69, 39),
	(66, 11),
	(80, 54),
	(70, 68),
	(65, 31),
	(72, 4),
	(65, 71),
	(61, 74),
	(90, 28),
	(87, 70),
	(93, 14),
	(90, 17),
	(63, 73),
	(80, 13),
	(76, 99),
	(84, 44),
	(74, 64),
	(97, 96),
	(69, 66),
	(91, 72),
	(61, 25),
	(65, 37),
	(81, 47),
	(69, 65),
	(65, 50),
	(77, 24),
	(98, 69),
	(92, 40),
	(63, 3),
	(85, 95),
	(69, 100),
	(85, 67),
	(79, 97),
	(79, 36),
	(86, 35),
	(91, 21),
	(79, 92),
	(65, 43),
	(72, 91),
	(85, 94),
	(66, 41),
	(69, 93),
	(89, 2),
	(71, 77),
	(82, 90),
	(78, 22),
	(63, 63),
	(97, 26),
	(91, 76),
	(74, 62),
	(62, 49),
	(67, 42),
	(63, 75),
	(96, 61),
	(72, 59),
	(86, 58),
	(81, 1),
	(73, 60),
	(82, 48),
	(66, 27)
;

select * from students;
select * from activities;
select * from sections;
select * from professors;
select * from stud_sec_junc;
select * from stud_act_junc;
select * from final_grades;




DELIMITER $$
create procedure GetNumberOfStudents() 
begin
select count(y.first_name) as 'number of students', y.section_id, subject
from sections 
left join 
(select first_name, last_name, students.id ,section_id 
from students 
left join stud_sec_junc on students.id = stud_sec_junc.student_id 
where section_id is not Null )  as y 
on sections.id = section_id 
where section_id is not NULL 
group by section_id;
end $$
DELIMITER ;

call GetNumberOfStudents();

DELIMITER $$
create procedure GetGradeOfStudents() 
begin
select grade_id, grade, first_name, last_name , subject
from sections
left join
(select grade_id, student_id, section_id, grade, first_name, last_name
from students
left join
(select final_grades.id as grade_id, student_id, section_id, grade from stud_sec_junc
left join final_grades on   stud_sec_junc.id  = final_grades.student_sec_junc_id ) as x
on students.id = student_id
where grade_id is not NULL ) as y
 on section_id = sections.id
 where grade_id is not NULL ;
end $$
DELIMITER ;


call GetGradeOfStudents();


DELIMITER $$
create procedure GetGradeHigherThan(in x int) 
begin
select count(grade_id)
from sections
left join
(select grade_id, student_id, section_id, grade, first_name, last_name
from students
left join
(select final_grades.id as grade_id, student_id, section_id, grade from stud_sec_junc
left join final_grades on   stud_sec_junc.id  = final_grades.student_sec_junc_id ) as x
on students.id = student_id
where grade_id is not NULL ) as y
 on section_id = sections.id
 where grade_id is not NULL  and  grade > x;
end $$
DELIMITER ;

call GetGradeHigherThan(90);

DELIMITER $$
create procedure GetPercentageHigherThan(in x float, out count float) 
begin
declare countOfGreater float;
declare totalStudents float;

select count(grade_id) as z
from sections
left join
(select grade_id, student_id, section_id, grade, first_name, last_name
from students
left join
(select final_grades.id as grade_id, student_id, section_id, grade from stud_sec_junc
left join final_grades on   stud_sec_junc.id  = final_grades.student_sec_junc_id ) as x
on students.id = student_id
where grade_id is not NULL ) as y
 on section_id = sections.id
 where grade_id is not NULL  and  grade > x
 into countOfGreater;
 
 select count(first_name)
from sections
left join
(select grade_id, student_id, section_id, grade, first_name, last_name
from students
left join
(select final_grades.id as grade_id, student_id, section_id, grade from stud_sec_junc
left join final_grades on   stud_sec_junc.id  = final_grades.student_sec_junc_id ) as x
on students.id = student_id
where grade_id is not NULL ) as y
 on section_id = sections.id
 into totalStudents;
 
 
 set count = (countOfGreater / totalStudents) * 100;
 

end $$
DELIMITER ;

drop procedure GetPercentageHigherThan;
call GetPercentageHigherThan(90, @count);
select @count;


DELIMITER $$
create procedure CreateStudent(in fn VARCHAR(50), in ln VARCHAR(56)) 
begin
INSERT INTO students(first_name, last_name)
VALUES
	(fn, y);

SELECT id
FROM students
WHERE (first_name like fn && last_name like ln);

end $$
DELIMITER ;

call CreateStudent(James, Angelo);

DELIMITER $$
create procedure ReadStudent(in id int)
begin
SELECT id
FROM students
WHERE id = this.id

end $$
DELIMITER;

call ReadStudent(69);

DELIMITER $$
create procedure UpdateStudent(in id int, in fn VARCHAR(50), in ln VARCHAR(56))
begin
UPDATE students
SET
first_name = fn
last_name = ln
WHERE id = this.id;

end $$
DELIMITER;

call UpdateStudent(69, Mr., Pogi)

DELIMITER $$
create procedure DeleteStudent(in id int)
begin
DELETE FROM students
WHERE id = this.id

end $$
DELIMITER;

call DeleteStudent(69);
