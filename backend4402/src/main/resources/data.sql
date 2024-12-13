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
(110, 32),
(111, 25),
(112, 45),
(113, 36),
(114, 30),
(115, 25);

INSERT INTO Teacher (id, name, salary, email, dateofbirth, dateofhire, room_number) 
VALUES 
(1, 'John Smith', 48000, 'jsmith@example.com', '1980-01-01', '2011-01-01', 101),
(2, 'Jane Doe', 48000, 'jdoe@example.com', '1985-02-03', '2020-04-10', 102),
(3, 'Morgan Jones', 48000, 'mjones@example.com', '1970-04-04', '2000-01-01', 103),
(4, 'Casey Lee', 48000, 'clee@example.com', '1975-01-01', '2024-02-12', 104),
(5, 'Mary Lee', 48000, 'mlee@example.com', '1980-12-01', '2013-01-04', 105),
(6, 'Charles Johnson', 48000, 'cjohnson@example.com', '1976-02-02', '2016-09-01', 106),
(7, 'Sarah Hebert', 48000, 'shebert@example.com', '1981-08-12', '2010-07-11', 107),
(8, 'Bill Cassidy', 48000, 'bcassidy@example.com', '1984-06-19', '2007-02-02', 108),
(9, 'Danny Jonson', 52000, 'djonson@example.com', '1979-01-10', '2001-12-23', 109),
(10, 'Thomas Christianson', 45000, 'tchristianson@example.com', '1995-03-04', '2018-7-13', 110),
(11, 'Mary Dunlop', 49000, 'mdunlop@example.com', '1985-11-11', '2008-11-11', 111),
(12, 'Michael Scarn', 55000, 'mscarn@example.com', '1976-05-05', '2001-09-11', 112),
(13, 'Sarah Kerrigan', 52000, 'skerrigan@example.com', '1988-07-26', '2012-12-22', 113),
(14, 'Patrick Bates', 48000, 'pbates@example.com', '1975-12-03', '2000-01-30', 114),
(15, 'Phillip Anselmo', 50000, 'panselmo@example.com', '1968-06-30', '1994-10-31', 115);

INSERT INTO Club (id, name, schedule, teacher_id) 
VALUES 
(1, 'Science Club', 'Monday 3:00-4:00 PM', 1),
(2, 'Book Club', 'Tuesday 3:00-4:00 PM', 2),
(3, 'Birdwatching Club', 'Wednesday 3:00-4:00 PM', 3),
(4, 'Marine Biology Club', 'Thursday 3:00-4:00 PM', 4),
(5, 'Choir', 'Friday 3:00-4:00 PM', 5),
(6, 'Band', 'Monday 4:00-5:00 PM', 6),
(7, 'Cinema Club', 'Friday 3:00-4:00 PM', 7),
(8, 'Football', 'Monday 3:00-5:00 PM', 8),
(9, 'Swim Team', 'Tuesday 6:00-7:00 AM', 9),
(10, 'Basketball', 'Thursday 3:00-5:00 PM', 10);

INSERT INTO Class(id, teacher, credits, subject, semester, classroom)
VALUES
(1, 1, 3, 'Physics', 'Fall', 100),
(2, 2, 3, 'English', 'Fall', 101),
(3, 3, 3, 'Biology', 'Fall', 102),
(4, 4, 3, 'History', 'Fall', 103),
(5, 5, 3, 'Music', 'Fall', 104),
(6, 6, 3, 'P.E.', 'Fall', 105),
(7, 7, 3, 'Calculus', 'Spring', 106),
(8, 8, 3, 'Computer Science', 'Spring', 107),
(9, 9, 3, 'Spanish', 'Spring', 108),
(10, 10, 3, 'Latin', 'Spring', 109),
(11, 11, 3, 'French', 'Fall', 110),
(12, 12, 3, 'Greek', 'Fall', 111),
(13, 13, 3, 'Religion', 'Fall', 112),
(14, 14, 3, 'Algebra', 'Fall', 113),
(15, 15, 3, 'Literature', 'Fall', 114);


