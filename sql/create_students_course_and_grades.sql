\l
\dt

drop table scores;
drop table students;
drop table subjects;
drop table scores_grades;

create table students (
    id char(8) not null,
    name char(20),
    age int,
    primary key (id)
);

create table subjects (
    id char(8) not null,
    name char(20),
    credit_units int,
    primary key (id)
);

create table scores (
    student_id char(8) not null,
    subject_id char(8) not null,
    score int not null,
    primary key (student_id, subject_id),
    foreign key (student_id) references students(id),
    foreign key (subject_id) references subjects(id)
);

create table scores_grades (
    grade char(1) not null,
    max_score int not null,
    min_score int not null,
    primary key (grade)
);

insert into students values
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

insert into subjects values
    ('1001', 'English', 2),
    ('1002', 'Mathematics', 2),
    ('1003', 'Physics', 2),
    ('1004', 'Chemistry', 2),
    ('1005', 'Biology', 2);

insert into scores values
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

insert into scores_grades values
    ('S', 100, 90),
    ('A', 89, 80),
    ('B', 79, 70),
    ('C', 69, 60),
    ('F', 59, 0);

select * from students;
select * from subjects;
select * from scores;
select * from scores_grades;
