# KPI Total Manufactured Quantity
SELECT 
SUM(`Manufactured Qty`) AS Total_Manufactured
FROM manfacturing;
SHOW COLUMNS FROM manfacturing;

#KPI Total Processed Quantity
SELECT 
SUM(`Processed Qty`) AS Total_Processed
FROM manfacturing;

# KPI Total Rejected Quantity
SELECT 
SUM(`Rejected Qty`) AS Total_Rejected
FROM manfacturing;

# KPI Total Sales
SELECT 
SUM(`TotalValue`) AS Total_Sales
FROM manfacturing;

# KPI Wastage Percentage
SELECT 
(
SUM(`Rejected Qty`) * 100 /
SUM(`Manufactured Qty`)
) AS Wastage_Percentage
FROM manfacturing;

# KPI Year Wise Sales
SELECT 
`Fiscal Year`,
SUM(`TotalValue`) AS Total_Sales
FROM manfacturing
GROUP BY `Fiscal Year`;

# KPI Month Wise Sales
SELECT 
MONTHNAME(STR_TO_DATE(`Fiscal Date`, '%d-%m-%Y')) AS Month_Name,
SUM(`TotalValue`) AS Monthly_Sales
FROM manfacturing
GROUP BY Month_Name;

#  Employee Wise Rejected Quantity
SELECT 
`Emp Name`,
SUM(`Rejected Qty`) AS Rejected_Quantity
FROM manfacturing
GROUP BY `Emp Name`
ORDER BY Rejected_Quantity DESC;

# Machine Wise Rejected Quantity
SELECT 
`Machine Name`,
SUM(`Rejected Qty`) AS Rejected_Quantity
FROM manfacturing
GROUP BY `Machine Name`
ORDER BY Rejected_Quantity DESC;

# Operation Wise Manufactured Quantity
SELECT 
`Operation Name`,
SUM(`Manufactured Qty`) AS Manufactured_Quantity
FROM manfacturing
GROUP BY `Operation Name`
ORDER BY Manufactured_Quantity DESC;

# Operation Wise Rejected Quantity
SELECT 
`Operation Name`,
SUM(`Rejected Qty`) AS Rejected_Quantity
FROM manfacturing
GROUP BY `Operation Name`
ORDER BY Rejected_Quantity DESC;

# Department Wise Manufactured vs Rejected Quantity
SELECT 
`Department Name`,

SUM(`Manufactured Qty`) AS Manufactured_Quantity,

SUM(`Rejected Qty`) AS Rejected_Quantity

FROM manfacturing
GROUP BY `Department Name`
ORDER BY Manufactured_Quantity DESC;

# Production Comparison Trends
SELECT 

`Fiscal Date`,

SUM(`Manufactured Qty`) AS Manufactured,

SUM(`Processed Qty`) AS Processed,

SUM(`Rejected Qty`) AS Rejected

FROM manfacturing

GROUP BY `Fiscal Date`

ORDER BY STR_TO_DATE(`Fiscal Date`, '%d-%m-%Y');

# Quarter Wise Sales
SELECT 

QUARTER(
STR_TO_DATE(`Fiscal Date`, '%d-%m-%Y')
) AS Quarter_No,

SUM(`TotalValue`) AS Quarter_Sales

FROM manfacturing

GROUP BY Quarter_No

ORDER BY Quarter_No;

# Machine Wise Manufactured vs Rejected Quantity
SELECT 

`Machine Name`,

SUM(`Manufactured Qty`) AS Manufactured_Quantity,

SUM(`Rejected Qty`) AS Rejected_Quantity

FROM manfacturing

GROUP BY `Machine Name`

ORDER BY Manufactured_Quantity DESC;

# Employee Wise Manufactured vs Rejected Quantity
SELECT 

`Emp Name`,

SUM(`Manufactured Qty`) AS Manufactured_Quantity,

SUM(`Rejected Qty`) AS Rejected_Quantity

FROM manfacturing

GROUP BY `Emp Name`

ORDER BY Manufactured_Quantity DESC;

SELECT COUNT(*) AS Total_Rows
FROM manfacturing;



