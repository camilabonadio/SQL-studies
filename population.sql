/*
Using MS SQL Server
Average Population os Each Continent by HackerRank

Given the CITY and COUNTRY tables, query the names of all the continents and their respective average city populations. Rounded down to the nearest integer.


The CITY and COUNTRY tables are described as follows:
*/


SELECT
    COUNTRY.continent,
    FLOOR(AVG(CITY.population))
    
FROM COUNTRY join CITY on CITY.CountryCode = COUNTRY.Code
    
GROUP BY COUNTRY.continent
;