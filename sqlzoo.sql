-- https://sqlzoo.net/wiki/SELECT_Basics

-- SELECT BASICS 

-- Introducing the world table of countries 
-- 1. Modify it to show the population of Germany

SELECt population FROM world 
WHERE name = 'Germany';

-- Scandinavia 
-- 2. Show the name and the population for 'Sweden', 'Norway' and 'Denmark'.

SELECT name, population FROM world 
WHERE name IN ('Sweden', 'Norway', 'Denmark');

-- Just the right size
-- 3. Modify it to show the country and the area for countries with an area between 200,000 and 250,000 sq km.

SELECT name, area FROM world 
WHERE area BETWEEN 200000 AND 250000;

-- SELECT from WORLD tutorial

-- Introduction 
-- 1. Observe the result of running this SQL command to show the name, continent and population of all countries.

SELECT name, continent, population FROM world;

-- Large Countries
-- 2. Show the name for the countries with the population of at least 200 million. There are two solutions:

SELECT name FROM world 
WHERE population > 200000000;

SELECT name FROM world
WHERE population >= 200000000;

-- Per capita GDP
-- 3. Give the name and the per capita GDP for those countries with a population of at least 200 million.

SELECT name, gdp/population FROM world
WHERE population > 200000000;

-- South America In millions
-- 4. Show the name and population in millions for the countries of the continent 'South America'. Use the ROUND function to show the values to two decimal places.

SELECT name, population/1000000 FROM world
WHERE continent = 'South America';

-- France, Germany, Italy
-- 5. Show the name and population for France, Germany, Italy

SELECT name, population FROM world
WHERE name IN ('France', 'Germany', 'Italy');

-- United
-- 6. Show the countries which have a name that includes the word 'United'.

SELECT name FROM world
WHERE name like '%United%';

-- Two ways to be big
-- 7. Two ways to be big: A country is big if it has an area of more than 3 million sq km or it has a population of more than 250 million.

SELECT name, population, area FROM world 
WHERE area > 3000000 OR population > 250000000;

-- One or the other (but not both)
-- 8. Exclusive OR (XOR). Show the countries that are big by area (larger than 3 million) or big by population (larger than 250 million) but not both. Show name, population and area.

SELECT name, population, area FROM world
WHERE (area > 3000000 XOR population > 250000000);

SELECT name, population, area FROM world
WHERE (area > 3000000 AND population <= 250000000) 
   OR (area <= 3000000 AND population > 250000000);

-- Rounding
-- 9. Show the name and population in millions and the GDP in billions for the countries of the continent 'South America'. Use the ROUND function to show the values to two decimal places.

SELECT name, ROUND(population/1000000, 2) AS population_millions, ROUND(gdp/1000000000, 2) AS gdp_billions FROM world
WHERE continent = 'South America';

-- Trillion dollar economies
-- 10. Show the name and per-capita GDP (gdp/population) for those countries with a GDP of at least one trillion (1000000000000; that is 12 zeros). Round this value to the nearest $1000.
SELECT name, ROUND(gdp/population, -3) AS per_capita_gdp FROM world
WHERE gdp >= 1000000000000;

-- Name and capital have the same length
-- 11. Show the name and capital where the name and the capital have the same number of characters.

SELECT name, capital
FROM world
WHERE LENGTH(name) = LENGTH(capital);

-- Matching name and capital
-- 12. Show the name and the capital where the first letters of each match. Don't include countries where the name and the capital are the same word.

SELECT name, capital
FROM world
WHERE LEFT(name, 1) = LEFT(capital, 1) 
AND name != capital;

SELECT name, capital
FROM world
WHERE LEFT(name, 1) = LEFT(capital, 1)
AND name <> capital;

-- All the vowels
-- 13. Find the country that has all the vowels and no spaces in its name.

SELECT name
FROM world
WHERE name LIKE '%a%'
AND name LIKE '%e%'
AND name LIKE '%i%'
AND name LIKE '%o%'
AND name LIKE '%u%'
AND name NOT LIKE '% %';