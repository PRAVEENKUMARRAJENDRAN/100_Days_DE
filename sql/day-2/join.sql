SELECT * 
FROM SQLTutorial.dbo.EmployeeDemographics 
FULL OUTER Join SQLTutorial.dbo.EmployeeSalary 
     ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID


-- INNER JOIN 
SELECT * 
FROM SQLTutorial.dbo.EmployeeDemographics 
INNER Join SQLTutorial.dbo.EmployeeSalary 
     ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID

-- LEFT OUTER JOIN 
SELECT * 
FROM SQLTutorial.dbo.EmployeeDemographics 
LEFT OUTER Join SQLTutorial.dbo.EmployeeSalary 
     ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID


-- RIGHT OUTER JOIN 
SELECT * 
FROM SQLTutorial.dbo.EmployeeDemographics 
RIGHT OUTER Join SQLTutorial.dbo.EmployeeSalary 
     ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID


-- Find a salary is highest then the Micheal
SELECT EmployeeDemographics.EmployeeID, FirstName, LastName, Salary
FROM SQLTutorial.dbo.EmployeeDemographics 
INNER JOIN SQLTutorial.dbo.EmployeeSalary 
    ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
WHERE FirstName <> 'Micheal'
ORDER BY salary DESC

-- SELECT the average salary of the salesname
SELECT Jobtitle, AVG(Salary)
FROM SQLTutorial.dbo.EmployeeDemographics
INNER JOIN SQLTutorial.dbo.EmployeeSalary 
    ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
WHERE JobTitle = 'Salesman'
GROUP BY JobTitle