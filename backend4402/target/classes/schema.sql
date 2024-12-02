-- entities

CREATE TABLE School (
    name VARCHAR(50) PRIMARY KEY NOT NULL,
    address VARCHAR(50),
    phone_number VARCHAR(15)
);

CREATE TABLE Classroom(
    room_number INT PRIMARY KEY,
    capacity INT
);

CREATE TABLE Teacher(
    id INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    salary INT,
    email VARCHAR(50),
    dateofbirth DATE, 
    dateofhire DATE,
    room_number INT UNIQUE,
    FOREIGN KEY (room_number) REFERENCES Classroom(room_number)
);

CREATE TABLE Club(
    id INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    schedule VARCHAR(100),
    teacher_id INT UNIQUE,
    FOREIGN KEY (teacher_id) REFERENCES Teacher(id)
);

CREATE TABLE Class(
    id INT PRIMARY KEY,
    teacher INT,
    credits INT,
    subject VARCHAR(50) NOT NULL, 
    semester VARCHAR(6),
    classroom INT,
    FOREIGN KEY (teacher) REFERENCES Teacher(id),
    FOREIGN KEY (classroom) REFERENCES Classroom(room_number)
);

CREATE TABLE Student(
    id INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    dateofbirth DATE,
    schoolyear INT,
    email VARCHAR(50),
    GPA DECIMAL(3,2),
    address VARCHAR(50)
);

CREATE TABLE Guardian(
    id INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    phone_number VARCHAR(15),
    email VARCHAR(50),
    address VARCHAR(50)
);

-- relationships

CREATE TABLE Member(
    student_id INT,
    club_id INT,
    PRIMARY KEY (student_id, club_id),
    FOREIGN KEY (student_id) REFERENCES Student(id) ON DELETE CASCADE,
    FOREIGN KEY (club_id) REFERENCES Club(id)
);

CREATE TABLE Enrolled(
    student_id INT,
    class_id INT,
    attendance DECIMAL,
    grade CHAR(1),
    PRIMARY KEY (student_id, class_id),
    FOREIGN KEY (student_id) REFERENCES Student(id) ON DELETE CASCADE,
    FOREIGN KEY (class_id) REFERENCES Class(id)
);

CREATE TABLE Parents(
    student_id INT,
    guardian_id INT,
    PRIMARY KEY (student_id, guardian_id),
    FOREIGN KEY (student_id) REFERENCES Student(id) ON DELETE CASCADE,
    FOREIGN KEY (guardian_id) REFERENCES Guardian(id)
);