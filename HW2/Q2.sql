/* Created using Oracle DB on https://livesql.oracle.com*/

create table enrollment (
    SID integer,
    Classname varchar(10),
    Grade varchar(1)
);

insert into enrollment values(123,'Processing','A');
insert into enrollment values(123,'Python','B');
insert into enrollment values(123,'Scratch','B');
insert into enrollment values(662,'Java','B');
insert into enrollment values(662,'Python','A');
insert into enrollment values(662,'JavaScript','A');
insert into enrollment values(662,'Scratch','A');
insert into enrollment values(345,'Scratch','B');
insert into enrollment values(345,'JavaScript','A');
insert into enrollment values(345,'Python','B');
insert into enrollment values(555,'Python','B');
insert into enrollment values(555,'JavaScript','B');

select *
from enrollment;

select classname, count(classname) as total
from enrollment
group by classname
order by total desc;

drop table enrollment;
