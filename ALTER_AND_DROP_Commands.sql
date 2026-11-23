DROP DATABASE IF EXISTS DDL_Commands;

CREATE DATABASE DDL_Commands;

USE DDL_Commands;

CREATE TABLE my_table (
    id INT,
    name VARCHAR(100) NOT NULL,
    age INT NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO my_table (id, name, age) VALUES
(1, 'Rohit', 25),
(2, 'Sachin', 35),
(3, 'Vikas', 28);

CREATE TABLE my_table2 (
    id INT,
    description VARCHAR(255) NOT NULL
);

INSERT INTO my_table2 (id, description) VALUES
(1, 'Item 1'),
(2, 'Item 2'),
(3, 'Item 3');
ALTER TABLE my_table
RENAME COLUMN name TO full_name;
ALTER TABLE my_table
MODIFY age BIGINT NOT NULL;
ALTER TABLE my_table
ADD email VARCHAR(100);
ALTER TABLE my_table
ADD middle_name VARCHAR(50) AFTER full_name;
ALTER TABLE my_table
ADD EMP_Rank INT FIRST;
ALTER TABLE my_table
MODIFY created_at DATETIME DEFAULT CURRENT_TIMESTAMP;
ALTER TABLE my_table2
MODIFY description TEXT NOT NULL;
ALTER TABLE my_table
MODIFY full_name VARCHAR(100) NULL;
ALTER TABLE my_table
ADD CONSTRAINT pk_my_table
PRIMARY KEY (id);
ALTER TABLE my_table
DROP COLUMN middle_name;
ALTER TABLE my_table
RENAME COLUMN email_address TO email;
ALTER TABLE my_table
MODIFY age BIGINT NULL;
ALTER TABLE my_table2
ADD CONSTRAINT fk_id
FOREIGN KEY (id)
REFERENCES my_table(id);
ALTER TABLE my_table2
DROP FOREIGN KEY fk_id;
ALTER TABLE my_table
MODIFY full_name VARCHAR(200) NULL;
DROP TABLE my_table2;
ALTER TABLE my_table2
DROP FOREIGN KEY fk_id;
ALTER TABLE my_table
DROP PRIMARY KEY;
ALTER TABLE my_table
DROP COLUMN age;
DROP DATABASE DDL_Commands;