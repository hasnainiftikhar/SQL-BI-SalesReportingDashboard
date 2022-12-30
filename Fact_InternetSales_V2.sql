-- Cleansed Fact_InternetSales Table --

SELECT 
	[ProductKey],
	[OrderDateKey],
	[DueDateKey],
	[ShipDateKey],
    [CustomerKey],
    --  ,[PromotionKey]
    --  ,[CurrencyKey]
    --  ,[SalesTerritoryKey]
    [SalesOrderNumber],
    --  ,[SalesOrderLineNumber]
    --  ,[RevisionNumber]
    --  ,[OrderQuantity]
    --  ,[UnitPrice]
    --  ,[ExtendedAmount]
    --  ,[UnitPriceDiscountPct]
    --  ,[DiscountAmount]
    --  ,[ProductStandardCost]
    --  ,[TotalProductCost]
    [SalesAmount]
    --  ,[TaxAmt]
    --  ,[Freight]
    --  ,[CarrierTrackingNumber]
    --  ,[CustomerPONumber]
    --  ,[OrderDate]
    --  ,[DueDate]
    --  ,[ShipDate]
  
FROM 
	[AdventureWorksDW2019].[dbo].[FactInternetSales]

WHERE
	LEFT (OrderDateKey,4) >= YEAR(GETDATE()) - 2	-- Geting data for last 2 years as mentioned in the Business Request

ORDER BY
	OrderDateKey ASC