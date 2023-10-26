\l
\dt

DROP TABLE students;

CREATE TABLE students (
    id CHAR(8) NOT NULL,
    name CHAR(20),
    age INT,
    sex CHAR(1),
    PRIMARY KEY (id)
);

INSERT INTO students VALUES
('822xxx01', 'Taro SATO', 20, 'M'),
('822xxx02', 'Hanako SUZUKI', 21, 'F');

SELECT * FROM students;