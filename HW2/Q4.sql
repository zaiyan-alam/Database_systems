/* Created using Oracle DB on https://livesql.oracle.com*/

create table mail (
    name varchar(50),
    adrress varchar(50),
    ID integer,
    same_fam integer
);

insert into mail values('Alice','A',10,null);
insert into mail values('Bob','B',15,null);
insert into mail values('Carmen','C',22,null);
insert into mail values('Diego','A',9,10);
insert into mail values('Ella','B',3,15);
insert into mail values('Farkhad','D',11,null);

select *
from mail;

delete from mail
where id in (select same_fam from mail where same_fam is not null);

select *
from mail;

drop table mail;
