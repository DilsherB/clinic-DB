CREATE DATABASE clinic_DB;

CREATE TABLE patients(
  id INT GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
  name VARCHAR(100),
  date_of_birth date
)

CREATE TABLE medical_histories(
  id INT GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
  admitted_at DATE,
  patient_id INT,
  status VARCHAR(80)
)

CREATE TABLE treatments (
  id INT GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
  type VARCHAR(80),
  name VARCHAR(100)
)

CREATE TABLE invoices (
  id INT GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
  total_amount DECIMAL,
  generated_at DATE,
  payed_at DATE,
  medical_history_id INT REFERENCES medical_histories(id)
)

CREATE TABLE invoice_items(
  id INT GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
  unit_price DECIMAL,
  quantitiy INT,
  total_price DECIMAL,
  invoice_id INT REFERENCES invoices(id),
  treatment_id INT REFERENCES treatments(id)
)

CREATE TABLE treatment_histories(
  medical_histories_id INT REFERENCES medical_histories(id),
  treatments_id INT REFERENCES treatments(id)
)