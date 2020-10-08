/* Created using Oracle DB on https://livesql.oracle.com*/

create table instructor_table(
    instructor varchar(50),
    subject varchar(50)
);

insert into instructor_table values('Aleph','Scratch');
insert into instructor_table values('Aleph','Java');
insert into instructor_table values('Aleph','Processing');
insert into instructor_table values('Bit','Python');
insert into instructor_table values('Bit','JavaScript');
insert into instructor_table values('Bit','Java');
insert into instructor_table values('CRC','Python');
insert into instructor_table values('CRC','JavaScript');
insert into instructor_table values('Dat','Scratch');
insert into instructor_table values('Dat','Python');
insert into instructor_table values('Dat','JavaScript');
insert into instructor_table values('Emscr','Scratch');
insert into instructor_table values('Emscr','Processing');
insert into instructor_table values('Emscr','JavaScript');
insert into instructor_table values('Emscr','Python');

/* In this approach, assuming the 3 subjects to be hardcoded, we are simply performing AND operation between three different filtered tables
and retrieving the instructors that exist in all three tables of the subjects */
select distinct(instructor) from instructor_table
where instructor in (select instructor from instructor_table where subject = 'JavaScript')
  and instructor in (select instructor from instructor_table where subject = 'Scratch')
  and instructor in (select instructor from instructor_table where subject = 'Python');

drop table instructor_table;
