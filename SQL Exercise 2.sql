/* joins: select all the computers from the products table:
using the products table and the categories table, return the product name and the category name */
 select * from products left join categories on products.CategoryID = categories.CategoryID where products.CategoryID = 1;
/* joins: find all product names, product prices, and products ratings that have a rating of 5 */
 Select * from products
 left join reviews
 on products.ProductID = reviews.ProductID where Rating = 5;
/* joins: find the employee with the most total quantity sold.  use the sum() function and group by */
Select employees.FirstName, employees.MiddleInitial, employees.LastName, sum(sales.Quantity)
from employees
left join sales
on employees.employeeid = sales.EmployeeID group by employees.Employeeid order by sum(sales.quantity)desc;
/* joins: find the name of the department, and the name of the category for Appliances and Games */
select * from departments
left join categories
on departments.DepartmentID = categories.DepartmentID
where categories.Name = "Appliances" or categories.Name = "Games";

/* joins: find the product name, total # sold, and total price sold,
 for Eagles: Hotel California --You may need to use SUM() */
select products.Name, sum(sales.Quantity), sum(sales.PricePerUnit) from products
left join sales
on products.ProductID = sales.ProductID
where products.Name = "Eagles: Hotel California";
/* joins: find Product name, reviewer name, rating, and comment on the Visio TV. (only return for the lowest rating!) */


-- ------------------------------------------ Extra - May be difficult
/* Your goal is to write a query that serves as an employee sales report.
This query should return:
-  the employeeID
-  the employee's first and last name
-  the name of each product
-  and how many of that product they sold */