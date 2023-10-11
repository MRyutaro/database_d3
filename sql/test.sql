\l
\dt

drop table students;

create table students (
    id char(8) not null,
    name char(20),
    age INT,
    sex char(1),
    primary key (id)
);

insert into students values
('822xxx01', 'Taro SATO', 20, 'M'),
('822xxx02', 'Hanako SUZUKI', 21, 'F')
;

select * from students;
