dRop TABLE WINE_TYPE;
dRop TABLE INVENTORY;
drop TABLE LCBO;
DROP TABLE WINE;

SELECT * FROM LCBO;
SELECT * FROM WINE;
SELECT * FROM WINE_TYPE;
SELECT * FROM INVENTORY;

--  QUE 1
SELECT LCBOCity, COUNT(LCBOCity) AS 'Number Of Stores'
FROM LCBO
GROUP BY LCBOCity 
ORDER BY LCBOCity;

-- QUE 2
SELECT wineYear, wineName, LCBOCity, InvQTY
INNER JOIN INVENTORY ON WINE.wineID  = INVENTORY.wineID
INNER JOIN LCBO ON INVENTORY.LCBO_ID = LCBO.InvQTY
GROUP BY

--QUE 5
 SELECT LCBOAdd, LCBOPhone
 FROM LCBO
	INNER JOIN INVENTORY ON LCBO.LCBO_ID = INVENTORY.LCBO_ID
	INNER JOIN WINE ON INVENTORY.wineID = WINE.wineID
	WHERE LCBOHasTastingBar = 1 AND LCBOHasVintages = 1 AND wineName LIKE '%Cabernet Franc%';

--QUE 6

SELECT  DISTINCT LCBOCity
FROM LCBO
inner join INVENTORY ON LCBO.LCBO_ID = INVENTORY.LCBO_ID
INNER JOIN WINE ON INVENTORY.wineID = WINE.wineID
WHERE	
		winePrice > 30;