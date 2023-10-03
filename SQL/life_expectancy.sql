-- Select years with the most life expectancy in Mexico.
SELECT *
FROM life_expectancy
WHERE Entity LIKE 'Mexico'
ORDER BY 4 DESC;

-- Select years with the most life expectancy in Mexico with Rollup.
WITH LifeExpectancyDiff AS (
    SELECT 
        Entity, 
        Code, 
        Year, 
        life_expectancy_at_birth_historical,
        LAG(life_expectancy_at_birth_historical, 1, 0) OVER(PARTITION BY Entity ORDER BY Year) AS PreviousYearValue
    FROM life_expectancy
)

SELECT 
    Entity, 
    Code, 
    Year, 
    life_expectancy_at_birth_historical,
    COALESCE(life_expectancy_at_birth_historical - PreviousYearValue, 0) AS Difference
FROM LifeExpectancyDiff
WHERE Entity = 'World' AND [Year] BETWEEN 1950 AND 2021;

-- Dashboard 1
-- 1. Select countries with most life expectancy in 2021.
SELECT *
FROM life_expectancy
WHERE Code NOT IN ('Special') AND [Year] BETWEEN 1950 AND 2021 AND Entity NOT IN ('World')
ORDER BY 1, 3;

-- Average yearly life expectancy over the years 1950 - 2021.
SELECT
    [Year],
    AVG(Life_expectancy_at_birth_historical) AS avg_life_expectancy_yearly
FROM life_expectancy
WHERE Code NOT IN('Special') AND  [Year] BETWEEN 1950 AND 2021
GROUP BY [Year]
ORDER BY 1;

-- Average yearly life expectancy by contient over the years 1950 - 2021.
SELECT
    Entity,
    [Year],
    AVG(Life_expectancy_at_birth_historical) AS avg_life_expectancy_yearly
FROM life_expectancy
WHERE Entity IN('Africa','Americas','Northern America','Asia','Europe','Ocenia') AND [Year] BETWEEN 1950 AND 2021
GROUP BY Entity, [Year]
ORDER BY 2;

-- Life expectancy by continent in 2021.
SELECT
    Entity,
    [Year],
    AVG(Life_expectancy_at_birth_historical) AS avg_life_expectancy_yearly
FROM life_expectancy
WHERE Entity IN('Africa','Americas','Northern America','Asia','Europe','Ocenia') AND [Year] = 2021
GROUP BY Entity, [Year]
ORDER BY 2;

-- Life expectancy by income in 2021.
SELECT
    Entity,
    [Year],
    AVG(Life_expectancy_at_birth_historical) AS avg_life_expectancy_yearly
FROM life_expectancy
WHERE Entity IN('High-income countries','Low-income countries','Lower-middle-income countries','Upper-middle-income countries')
    AND [Year] BETWEEN 1950 AND 2021
GROUP BY Entity, [Year]
ORDER BY 2;