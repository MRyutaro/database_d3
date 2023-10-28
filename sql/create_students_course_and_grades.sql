\l
\dt

DROP TABLE scores;
DROP TABLE students;
DROP TABLE subjects;
DROP TABLE scores_grades;

CREATE TABLE students (
    id CHAR(8) NOT NULL,
    name CHAR(20),
    age INT,
    PRIMARY KEY (id)
);

CREATE TABLE subjects (
    id CHAR(8) NOT NULL,
    name CHAR(20),
    credit_units INT,
    PRIMARY KEY (id)
);

CREATE TABLE scores (
    student_id CHAR(8) NOT NULL,
    subject_id CHAR(8) NOT NULL,
    score INT NOT NULL,
    PRIMARY KEY (student_id, subject_id),
    FOREIGN KEY (student_id) REFERENCES students(id),
    FOREIGN KEY (subject_id) REFERENCES subjects(id)
);

CREATE TABLE scores_grades (
    grade CHAR(1) NOT NULL,
    max_score INT NOT NULL,
    min_score INT NOT NULL,
    PRIMARY KEY (grade)
);

INSERT INTO students VALUES
    ('822xxx01', 'Taro SATO', 20),
    ('822xxx02', 'Hanako SUZUKI', 21),
    ('822xxx03', 'Yuki TANAKA', 19),
    ('822xxx04', 'Sakura WATANABE', 22),
    ('822xxx05', 'Ryota KATO', 23),
    ('822xxx06', 'Aya YAMAMOTO', 20),
    ('822xxx07', 'Daiki NAKAMURA', 21),
    ('822xxx08', 'Haruka KIMURA', 18),
    ('822xxx09', 'Yuta SUZUKI', 22),
    ('822xxx10', 'Sakiko NISHI', 19);

INSERT INTO subjects VALUES
    ('1001', 'English', 2),
    ('1002', 'Mathematics', 2),
    ('1003', 'Physics', 2),
    ('1004', 'Chemistry', 2),
    ('1005', 'Biology', 2);

INSERT INTO scores VALUES
    ('822xxx01', '1001', 90),
    ('822xxx01', '1002', 85),
    ('822xxx02', '1001', 88),
    ('822xxx02', '1002', 92),
    ('822xxx03', '1002', 75),
    ('822xxx03', '1003', 80),
    ('822xxx04', '1001', 55),
    ('822xxx04', '1003', 91),
    ('822xxx05', '1001', 85),
    ('822xxx05', '1004', 89),
    ('822xxx06', '1003', 53),
    ('822xxx06', '1005', 84),
    ('822xxx07', '1002', 90),
    ('822xxx07', '1004', 87),
    ('822xxx08', '1003', 76),
    ('822xxx08', '1005', 80),
    ('822xxx09', '1004', 59),
    ('822xxx09', '1005', 88),
    ('822xxx10', '1001', 83),
    ('822xxx10', '1004', 87);

INSERT INTO scores_grades VALUES
    ('S', 100, 90),
    ('A', 89, 80),
    ('B', 79, 70),
    ('C', 69, 60),
    ('F', 59, 0);

SELECT * FROM students;
SELECT * FROM subjects;
SELECT * FROM scores;
SELECT * FROM scores_grades;