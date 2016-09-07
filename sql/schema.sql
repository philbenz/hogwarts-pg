DROP DATABASE IF EXISTS hogwarts_phil_benz;
CREATE DATABASE hogwarts_phil_benz;

\c hogwarts_phil_benz;

--ADDRESSES
CREATE TABLE addresses (
  id serial PRIMARY KEY,
  street1 varchar(30),
  street2 varchar(30),
  city varchar(30),
  state varchar(2),
  post_code varchar(10)
);

--CONTACTS
CREATE TABLE contacts (
  id serial PRIMARY KEY,
  first_name varchar(30),
  last_name varchar(30),
  mobile_owl varchar(15),
  office_owl varchar(15),
  home_owl varchar(15),
  address_id integer
);

--HOUSES
CREATE TABLE houses (
  id serial PRIMARY KEY,
  house_name varchar(20),
  colors varchar(20),
  address_id integer
);

--TEACHERS
CREATE TABLE teachers (
  id serial PRIMARY KEY,
  contact_id integer,
  department_id integer
);

--DEPARTMENTS
CREATE TABLE departments (
  id serial PRIMARY KEY,
  department_name varchar(255),
  subject varchar(255)
);

--STUDENTS
CREATE TABLE students (
  id serial PRIMARY KEY,
  contact_id integer,
  house_id integer,
  schedule_id integer,
  year integer
);

--PARENTS
CREATE TABLE parents (
  id serial PRIMARY KEY,
  contact_id integer,
  student_id integer,
  relationship varchar(10)
);

--SCHEDULES
CREATE TABLE schedules (
  id serial PRIMARY KEY,
  student_id integer,
  classes_id integer,
  year_active integer
);

--CLASSES
CREATE TABLE classes (
  id serial PRIMARY KEY,
  subject varchar(30),
  teacher_id integer,
  year varchar(10)
);

--HOUSES HEADS
CREATE TABLE houses_heads (
  teacher_id integer,
  house_id integer
);

--SORTING HATS
CREATE TABLE sorting_hats (
  id serial PRIMARY KEY,
  houses_id integer,
  is_a_jerk boolean
);
