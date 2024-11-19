create database projeto;

create table countrys
(
    country_id int primary key AUTOINCREMENT;
    country_name varchar(255);
    region_id int;
)