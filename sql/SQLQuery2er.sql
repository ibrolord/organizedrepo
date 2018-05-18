

select SAMPLE_CUSTOMER.cistFirstName + ' ' + SAMPLE_CUSTOMER.custLastName as 'full name'
FROM PROVINCE
JOIN SAMPLE_CUSTOMER ON PROVINCE.provAbbrev = SAMPLE_CUSTOMER.provAbbrev;