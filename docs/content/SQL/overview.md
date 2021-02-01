####Q1: Why we use Stored Procedure?

Ans: There are several reasons to use a Stored Procedure. They are a network load reducer and decrease execution time because they are precompiled. The most important use of a Stored Procedure is for security purposes. They can restrict SQL Injection. We can avoid SQL injection by use of a Stored Procedure.

####Q30: How to create a Stored Procedure?

Ans: 

``` SQL
CREATE PROCEDURE spEmployee   
AS   
BEGIN   
  
SELECT EmployeeId, Name, Gender, DepartmentName   
FROM tblEmployees   
INNER JOIN tblDepartments   
ON tblEmployees.EmployeeDepartmentId = tblDepartments.DepartmentId   
END 
```

####Q2: What is a function in SQL Server?

Ans: A function is a sequence of statements that accepts input, processes them to perform a specific task and provides the output. Functions must have a name but the function name can never start with a special character such as @, $, #, and so on.
 
Types of function
- Pre-Defined Function
- User-Defined Function

**User-defined Function**:
 
In a user-defined function, we write our logic according to our needs. The main advantage of a user-defined function is that we are not just limited to pre-defined functions. We can write our own functions for our specific needs or simplify complex SQL code. The return type of a SQL function is either a scalar value or a table.
 
Creation of a function
``` SQL
Create function ss(@id int)   
returns table   
as   
return select * from item where itemId = @id  
```

Execution of a Function
> select * from ss(1)   


####Q3: 

Ans: 

####Q33: 

Ans: 

####Q34: 

Ans: 

####Q35: 

Ans: 

####Q36: 

Ans: 

####Q37: 

Ans: 

####Q38: 

Ans: 

####Q39: 

Ans: 

####Q40: 

Ans: 

####Q41: 

Ans: 

####Q42: 

Ans: 

####Q43: 

Ans: 

####Q44: 

Ans: 

####Q45: 

Ans: 

####Q46: 

Ans: 


