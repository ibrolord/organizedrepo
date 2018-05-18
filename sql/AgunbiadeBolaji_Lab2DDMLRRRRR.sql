SELECT * FROM WINE_TYPE;
select * from wine;
--QUEST 1

SELECT wtName, wineName, wineYear, winePrice
FROM WINE_TYPE
	INNER JOIN WINE ON WINE_TYPE.wtCode = WINE.wtCode
	ORDER BY WINE.wtCode, wineName  ;


--Quest 2

SELECT deptName, deptBudget, COUNT(*) AS 'NUMBER OF EMPLOYEES', SUM(empSalary) AS 'Total Paid'
FROM DEPARTMENT
	INNER JOIN EMPLOYEE ON DEPARTMENT.deptCode = EMPLOYEE.deptCode
WHERE deptBudget >= 200000
GROUP BY deptName, deptBudget
HAVING SUM(empSalary) < deptBudget;

SELECT wtName, wtLeadFirst + ' ' + wtLeadLast AS 'Lead Maker', SUM(wineCaseProduction) AS 'Total Production', AVG(winePrice) AS 'Average Price'
FROM WINE_TYPE
	INNER JOIN WINE ON WINE_TYPE.wtCode = WINE.wtCode
	WHERE WINE_TYPE.wtCode = 'R'
	GROUP BY wtLeadFirst, wtLeadLast, wtName ;

-- QUEST 3

SELECT wineName
FROM WINE 
WHERE
 wineYear = '2009'
AND winePrice = (SELECT MIN(winePrice) FROM WINE WHERE wineYear = 2009);




