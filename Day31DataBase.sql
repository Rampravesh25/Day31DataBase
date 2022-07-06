create database payroll_service;
show databases;
use payroll_service;

create table employee_payroll (employee_id int auto_increment, employee_name varchar(20), employee_salary int, employee_start_date date, primary key(employee_id));
desc employee_payroll;
select * from employee_payroll;

insert into employee_payroll(employee_name, employee_salary, employee_start_date) values('rampravesh',45000,'2012-12-02'),('max',55000,'2011-08-02'),('Vinit',65000,'2009-07-08');

select * from employee_payroll;

select employee_salary from employee_payroll where employee_name = 'max';
select employee_start_date from employee_payroll where employee_start_date BETWEEN('2009-05-10') AND DATE(NOW());

alter table employee_payroll add employee_gender varchar(20) after employee_name; 
update employee_payroll set employee_gender = 'M' where employee_name = 'rampravesh' or employee_name = 'max';
update employee_payroll set employee_gender = 'F' where employee_name = 'Vinit';

select sum(employee_salary) as sum from employee_payroll;
select avg(employee_salary) as average from employee_payroll;
select min(employee_salary) as Minimum from employee_payroll;
select max(employee_salary) as Minimum from employee_payroll;
select employee_gender from employee_payroll group by employee_gender;
select count(employee_gender), employee_payroll.employee_gender from employee_payroll group by employee_gender;
