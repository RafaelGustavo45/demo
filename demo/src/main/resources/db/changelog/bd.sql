create database projeto;

create table countrys
(
    country_id int primary key AUTOINCREMENT,
    country_name varchar(255),
    region_id int
)

create table jobs (
    job_id int primary key AUTOINCREMENT,
    job_title varchar(255),
    max_salary real,
    min_salary real
)

create table job_history(
    employee_id primary key AUTOINCREMENT,
    start_date DATE,
    end_date DATE,
    departament_id INT,
    job_id INT,
    FOREIGN KEY (job_id) REFERENCES jobs(job_id)
    
)

RENAME TABLE countrys TO countries;


create table locations(
    street VARCHAR(255),
    city VARCHAR(255),
    state VARCHAR(255),
    country_id INT,
    FOREIGN KEY (country_id) REFERENCES countries(country_id)
    
)

ALTER TABLE locations
ADD COLUMN region_id int;