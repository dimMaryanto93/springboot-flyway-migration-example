-- type: Postgresql V10
-- version: V1_1

-- create table regions
CREATE TABLE public.regions (
  region_id   SERIAL NOT NULL PRIMARY KEY,
  region_name CHARACTER VARYING(25)
);

-- create table countries
CREATE TABLE public.countries (
  country_id   CHARACTER VARYING(2) PRIMARY KEY NOT NULL,
  country_name CHARACTER VARYING(40),
  region_id    INTEGER                          NOT NULL
);

-- create table locations
CREATE TABLE public.locations (
  location_id    SERIAL PRIMARY KEY NOT NULL,
  street_address CHARACTER VARYING(40),
  postal_code    CHARACTER VARYING(12),
  city           CHARACTER VARYING(30),
  state_province CHARACTER VARYING(25),
  country_id     CHARACTER VARYING(2)
);

--create table departments
CREATE TABLE public.departments (
  department_id   SERIAL NOT NULL PRIMARY KEY,
  department_name CHARACTER VARYING(30),
  manager_id      INTEGER,
  location_id     INTEGER
);

-- create table employees
CREATE TABLE public.employees (
  employee_id    SERIAL                NOT NULL PRIMARY KEY,
  first_name     CHARACTER VARYING(20),
  last_name      CHARACTER VARYING(25) NOT NULL,
  email          CHARACTER VARYING(25) NOT NULL UNIQUE,
  phone_number   CHARACTER VARYING(20),
  job_id         CHARACTER VARYING(10),
  salary         DECIMAL(8, 2),
  commission_pct DECIMAL(2, 2),
  manager_id     INTEGER,
  department_id  INTEGER
);

--create table jobs
CREATE TABLE public.jobs (
  job_id     CHARACTER VARYING(10) NOT NULL PRIMARY KEY,
  job_title  CHARACTER VARYING(35),
  min_salary DECIMAL(6),
  max_salary DECIMAL(6)
);

-- create table job_history
CREATE TABLE public.job_history (
  employee_id   INTEGER,
  start_date    TIMESTAMP,
  end_date      TIMESTAMP,
  job_id        VARCHAR(10),
  department_id INTEGER
);