CREATE DATABASE clinic_DB;

CREATE TABLE patients(
  id INT GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
  name VARCHAR(100),
  date_of_birth date
)
