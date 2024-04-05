SET FOREIGN_KEY_CHECKS = 0;
/*
				Assignment 5
                  Worth 5%
                Total Assignment is out of 50 marks  
				Complete all of the questions in this SQL file and submit the file for grading
                Open this file in SQL Workbench to complete all of the statements
                
                Make sure you run the CreateDB Script to create the sample database 
				
                You will need it to create the queries based on these tables
                
                There is a .jpg file which shows the tables in the database
/*
 Question 1
 
Write a CREATE table statement that has a PRIMARY KEY column and have that column auto generate a value on INSERT ( 5 marks )
 
*/
DROP DATABASE IF EXISTS assignment3;
CREATE DATABASE assignment3;
use assignment3;
create table assignment3_tbl (
numbering float auto_increment primary key,
item varchar(12) not null
);

/*
 Question 2
 
 Write 5 INSERT statements that add data to the table from Question 1 but doesn't include the PRIMARY KEY to test the auto numbering ( 5 marks )
 
*/
INSERT INTO assignment3_tbl (item) VALUES ('First');
INSERT INTO assignment3_tbl (item) VALUES ('Second');
INSERT INTO assignment3_tbl (item) VALUES ('Third');
INSERT INTO assignment3_tbl (item) VALUES ('Fourth');
INSERT INTO assignment3_tbl (item) VALUES ('Fifth');

select * from assignment3_tbl;
desc assignment3_tbl;
/*
 Question 3
 
 Write an ALTER statment to add a date column to the table from Question 1 and set a default of January 1 2020 ( 7 marks )
 
*/
ALTER TABLE assignment3_tbl ADD date_birth date default '2020-01-01';
select * from assignment3_tbl;
desc assignment3_tbl;
/*
 Question 4
 
 Write an ALTER statment to remove the date column you just added to your table (7 marks)
*/
ALTER TABLE assignment3_tbl drop date_birth;
select * from assignment3_tbl;
desc assignment3_tbl;
/*
 Question 5
 
  Write a single ALTER statment to modify the name and datatype of two of your columns in your table from Question 1   ( 8 marks )
 */
ALTER TABLE assignment3_tbl change column item item_changed int,
change column numbering numbering_changed int not null;
select * from assignment3_tbl;
desc assignment3_tbl;
/*
 Question 6
 
  Write a single ALTER statment to add two columns to your table from Question 1, the first column needs a DEFAULT value, the second column needs to be put in between your first and second column of the table ( 8 marks )
 */
ALTER TABLE assignment3_tbl add new_column int default 1, add new_column2 int default 3 after numbering_changed;

select * from assignment3_tbl;
desc assignment3_tbl;
/*
 Question 7
 
  Write a CREATE table statment that has an ID column (with a PRIMARY KEY and an AUTO generating number) and a description column.   
  ALTER the table from Question 1 to have that ID column added to it and make a FOREIGN KEY reference 
  INSERT records into the new table AND UPDATE the table from Question 1 with the new ID fields
  ( 10 marks )
 */
create table question7_tbl (ID int auto_increment primary key, description varchar(255) not null);

INSERT INTO question7_tbl (description) VALUES ('primero');
INSERT INTO question7_tbl (description) VALUES ('segundo');
INSERT INTO question7_tbl (description) VALUES ('tercero');
INSERT INTO question7_tbl (description) VALUES ('cuarto');
INSERT INTO question7_tbl (description) VALUES ('quinto');

ALTER TABLE assignment3_tbl ADD NewID INT, ADD FOREIGN KEY (NewID) REFERENCES question7_tbl(ID);

UPDATE assignment3_tbl 
SET NewID = (SELECT ID FROM question7_tbl WHERE Description = 'primero') WHERE numbering_changed = 1;
UPDATE assignment3_tbl 
SET NewID = (SELECT ID FROM question7_tbl WHERE Description = 'segundo') WHERE numbering_changed = 2;
UPDATE assignment3_tbl 
SET NewID = (SELECT ID FROM question7_tbl WHERE Description = 'tercero') WHERE numbering_changed = 3;
UPDATE assignment3_tbl 
SET NewID = (SELECT ID FROM question7_tbl WHERE Description = 'cuarto') WHERE numbering_changed = 4;
UPDATE assignment3_tbl 
SET NewID = (SELECT ID FROM question7_tbl WHERE Description = 'quinto') WHERE numbering_changed = 5;

select * from assignment3_tbl;
desc assignment3_tbl;
select * from question7_tbl;
desc question7_tbl;
select NewID from assignment3_tbl;
 
 
