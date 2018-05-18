SELECT brewName 
FROM BREWER
WHERE 
	brewCity = 'Toronto'
	AND brewType = 'Public';


SELECT DISTINCT brewName, brewContactFirst + ' ' + brewContactLast AS Contact
FROM BREWER
INNER JOIN BEER ON BREWER.brewCode = BEER.brewCode
WHERE
	beerName LIKE '%Lager%'; 


SELECT beerName
FROM BEER
HAVING MIN(beerStorePrice) 
;


SELECT beerName, beerStorePrice - beerOurPrice AS 'Differences in Prices'
FROM BEER
WHERE
	beerOurPrice BETWEEN '29.00' AND '32.00'
ORDER BY beerStorePrice - beerOurPrice DESC;