-- This file will populate the database with sample data.
-- You will need to create a sufficient amount of sample data (many INSERT statements) for your tables.

INSERT INTO School (name, address, phone_number)
VALUES ('Example High', '1234 Road Dr', '123-456-7890');

INSERT INTO Classroom(room_number, capacity)
VALUES
(100, 30),
(101, 35),
(102, 31),
(103, 40),
(104, 32),
(105, 37),
(106, 30),
(107, 35),
(108, 30),
(109, 40),
(110, 32);

INSERT INTO Teacher (id, name, salary, email, dateofbirth, dateofhire, room_number) 
VALUES 
(01, 'John Smith', 48000, 'jsmith@example.com', '1980-01-01', '2011-01-01', 101),
(02, 'Jane Doe', 48000, 'jdoe@example.com', '1985-02-03', '2020-04-10', 102),
(03, 'Morgan Jones', 48000, 'mjones@example.com', '1970-04-04', '2000-01-01', 103),
(04, 'Casey Lee', 48000, 'clee@example.com', '1975-01-01', '2024-02-12', 104),
(05, 'Mary Lee', 48000, 'mlee@example.com', '1980-12-01', '2013-01-04', 105),
(06, 'Charles Johnson', 48000, 'cjohnson@example.com', '1976-02-02', '2016-09-01', 106),
(07, 'Sarah Hebert', 48000, 'shebert@example.com', '1981-08-12', '2010-07-11', 107);

INSERT INTO Club (id, name, schedule, teacher_id) 
VALUES 
(01, 'Science Club', 'Monday 3:00-4:00 PM', 01),
(02, 'Book Club', 'Tuesday 3:00-4:00 PM', 02),
(03, 'Birdwatching Club', 'Wednesday 3:00-4:00 PM', 03),
(04, 'Marine Biology Club', 'Thursday 3:00-4:00 PM', 04),
(05, 'Choir', 'Friday 3:00-4:00 PM', 05),
(06, 'Band', 'Monday 4:00-5:00PM', 06);

INSERT INTO Class(id, teacher, credits, subject, semester, classroom)
VALUES
(01, 01, 3, 'Physics', 'Fall', 100),
(02, 02, 3, 'English', 'Fall', 101),
(03, 03, 3, 'Biology', 'Fall', 102),
(04, 04, 3, 'History', 'Fall', 103),
(05, 05, 3, 'Music', 'Fall', 104),
(06, 06, 3, 'P.E.', 'Fall', 105);

INSERT INTO Student(id, name, dateofbirth, schoolyear, email, GPA, address)
VALUES
(01, 'Arthur Morgan', '2007-01-01', 10, 'amorgan1@example.com', 3.4, '456 Parkway Dr.'),
(02, 'Alice White', '2009-03-25', 11, 'awhite1@example.com', 3.5, '190 Tower Dr.'),
(03, 'Bob Fisher', '2008-04-10', 11, 'bfisher1@example.com', 3.6, '191 Sycamore Dr.');

INSERT INTO Guardian(id, name, phone_number, email, address)
VALUES
(01, 'Lyle Morgan', '112-223-3445', 'lmorgan@aol.com', '456 Parkway Dr.');

INSERT INTO Enrolled (student_id, class_id, attendance, grade) VALUES
(01, 01, 90, 'A'),
(02, 02, 80, 'B'),
(03, 03, 0, 'D');

INSERT INTO Parents (student_id, guardian_id) VALUES
(01, 01);

INSERT INTO Member (student_id, club_id) VALUES
(01, 01);



