 /* Q1. Write a Query to find those Employees whose Salaries less than 6000.
 Return Full Name(first_Name and last name), and Salary;*/
  select concat(First_Name, " ", Last_Name) as FullName, Salary from employee
 where Salary <6000;

/*Write a Query to find those employee whose Salary is higher than 8000. 
Return first Name, last name, Department Number, and Salary*/
select first_Name, Last_Name, Department_id, Salary from employee
where Salary >8000; 

 /* Q3. Write a query to find those employees whose last name Is "McEwen".
 Return First Name, last_Name, and Department ID.*/
 select First_Name, Last_Name, Department_Id from employee
 where last_name = "McEwen";
 
/* Q4. Write a query to identify employees who do not have a department number. Return employee_id,
first_Name, last_Name, email, Phone_Number, hire_date, Job_Id, Salary, commision_Pct, Manager_Id
and Deprtment_Id.*/
select First_name, Last_Name, Email, Phone_Number, Hire_Date, Job_ID, Salary,Commision_PCT,
Manager_Id, Department_Id from employee 
where Department_Id is null; 
 
/* Q5. write a SQL query to find those employees whose first name does not contain the letter ‘M’. 
Sort the result-set in ascending order by department ID. Return full name (first and last name together),
 hire_date, salary and department_id. */
 
 select Concat(First_Name, " " ,Last_Name) as Full_Name, Hire_Date, Salary Department_Id
 from employee where First_Name not like "%m%"
 order by department_Id asc;

 /* Q6. write a SQL query to find those employees who earn between 8000 and 12000 (Begin and end values are included.) 
 and get some commission. These employees joined before ‘2003-06-05’
 and were not included in the department numbers 40, 120 and 70. Return all fields.*/ 
 Select*from employee 
 where salary Between 8000 and 14000
 and Commision_PCt is not Null
 or Department_Id not in (40,120,70)
 and Hire_Date<"2003-06-05";
 
/* Q7 write a SQL query to find those employees who do not earn any commission.
 Return full name (first and last name), and salary.*/
 select Concat(First_Name, " ", Last_Name) as Full_Name ,Salary
 from Employee where Commision_PCT is null;
 
 /* Q8  write a SQL query to find the employees whose salary is in the range 9000,17000 (Begin and end values are included). 
 Return full name, contact details and salary*/
 Select Concat(First_Name, " ", Last_name) as "Full Name", concat(Email, " - ", Phone_Number) as "Contact_Details"
 , Salary from employee 
 where Salary between 9000 and 17000;
 /* Q9.write a SQL query to find the employees whose first name ends with the letter ‘m’.
 Return the first and last name, and salary.*/
 select First_Name, Last_Name, Salary from employee
 where First_Name like "%m";
 
 /* Q10. write a SQL query to find those employees whose salaries are not between 7000 and 15000 (Begin and end values are included). 
 Sort the result-set in ascending order by the full name (first and last). Return full name and salary.*/
 select concat(First_Name, " ", Last_Name) as Full_Name, Salary from Employee
 where Salary not between 7000 and 15000 
 order by concat(First_Name, " ", Last_Name);
 
 /*Q11. write a  SQL query to find those employees who were hired between November 5th, 2007 and July 5th, 2009. 
 Return full name (first and last), job id and hire date.*/
 Select concat(First_Name, " ", Last_Name) as Full_Name, job_id, hire_Date
 from Employee Where Hire_Date between "2007-11-05" and "2009-07-05";

/* Q12 write a  SQL query to find those employees who work either in department 70 or 90. 
 Return full name (first and last name), department id.*/
 select concat(First_Name, " ", Last_Name) as Full_Name , Department_Id
 from employee where department_Id in (70, 90); 
 
/* Q13  write a  SQL query to find those employees who work under a manager.
 Return full name (first and last name), salary, and manager ID.*/
 select concat(First_Name, " ", Last_Name)as Full_Name, Salary, Manager_Id
 from employee where Manager_Id is not null;
   
/* Q14 write a  SQL query to find the employees who were hired before June 21st, 2002. Return all fields.*/
Select*from Employee where hire_Date < "2002-06-21";
 
/*Q15. write a  SQL query to find the employees whose managers hold the ID 120, 103, or 145. 
Return first name, last name,  email, salary and manager ID.*/
Select First_Name, Last_Name, email, Salary, Manager_Id from employee
where Manager_Id in (120,103,145);
 
  /* Q16. write a  SQL query to find employees whose first names contain the letters D, S, or N.
 Sort the result-set in descending order by salary. Return all fields.*/
 Select*from Employee where first_name like "d%"
 or first_name like "s%" or
 first_Name like "n%"
 order by Salary Desc;
 
 /* Q17  write a  SQL query to find those employees who earn above 11000 or the seventh character in their phone number is 3.
 Sort the result-set in descending order by first name. Return full name (first name and last name), hire date,
 commission percentage,  email, and telephone separated by '-', and salary.*/
 Select concat(First_Name, " ", Last_Name) as Full_Name, hire_Date, Commision_PCT, Concat(Email, " - ", Phone_Number)
 as Contact_Details, Salary from employee 
 where Salary>11000 or Phone_Number like "______3"
 order by First_Name desc;
 
 /*Q18. write a  SQL query to find those employees whose first name contains a character 's' in the third position.
 Return first name, last name and department id.*/
 select First_Name, Last_Name, Department_Id from employee
 where First_Name Like "__s%";
 
 /* Q19 write a  SQL query to count the number of employees, the sum of all salary, 
and difference between the highest salary and lowest salaries by each job id. 
Return job_id, count, sum, salary_difference.*/
Select Job_Id ,count(Employee_Id) as Total_Employee, sum(Salary) as Total_Salary, 
max(Salary)-min(Salary) as Salary_Difference from employee
group by Job_Id;
 
 /*Q20. write a  SQL query to count the number of employees worked under each manager. Return manager ID and number of employees.*/
 Select Manager_Id, Count(Employee_Id) from employee
 where Manager_Id is not null
 group by Manager_Id
 order by Manager_Id;

/* Q21. write a  SQL query to find all those employees who are either Sales Representatives or Salesmen.
 Return first name, last name and hire date.*/
 select First_Name, Last_Name, Hire_date from Employee
 Where job_id in ("SA_REP", "SA_MAN");

/*Q22. write a  SQL query to calculate the average salary of employees who receive a commission percentage for each department. 
Return department id, average salary.*/
Select Department_Id, avg(Salary) As Average_Salary from employee
where Commision_PCt is not null
group by Department_ID;

 /*Q23 write a  SQL query to find the departments where any manager manages four or more employees. Return department_id.*/
 Select department_ID from employee
 group by Department_id
 having count(employee_ID)>=4;
 
 /* Q24. write a  SQL query to find the departments where more than ten employees receive commissions. Return department id.*/
 Select Department_id from employee
 where commision_pct is not null
 group by Department_id
 having count(employee_Id)>=10;

/* Q25 write a  SQL query to find those employees who do not have commission percentage and have salaries between 7000, 12000 
 (Begin and end values are included.) and who are employed in the 
 department number 50. Return all the fields of employees.*/
 Select*from employee
 Where Commision_PCt is null
 and Salary between 7000 and 12000
 and Department_id = 50;

/* Q26  write a  SQL query to find the employees whose first or last name begins with 'D'. Return first name, last name.*/
Select First_Name, Last_name from employee
Where First_Name like "d%"
or Last_Name like "d%"; 






 
 
 
 