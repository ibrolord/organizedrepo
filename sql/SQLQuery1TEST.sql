SELECT custFirstName + ' ' + custLastName AS 'custFullName', custStreetAddress, custPostalCode
FROM PROVINCE
INNER JOIN CUSTOMER ON PROVINCE.provAbbrev = CUSTOMER.provAbbrev 
WHERE custCity IN ('Brookings','Manitoba')
ORDER BY CUSTOMER.provAbbrev, 'custFullName';


SELECT custCity
FROM PROVINCE
INNER JOIN CUSTOMER ON PROVINCE.provAbbrev = CUSTOMER.provAbbrev
WHERE
CUSTOMER.provAbbrev = 'MB'
ORDER BY custCity DESC;


SELECT custFirstName + ' ' + custLastName AS 'custFullName'
FROM PROVINCE
INNER JOIN CUSTOMER ON PROVINCE.provAbbrev = CUSTOMER.provAbbrev
WHERE
custIncome = (SELECT MIN(custIncome) FROM CUSTOMER);


SELECT custFirstName + ' ' + custLastName AS 'custFullName'
FROM PROVINCE
INNER JOIN CUSTOMER ON PROVINCE.provAbbrev = CUSTOMER.provAbbrev
WHERE
custIncome = (SELECT MAX(custIncome) FROM CUSTOMER);

SELECT COUNT(*) AS '#Below AVG Income'
FROM PROVINCE
INNER JOIN CUSTOMER ON PROVINCE.provAbbrev = CUSTOMER.provAbbrev
WHERE
custIncome <
(SELECT AVG(custIncome) FROM CUSTOMER);

SELECT custFirstName + ' ' + custLastName AS 'custFullName', custIncome
FROM PROVINCE
INNER JOIN CUSTOMER ON PROVINCE.provAbbrev = CUSTOMER.provAbbrev
WHERE
custIncome > 150000
ORDER BY custIncome ASC;

SELECT custFirstName + ' ' + custLastName AS 'custFullName', custIncome
FROM PROVINCE
INNER JOIN CUSTOMER ON PROVINCE.provAbbrev = CUSTOMER.provAbbrev
WHERE
custIncome < 175000
ORDER BY custIncome DESC;


SELECT custFirstName + ' ' + custLastName AS 'custFullName', custIncome
FROM PROVINCE
INNER JOIN CUSTOMER ON PROVINCE.provAbbrev = CUSTOMER.provAbbrev
WHERE
custIncome BETWEEN '150000' AND '175000'
ORDER BY custIncome DESC;









SELECT * FROM  CUSTOMER;
SELECT * FROM DIVISION;
SELECT * FROM PROVINCE;