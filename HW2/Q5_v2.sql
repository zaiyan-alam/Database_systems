/* Created using Oracle DB on https://livesql.oracle.com*/

create table instructor_table(
    instructor varchar(50),
    subject varchar(50)
);

create table subjects(
    subject_id varchar(50),
    subject_name varchar(50)
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

insert into subjects values('csci101','JavaScript');
insert into subjects values('csci102','Scratch');
insert into subjects values('csci103','Python');

select * from instructor_table;
select * from subjects;

/* This approach is better, and more generic and will work for all kinds of tables, here we are using another SUBJECTS table
which is used to obtain the list of required subjects */

select instructor, count(subject) as total_subjects
from instructor_table
where subject in (select subject_name from subjects)
group by instructor
having count(subject)=(select count(subject_id) from subjects);

drop table instructor_table;
drop table subjects;

/* We are basically retrieving those professors that teach ANY of required subjects from SUBJECTS table,
then grouping them by counts of total subjects they teach, then out of these we chose the instructors
that teach ALL of required subjects by filtering the count equal to total count of SUBJECTS table i.e here 3*/
