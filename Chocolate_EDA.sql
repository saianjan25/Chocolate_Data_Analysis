SELECT * 
FROM chocolate_data;

SELECT 
	First_Name,
    SUM(`Purchase_Amount`) as TOTAL_SALES_PER_PERSON
FROM chocolate_data
GROUP BY First_Name
ORDER BY 2 DESC
LIMIT 10;

SELECT 
	First_Name,
    SUM(`Purchase_Amount`) as TOTAL_SALES_PER_PERSON
FROM chocolate_data
GROUP BY First_Name
ORDER BY 2
LIMIT 10;

SELECT 
	Job_Title,
    SUM(`Purchase_Amount`) as TOTAL_SALES_PER_JOB
FROM chocolate_data
GROUP BY Job_Title
ORDER BY 2 DESC;

SELECT
	Product,
    COUNT(Txn_ID) AS TOTAL_COUNT,
	SUM(`Purchase_Amount`) as TOTAL_SALES_PER_PRODUCT
FROM chocolate_data
GROUP BY Product
ORDER BY 3 DESC;

SELECT 
	`Purchase_Mode`,
    SUM(`Purchase_Amount`) as TOTAL_SALES_PER_JOB
FROM chocolate_data
GROUP BY `Purchase_Mode`;

SELECT 
	*,
    DAYNAME(`Date`) AS Day_of_the_Date
FROM(
	SELECT 
		`Date`,
		SUM(`Purchase_Amount`) AS SALES_PER_DAY
	FROM chocolate_data
	GROUP BY `Date`
	ORDER BY 2 DESC
	LIMIT 10
) t;


SELECT 
	*,
    DAYNAME(`Date`) AS Day_of_the_Date
FROM(
	SELECT 
		`Date`,
		SUM(`Purchase_Amount`) AS SALES_PER_DAY
	FROM chocolate_data
	GROUP BY `Date`
	ORDER BY 2
	LIMIT 10
) t;


SELECT 
	`Purchase_Mode`,
    SUM(CASE WHEN Status = 'No' THEN 1 ELSE 0 END) AS FAILED_TRANSACTIONS,
    SUM(CASE WHEN Status = 'Yes' THEN 1 ELSE 0 END) AS SUCCEDED_TRANSACTIONS,
    COUNT(*) AS TOTAL_TRANSACTIONS_PER_MODE
FROM chocolate_data
GROUP BY `Purchase_Mode`;


SELECT	
	day_of_week,
    SUM(`Purchase_Amount`) AS TOTAL_PURCHASES_ON_WEEKDAYS
FROM chocolate_data
GROUP BY day_of_week
ORDER BY 2 DESC;


With Sales_Job as
(
SELECT 
	Job_Title,
	First_Name,
	SUM(`Purchase_Amount`) AS total_sales
FROM chocolate_data
GROUP BY Job_Title, First_Name
)
SELECT 
    Job_Title,
    First_Name,
    total_sales,
    rn
FROM (
    SELECT 
        Job_Title,
        First_Name,
        total_sales,
        ROW_NUMBER() OVER (
            PARTITION BY Job_Title
            ORDER BY total_sales DESC
        ) AS rn
    FROM Sales_Job
) ranked
WHERE rn <= 5
ORDER BY Job_Title, rn;