INSERT INTO Student(id, name, dateofbirth, schoolyear, email, GPA, address)
VALUES
(1, 'Arthur Morgan', '2007-01-01', 10, 'amorgan1@example.com', 3.4, '456 Parkway Dr.'),
(2, 'Alice White', '2009-03-25', 11, 'awhite1@example.com', 3.5, '190 Tower Dr.'),
(3, 'Bob Fisher', '2008-04-10', 11, 'bfisher1@example.com', 3.6, '191 Sycamore Dr.'),
(4, 'Johnny Bravo', '2006-07-17', 12, 'jbravo1@example.com', 2.7, '210 Laurel Dr.'),
(5, 'Billy Kidd', '2008-11-21', 10, 'bkidd1@example.com', 3.2, '4405 Town Rd.'),
(6, 'Robin Hood', '2007-07-07', 11, 'rhood1@example.com', 3.8, '128 Sherwood Forest Blvd.'),
(7, 'Tom Shelby', '2006-02-28', 12, 'tshelby1@example.com', 4.0, '52 Watery Ln.'),
(8, 'Daniel Mann', '2007-01-01', 11, 'dmann1@example.com', 3.3, '26 Poydras St.'),
(9, 'Teddy Lopez', '2008-10-17', 10, 'tlopez1@example.com', 2.8, '1416 River Rd.'),
(10, 'Fay Harvey', '2007-12-25', 11, 'fharvey1@example.com', 3.3, '101 Canal St.'),
(11, 'Katy Anthony', '2006-04-20', 12, 'kanthony1@example.com', 2.5, '200 Garden St.'),
(12, 'Samuel Mason', '2008-09-25', 10, 'smason1@example.com', 3.0, '530 Government St.'),
(13, 'Jason Voorhees', '2006-10-13', 12, 'jvoorhees1@example.com', 2.0, '1 Crystal Lake Dr.'),
(14, 'Virgil Buck', '2007-01-15', 11, 'vbuck1@example.com', 3.2, '1010 Burbank Dr.'),
(15, 'Christian Wells', '2008-10-10', 10, 'cwells1@example.com', 3.3, '85 Cypress Dr.');

INSERT INTO Guardian(id, name, phone_number, email, address)
VALUES
(1, 'Lyle Morgan', '112-223-3445', 'lmorgan@aol.com', '456 Parkway Dr.'),
(2, 'Betty White', '112-234-8561', 'bwhite@aol.com', '190 Tower Dr.'),
(3, 'King Fisher', '112-120-5930', 'kfisher@aol.com', '191 Sycamore Dr.'),
(4, 'Susan Bravo', '112-689-1234', 'sbravo@aol.com', '210 Laurel Dr.'),
(5, 'Harry Kidd', '112-349-0518', 'hkidd@aol.com', '4405 Town Rd.'),
(6, 'John Hood', '112-018-2691', 'jhood@aol.com', '128 Sherwood Forest Blvd.'),
(7, 'Arthur Shelby', '112-192-8374', 'ashelby@aol.com', '52 Watery Ln.'),
(8, 'Dan Mann', '112-211-2211', 'dmann@aol.com', '26 Poydras St.'),
(9, 'Jorge Lopez', '112-023-1860', 'jlopez@aol.com', '1416 River Rd.'),
(10, 'Steve Harvey', '112-196-1592', 'sharvey@aol.com', '101 Canal St.'),
(11, 'Dave Anthony', '112-111-1111', 'danthony@aol.com', '200 Garden St.'),
(12, 'Bill Mason', '112-106-2334', 'bmason@aol.com', '530 Government St.'),
(13, 'Pamela Voorhees', '112-120-1201', 'pvoorhees@aol.com', '1 Crystal Lake Dr.'),
(14, 'John Buck', '112-019-1859', 'jbuck@aol.com', '1010 Burbank Dr.'),
(15, 'Sarah Wells', '112-103-2869', 'swells@aol.com', '85 Cypress Dr.');

INSERT INTO Enrolled (student_id, class_id, attendance, grade) VALUES
(1, 1, 90, 'A'),
(2, 2, 80, 'B'),
(3, 3, 0, 'D'),
(4, 4, 90, 'A'),
(5, 5, 90, 'A'),
(6, 6, 85, 'B'),
(7, 7, 85, 'A'),
(8, 8, 100, 'A'),
(9, 9, 90, 'B'),
(10, 10, 90, 'A'),
(11, 11, 90, 'A'),
(12, 12, 100, 'A'),
(13, 13, 80, 'C'),
(14, 14, 70, 'C'),
(15, 15, 90, 'A');

INSERT INTO Parents (student_id, guardian_id) VALUES
(1, 1),
(2, 1),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10),
(11, 11),
(12, 12),
(13, 13),
(14, 14),
(15, 15);

INSERT INTO Member (student_id, club_id) VALUES
(1, 1),
(2, 3),
(3, 2),
(4, 10),
(5, 9),
(6, 1),
(7, 5),
(8, 6),
(9, 10),
(10, 7),
(11, 8),
(12, 1),
(13, 2),
(14, 3),
(15, 9);
