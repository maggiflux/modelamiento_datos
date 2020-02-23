CREATE TABLE departments(
	name VARCHAR(20),
	id INT PRIMARY KEY
);

CREATE TABLE workers(
	name VARCHAR(50),
	department_id INT REFERENCES departments(id),
	rut VARCHAR(12) PRIMARY KEY,
	address VARCHAR(120)
);

CREATE TABLE payrolls(
	id INT PRIMARY KEY,
	worker_id VARCHAR(12) REFERENCES workers(rut),
	url VARCHAR(200)
);

ALTER TABLE departments
ADD COLUMN boss_id varchar(12) REFERENCES workers(rut);