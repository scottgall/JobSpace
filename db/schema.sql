-- Drops the find_job if it exists currently --
DROP DATABASE IF EXISTS find_job;
-- Creates the "find_job" database --
CREATE DATABASE find_job;

USE find_job;

CREATE TABLE jobs (
  id INT PRIMARY KEY,  
  company VARCHAR(100) NOT NULL,
  location TEXT,
  title VARCHAR(100) NOT NULL,
  description TEXT,
  company_link VARCHAR(256),
  posting_link TEXT,
  primary_contact_name VARCHAR(100),
  primary_contact_position VARCHAR(100),
  primary_contact_email VARCHAR(256),
  primary_contact_phone VARCHAR(25),
  salary INT,
  notes TEXT,
  stage VARCHAR(100) NOT NULL
);

CREATE TABLE events (
  id INT PRIMARY KEY,
  job_id INT NOT NULL,
  event_time DATETIME NOT NULL,
  location TEXT,
  name VARCHAR(256),
  notes TEXT,
  contact_name VARCHAR(100),
  contact_position VARCHAR(100),
  contact_email VARCHAR(256),
  contact_phone VARCHAR(25),
  FOREIGN KEY (job_id) REFERENCES jobs(id)
);