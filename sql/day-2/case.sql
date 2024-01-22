SELECT FirstName, LastName, Age, 
CASE 
  WHEN Age > 30 THEN 'Old'
  WHEN Age BETWEEN 26 AND 29 THEN 'Young'
  ELSE 'Baby'
END AS AgeCAtegory 
FROM EmployeeDemographics