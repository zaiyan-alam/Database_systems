/* Created using Oracle DB on https://livesql.oracle.com*/

create table track (
    pid varchar(4),
    step integer,
    status varchar(1)
);

insert into track values('P100',0,'C');
insert into track values('P100',1,'W');
insert into track values('P100',2,'W');
insert into track values('P201',0,'C');
insert into track values('P201',1,'C');
insert into track values('P333',0,'W');
insert into track values('P333',1,'W');
insert into track values('P333',2,'W');
insert into track values('P333',3,'W');

select *
from track;

select pid, count(status) as total_steps_completed
from track
where
status='C'
group by pid
having count(status)=1;

drop table track;

/* simply grouping by counting the no. of 'C' for each PID, since we want only step 0 completed, thus count=1 as the completion
of each step 0,1,2... is strictly serialised as mentioned in the question! */
