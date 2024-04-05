/*
				Assignment 2
                  
                Total Assignment is out of 45 marks  
				Complete all of the questions in this SQL file and submit the file for grading
                Open this file in SQL Workbench to complete all of the statements
                
                Make sure you run the CreateDB Script to create the sample database 
				
                You will need it to create the queries based on these tables
                
                There is a .jpg file which shows the tables in the database

*/
/* Question 1 */
SELECT * FROM DEPARTMENT;

/* Question 2 */
SELECT * FROM EMPLOYEE LIMIT 5;

/* Question 3 */
SELECT * FROM PROJECT WHERE PRSTAFF > 3;

/* Question 4 */
SELECT PROJNO, RESPEMP, PRSTDATE, PRENDATE FROM PROJECT WHERE '2002-07-01' BETWEEN PRSTDATE AND PRENDATE;

/* Question 5 */
SELECT PROJNO, PROJNAME, DEPTNO FROM PROJECT WHERE PROJNAME LIKE '%PROGRAMMING%';

/* Question 6 */
SELECT * FROM PROJECT WHERE MAJPROJ LIKE 'AD____';

/* Question 7 */
SELECT * FROM EMPLOYEE WHERE LENGTH(REPLACE(JOB, ' ', '')) = 5;

/* Question 8 */
SELECT EMPNO, CONCAT(FIRSTNME, ' ', LASTNAME) AS FULLNAME FROM EMPLOYEE;

/* Question 9 */
SELECT EMPNO, SUBSTRING(FIRSTNME, 1, 4) AS FIRSTNME, SUBSTRING(LASTNAME, 2) AS LASTNAME FROM EMPLOYEE;

/* Question 10 */
SELECT EMPNO, YEAR(HIREDATE) AS HIRE_YEAR, MONTH(BIRTHDATE) AS BIRTH_MONTH FROM EMPLOYEE;

/* Question 11 */
UPDATE EMPLOYEE SET LASTNAME = 'SMITH' WHERE LASTNAME != 'SMITH';

/* Question 12 */
UPDATE PROJECT SET MAJPROJ = 'AD9999' WHERE MAJPROJ IS NULL;

/* Question 13 */
UPDATE INVENTORY SET QUANTITY = 200, LOCATION = 'Barrie' WHERE PID LIKE '_______1%';

/* Question 14 */
UPDATE EMPLOYEE SET SALARY = SALARY * 1.1 WHERE DATEDIFF(CURDATE(), BIRTHDATE) / 365 > 40;

/* Question 15 */
DELETE FROM EMPLOYEE WHERE EMPNO = '000030';

/* Question 16 */
DELETE FROM EMPLOYEE WHERE SALARY + COMM < 40000 AND DATEDIFF(CURDATE(), HIREDATE) < 2920;

/* Question 17 */
DELETE FROM SALES WHERE REGION LIKE '%South%' AND MONTH(SALES_DATE) = 4;

CREATE TABLE MIDTERM ( EMP_NAME varchar (100), CREATE_DATE date)
