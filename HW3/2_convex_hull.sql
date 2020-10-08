create table places (place_id integer primary key,place_loc varchar(2048));
select AddGeometryColumn('places','geo_col','4326','POINT',2);
insert into places(place_id,place_loc,geo_col) values(1, 'Percy Andrus Library', ST_GeomFromText('POINT(-118.290529 34.019947)',4326));
insert into places(place_id,place_loc,geo_col) values(2, 'Helen Topping Library', ST_GeomFromText('POINT(-118.287987 34.019178)',4326));
insert into places(place_id,place_loc,geo_col) values(3, 'Gaughan Tiberti Library',ST_GeomFromText('POINT(-118.282690 34.018679)',4326));
insert into places(place_id,place_loc,geo_col) values(4, 'Leavey Library', ST_GeomFromText('POINT(-118.282891 34.021652)',4326));
insert into places(place_id,place_loc,geo_col) values(5, 'Wilson Dental library',ST_GeomFromText('POINT(-118.286327 34.023952)',4326));
insert into places(place_id,place_loc,geo_col) values(6, 'Cammereli',ST_GeomFromText('POINT(-118.283853 34.019105)',4326));
insert into places(place_id,place_loc,geo_col) values(7, 'Literatea',ST_GeomFromText('POINT(-118.283268 34.020097)',4326));
insert into places(place_id,place_loc,geo_col) values(8, 'Starbucks',ST_GeomFromText('POINT(-118.282220 34.021658)',4326));
insert into places(place_id,place_loc,geo_col) values(9, 'Little Galen',ST_GeomFromText('POINT(-118.287080 34.022849)',4326));
insert into places(place_id,place_loc,geo_col) values(10, 'Dulce',ST_GeomFromText('POINT(-118.285304 34.025429)',4326));
insert into places(place_id,place_loc,geo_col) values(11, 'Joyce Cammileri Hall',ST_GeomFromText('POINT(-118.288829 34.021418)',4326));
insert into places(place_id,place_loc,geo_col) values(12, 'Alfred Newman Hall',ST_GeomFromText('POINT(-118.284662 34.019790)',4326));
insert into places(place_id,place_loc,geo_col) values(13, 'Bovard Hall',ST_GeomFromText('POINT(-118.285620 34.020821)',4326));
insert into places(place_id,place_loc,geo_col) values(14, 'Simon Ramo Hall',ST_GeomFromText('POINT(-118.284781 34.022744)',4326));
insert into places(place_id,place_loc,geo_col) values(15, 'Shrine Hall',ST_GeomFromText('POINT(-118.281385 34.023464)',4326));

select * from places;

select ST_AsText(ST_ConvexHull(ST_Collect(geo_col))) from places;
