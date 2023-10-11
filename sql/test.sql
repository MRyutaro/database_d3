drop table Students;

create table Students (
    id char(8) not null,
    name char(20),
    age INT,
    sex char(1),
    primary key (id)
);

insert into Students values
('822xxx01', 'Taro SATO', 20, 'M'),
('822xxx02', 'Hanako SUZUKI', 21, 'F')
;

select * from Students;
