
--QUESTION 1
SELECT brewName 
FROM BREWER
WHERE 
	brewCity = 'Toronto'
	AND brewType = 'Public';

--QUESTION 2
SELECT DISTINCT brewName, brewContactFirst + ' ' + brewContactLast AS Contact
FROM BREWER
INNER JOIN BEER ON BREWER.brewCode = BEER.brewCode
WHERE
	beerName LIKE '%Lager%'; 

--QUESTION 3
SELECT beerName
FROM BEER
WHERE beerStorePrice = (SELECT MIN(beerStorePrice) FROM BEER) 
;

--QUESTION 4
SELECT beerName, beerStorePrice - beerOurPrice AS 'Differences in Prices'
FROM BEER
WHERE
	beerOurPrice BETWEEN '29.00' AND '32.00'
ORDER BY beerStorePrice - beerOurPrice DESC;

--QUESTION 5
SELECT  BREWER.brewCode, brewName, AVG(beerOurPrice) AS 'Average Price'
FROM BREWER
INNER JOIN BEER ON BREWER.brewCode = BEER.brewCode
GROUP BY BREWER.brewCode, brewName;

--QUESTION 6
SELECT brewName
FROM BREWER
INNER JOIN BEER ON BREWER.brewCode = BEER.brewCode
GROUP BY brewName
	HAVING COUNT(beerCode) >= 4;

--QUESTION 7
UPDATE BREWER
SET	brewContactFirst = 'Tom',
	 brewContactLast = 'Brady'
	WHERE brewCode = 'MILL';

--QUESTION 8
DELETE FROM BEER
WHERE beerName = 'Export';


--WOW THANKS!