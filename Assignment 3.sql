SET FOREIGN_KEY_CHECKS = 0;

DROP DATABASE IF EXISTS assignment3;
CREATE DATABASE assignment3;
use assignment3;
create table assignment3_tbl (
numbering float auto_increment primary key,
item varchar(12) not null
);

INSERT INTO assignment3_tbl (item) VALUES ('First');
INSERT INTO assignment3_tbl (item) VALUES ('Second');
INSERT INTO assignment3_tbl (item) VALUES ('Third');
INSERT INTO assignment3_tbl (item) VALUES ('Fourth');
INSERT INTO assignment3_tbl (item) VALUES ('Fifth');

select * from assignment3_tbl;
desc assignment3_tbl;

ALTER TABLE assignment3_tbl ADD date_birth date default '2020-01-01';
select * from assignment3_tbl;
desc assignment3_tbl;

ALTER TABLE assignment3_tbl drop date_birth;
select * from assignment3_tbl;
desc assignment3_tbl;

ALTER TABLE assignment3_tbl change column item item_changed int,
change column numbering numbering_changed int not null;
select * from assignment3_tbl;
desc assignment3_tbl;

ALTER TABLE assignment3_tbl add new_column int default 1, add new_column2 int default 3 after numbering_changed;

select * from assignment3_tbl;
desc assignment3_tbl;

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
 
 
