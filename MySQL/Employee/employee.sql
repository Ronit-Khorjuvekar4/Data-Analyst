/* 1. From the following table return complete information about the employees */
SELECT * FROM Employee;

/*From the following table, write a SQL query to find the cities of all employees. Return city.*/
select city from employee;

/*From the following table, write a SQL query to find the unique addressline of the employees. Return addressline.*/
select distinct addressline from employee;

/*From the following table, write a SQL query to return EmployeeID, FirstName, LastName, City and AddressLine.*/
select EmployeeID, FirstName, LastName, City , AddressLine
from employee;

/*From the following table, write a SQL query to count the number of characters except the spaces for each FirstName. Return FirstName length.*/
select length(trim(firstname)) from employee;

/*From the following table, write a SQL query to count the number of characters except the spaces for each LastName. Return LastName length.*/
select length(trim(lastname)) from employee;

/*From the following table, write a SQL query to find the EmployeeID, FirstName, Email of all the employees.*/
select EmployeeID, FirstName, Email from employee;

/* From the following table, write a SQL query to find the unique AddressLine with LastName. Return AddressLine and LastName.*/
select distinct AddressLine , LastName from employee;

/*From the following table, write a SQL query to find those employees who do not belong to AddressLine Brazil. Return complete information about the employees.*/
select * from employee where addressline not in  ("Brazil");

/*From the following table, write a SQL query to find those employees who do not belong to AddressLine Argentina. Return complete information about the employees.*/
select * from employee where addressline not in  ("Argentina");

/*From the following table, write a SQL query to find those employees who EmployeeID's are before 105. Return complete information about the employees.*/
select * from employee where EmployeeID < 105;

/*From the following table, write a SQL query to find those employees who EmployeeID's are after 105. Return complete information about the employees.*/
select * from employee where EmployeeID > 105;

/*From the following table, write a SQL query to find those employees who EmployeeID's are before or equal to 105. Return complete information about the employees.*/
select * from employee where EmployeeID <= 105;

/*From the following table, write a SQL query to find those employees who EmployeeID's are after or equal to 105. Return complete information about the employees./*/
select * from employee where EmployeeID >= 105;

/*From the following table, write a SQL query to find those employees who EmployeeID is equal to 105. Return complete information about the employees.*/
select * from employee where EmployeeID = 105;

/*From the following table, write a SQL query to find the details of the employee ‘Carol’.*/
select * from employee where firstname = "Carol";

/*From the following table, write a SQL query to find the FirstName of the employees whose length is six. Return employee FirstName.*/
select firstname from employee where length(firstname) = 6;

/*From the following table, write a SQL query to find the details of the employee LastName ‘Santos’.*/
select * from employee where lastname = "Santos";

/*From the following table, write a SQL query to find those employees whose AddressLine is ‘Brazil’. Return complete information about the employees.*/
SELECT * FROM Employee WHERE AddressLine = 'Brazil';

/*From the following table, write a SQL query to find those employees whose AddressLine is ‘Argentina’. Return complete information about the employees.*/
SELECT * FROM Employee WHERE AddressLine = 'Argentina';

/*From the following table, write a SQL query to find those employees whose AddressLine are either Brazil or Argentina. Return complete information about the employees.*/
select * from employee where addressline in ('Brazil','Argentine');

/*From the following table, write a SQL query to find those employees whose AddressLine are either Chile or United States. Return complete information about the employees.*/
SELECT * FROM Employee WHERE AddressLine IN ('Chile','United States');

/*From the following table, write a SQL query to find those employees whose AddressLine begin's with C. Return complete information about the employees.*/
select * from employee where addressline like 'c%';

/*From the following table, write a SQL query to find those employees whose AddressLine ends with l. Return complete information about the employees.*/
select * from employee where addressline like '%l';

/*From the following table, write a SQL query to find those employees whose AddressLine values with 'rg' in between. Return complete information about the employees.*/
select * from employee where addressline like '%rg%';

