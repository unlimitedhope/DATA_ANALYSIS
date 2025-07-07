

Select*
from [dbo].[Table1$]
--Create a department table manager
select Department,[Employee Name#1],[Employee Name#2] INTO department_manager
from  [dbo].[Table1$]

--Retrive first 10 record

select top 10 * from [dbo].[Table1$]

--Count d No employees per department
select Department, count(*) as Noofemployee from [dbo].[Table1$]
group by Department

--find the average salary per department
select Department, avg([Base Salary]) as averagesalary from [dbo].[Table1$]
group by Department;

--Retrive Top 10 higest earning employees
select Top 10 [Employee Name#1],[Employee Name#2],[Base Salary]from [dbo].[Table1$]
order by [Base Salary] Desc;

--Find the No of high performing employees
select Department, count(*)Sales_performance_Status from [dbo].[Table1$]
Where [Sales Performance Status]='High Performer'
group by Department;

--Find the department with the most customer complaint
select Top 2 Department, count(*)[Customer_Complaints] from [dbo].[Table1$]
group by Department
order by [Customer_Complaints] Desc

--Identify Employees with poor customer handling
select [Employee Name#1],[Employee Name#2],[Customer Handling Rating] from [dbo].[Table1$]
Where [Customer Handling Rating]='Needs Improvement'

--Count Employess with execellent service
select count(*) as Excellent_service from [dbo].[Table1$]
where [Customer Handling Rating]='Excellent Service'

--Identify employees with poor customer handling (Low rating & high complaints).
Select