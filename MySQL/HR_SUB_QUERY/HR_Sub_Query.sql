/* write a query to display the name for those employee who gets more salary than the employee ID 103*/
select first_name,last_name 
	from employees 
    where salary > 
		(select salary 
			from employees 
            where employee_id = 103
		);
        
        
/*write a query to diplay the name ,salary, department id, job id, from whose employees who works in same designation as the employee who works whos id is 169*/
select first_name, last_name, department_id, job_id 
	from employees
    where job_id in (select job_id from employees where employee_id = 200);
    
    
/*write a query to display the name , salary, department id for those employees who earn such amount of salary which is smallet salary of any of the department*/
select first_name, department_id,salary 
	from employees 
    where salary in (
		select min(salary) 
		from employees
		group by department_id
        )
	order by department_id;


/*write a query to display the employee id, name, for al employees who earn more than the average salary*/
select first_name, employee_id, salary
	from employees where salary > (
		select round(avg(salary),2) from employees
    );
    
    
/* write a query to display name, employee id, and salary of all employees who report to payam */
select first_name, employee_id,salary, manager_id
	from employees 
		where manager_id in (
			select manager_id
				from employees 
					where first_name = "Payam"
        );
        

/*write a query to display department number, name, job and department name for all employees in finance department*/
select e.department_id, e.first_name,e.job_id, d.department_name 
	from employees e
		left join departments d
			on e.department_id = d.department_id
			where department_name = "Finance";
        
        
/*write a query to display all the information of an employee whoes salary and reporting person id is 4800 and 103 respectively*/
select * 
	from employees
    where (manager_id,salary) in
    (
		select manager_id,salary from employees where salary = 4800 and manager_id = 103
    );
    
    
/*Display all the information of an employee whoes id is any of the number 134, 159,183*/
select * 
	from employees
    where employee_id in (192,206,200);
    
    
/*Write a query to display all the information of the employees whoes salary is within range 1000 and 3000*/
select * from employees where salary between 1000 and 3000;


/*Write a query to display all the information of the employees who salary is withn the range of smallest salary and 2500 */
select * 
	from employees 
		where salary between (
			select min(salary)
			from employees
        ) and 2500;
        
        
        
/*Write a query to display all the information of the employees, who does not work in those department, where some 
employees works whoes manager id within range 100 and 200*/
select * 
	from employees
		where department_id not in(
			select department_id 
				from departments 
					where manager_id between 100 and 200
                    );
                    

/*Write a query to display all the information of the employees, whoes id is any id who earn the second highest salary*/
select * from employees
	where employee_id in
    (
		select employee_id
		from employees
			where salary = (
				select max(salary) from employees
					where salary < (
						select max(salary) from employees
					)
			)
    );
    

/*Write a query to display employee name and hiredate for all employees in the same department as clara. Exclude clara*/
select first_name, hire_date
	from employees
		where department_id in (
			select department_id
				from employees
					where first_name = 'David'
        );
       
       
/*/*Write a query to display employee number and name for all employees who work in a department WITH ANY EMPLOYEE who name contains T*/
select * 
	from employees
		where department_id in (
			select department_id
				from departments
					where department_id in (
						select department_id
							FROM employees 
								where first_name like '%T%'
					));
                    
                    
/*/*Write a query to display employee number, name and salary of all employees 
who earn more than everage salary and who work in a department with any employee with a J in their name*/
select e.first_name, e.employee_id , j.job_title
from employees e
left join jobs j on e.job_id = j.job_id
where department_id in ( 
	select department_id
	from departments
	where location_id in ( 
		select location_id 
		from locations 
		where city = 'Toronto'));
        
        
        
/*write a query to display the employee number, name, and job title 
whoes salary is smaller than any salary of thoes employees whoes job title is 'ACCOUNTANT'*/
select * from employees
	where salary < any(
		select salary from employees where job_id = (
			select job_id from jobs where job_title = 'Accountant'
        )
    );
    
    
/*write a query to display the employee number, name, and job title 
whoes salary is more than any salary of thoes employees whoes job title is 'ACCOUNTANT'*/
select * from employees where salary > any (
	select salary from employees where job_id in (
		select job_id from jobs where job_title = 'Accountant'
        ) 
);



/*write a query to display the employee number,name, job title, for all employees whoes salary is more than average salary of any department*/
select * from employees where salary > any (
	select avg(salary) from employees group by department_id);
    


/*write a query to display the employee name, department for all employees for all existence for those employees whoes salary is more than 3700*/
select employee_id,first_name,department_id 
	from employees where exists (
		select salary from employees where salary > 3700);
        

/*write a query to display the department id and total salary for those employees which contains atlest one employee*/
SELECT department_id, SUM(salary) AS total_salary
FROM employees
GROUP BY department_id
HAVING COUNT(employee_id) > 0;


/*write a query to display the employee no, name, job title with a modified title 
SALESMAN for those employees whoes job title is sales representative and DEVELOPER for job title programmer*/
select employee_id, first_name,
case job_id 
when 9 then 'programmer'
when 16 then 'salesman'
else job_id
end as designation, salary
from employees;


/*write a query to display the employee no,name, salary and salaryStatus column
with a title HIGH and LOW respectively for those employees whoes salary is more than and less than of average salary of all employees*/
select employee_id,first_name,salary,
case salary 
when salary >= (select avg(salary) from employees) then 'High' else 'Low'
end as SalaryStatus
from employees;


/* write as query to display the employee id, name, salaryDrawn, Avgcompare (salary - average salaryof all employees)
and the salary status column with the title high and low respective of those employees whoes salary is more than and less than of average salary of all employees*/
select employee_id, first_name, salary, (salary - (select avg(salary) from employees)) as AvgCompare,
case salary
when salary >= (select avg(salary) from employees) then 'High' else 'Low'
end as SalaryStatus
from employees;


        






    

    

    

    


    








