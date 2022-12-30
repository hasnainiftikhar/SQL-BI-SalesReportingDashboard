-- Cleansed Dim_Customer Table --

SELECT c.CustomerKey as CustomerKey,
      -- ,[GeographyKey]
      -- ,[CustomerAlternateKey]
      -- ,[Title]
      c.FirstName as [First Name],
      -- ,[MiddleName]
      c.LastName as [Last Name],
	  c.FirstName + ' ' + c.LastName AS [Full Name],  -- Combining First & Last Name
      -- ,[NameStyle]
      -- ,[BirthDate]
      -- ,[MaritalStatus]
      -- ,[Suffix]
      -- ,[Gender]
	  CASE c.gender WHEN 'M' THEN 'Male' WHEN 'F' THEN 'Female' END AS Gender, -- Replacing M and F with Male and Female respectively
      -- ,[EmailAddress]
      -- ,[YearlyIncome]
      -- ,[TotalChildren]
      -- ,[NumberChildrenAtHome]
      -- ,[EnglishEducation]
      -- ,[SpanishEducation]
      -- ,[FrenchEducation]
      -- ,[EnglishOccupation]
      -- ,[SpanishOccupation]
      -- ,[FrenchOccupation]
      -- ,[HouseOwnerFlag]
      -- ,[NumberCarsOwned]
      -- ,[AddressLine1]
      -- ,[AddressLine2]
      -- ,[Phone]
      c.datefirstpurchase AS DateFirstPurchase,
      -- ,[CommuteDistance]
	  g.city AS [Customer City]
 
  FROM [AdventureWorksDW2019].[dbo].[DimCustomer] as c
	LEFT JOIN dbo.DimGeography as g ON g.GeographyKey = c.GeographyKey  -- Need to be understood
  
  ORDER BY
	CustomerKey ASC


