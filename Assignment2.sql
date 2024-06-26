
SELECT * FROM DEPARTMENT;

SELECT * FROM EMPLOYEE LIMIT 5;

SELECT * FROM PROJECT WHERE PRSTAFF > 3;

SELECT PROJNO, RESPEMP, PRSTDATE, PRENDATE FROM PROJECT WHERE '2002-07-01' BETWEEN PRSTDATE AND PRENDATE;

SELECT PROJNO, PROJNAME, DEPTNO FROM PROJECT WHERE PROJNAME LIKE '%PROGRAMMING%';

SELECT * FROM PROJECT WHERE MAJPROJ LIKE 'AD____';

SELECT * FROM EMPLOYEE WHERE LENGTH(REPLACE(JOB, ' ', '')) = 5;

SELECT EMPNO, CONCAT(FIRSTNME, ' ', LASTNAME) AS FULLNAME FROM EMPLOYEE;

SELECT EMPNO, SUBSTRING(FIRSTNME, 1, 4) AS FIRSTNME, SUBSTRING(LASTNAME, 2) AS LASTNAME FROM EMPLOYEE;

SELECT EMPNO, YEAR(HIREDATE) AS HIRE_YEAR, MONTH(BIRTHDATE) AS BIRTH_MONTH FROM EMPLOYEE;

UPDATE EMPLOYEE SET LASTNAME = 'SMITH' WHERE LASTNAME != 'SMITH';

UPDATE PROJECT SET MAJPROJ = 'AD9999' WHERE MAJPROJ IS NULL;

UPDATE INVENTORY SET QUANTITY = 200, LOCATION = 'Barrie' WHERE PID LIKE '_______1%';

UPDATE EMPLOYEE SET SALARY = SALARY * 1.1 WHERE DATEDIFF(CURDATE(), BIRTHDATE) / 365 > 40;

DELETE FROM EMPLOYEE WHERE EMPNO = '000030';

DELETE FROM EMPLOYEE WHERE SALARY + COMM < 40000 AND DATEDIFF(CURDATE(), HIREDATE) < 2920;

DELETE FROM SALES WHERE REGION LIKE '%South%' AND MONTH(SALES_DATE) = 4;

CREATE TABLE MIDTERM ( EMP_NAME varchar (100), CREATE_DATE date)
