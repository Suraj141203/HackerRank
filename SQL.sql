Q. 1: The problem asks write a query to fetch data from the CITY table based on three specific requirements:
1.	"Query all columns": This means you need to select every field (ID, Name, CountryCode, District, Population). in SQL, the asterisk (*) is used to represent "all columns."
2.	"American cities": The problem states the CountryCode for America is USA. This is your first filter condition.
3.	"Populations larger than 100000": This is your second filter condition. You need to look for values strictly greater than 100,000.
The CITY table is described as follows:
                                     
                      CITY
Field                                             Type
ID                                                NUMBER
NAME                                            VARCHAR2(17)
COUNTRYCODE                                     VARCHAR2(3)
DISTRICT                                        VARCHAR2(20)
POPULATION                                        NUMBER

Solution : - MY SQL Query 
SELECT *FROM CITY WHERE COUNTRYCODE = 'USA'
AND POPULATION > 100000;


 
Problem Statement
Q.2: Write an SQL query to retrieve the employee_ID and name of employees who:
•	Work in the HR division
•	Have received a bonus of 5000 or more in the last quarter
 
Table: employee_information

Column Name	
Description
employee_ID	Employee ID
name	        Employee Name
division	Department Name

Table: last_quarter_bonus
	
Column Name	Description
employee_ID	Employee ID
bonus	Bonus Amount

Solution : - MY SQL Query
SELECT e.employee_ID, e.name FROM employee_information e
JOIN last_quarter_bonus b ON e.employee_ID = b.employee_ID
WHERE e.division = 'HR'  AND b.bonus >= 5000;


 
Problem Statement
Q.3: Write an SQL query to display the roll_number and name of students whose total marks in three subjects are less than 100.
Table: student_information
Column Name	Description
roll_number	Student Roll Number
name	        Student Name

Table: examination_marks
Column Name	Description
roll_number	Student Roll Number
subject_one	Marks in Subject One
subject_two	Marks in Subject Two
subject_three	Marks in Subject Three

Solution : - MY SQL Query

SELECT s.roll_number, s.name FROM student_information s
JOIN examination_marks e ON s.roll_number = e.roll_number
WHERE (e.subject_one + e.subject_two + e.subject_three) < 100
ORDER BY s.roll_number;


 

