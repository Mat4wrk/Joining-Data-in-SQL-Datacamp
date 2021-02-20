-- Select statement
SELECT COUNT(countries)
  -- From countries
  FROM countries
-- Where continent is Oceania
WHERE continent LIKE '%Oceania';

-- 5. Select fields (with aliases)
SELECT c1.code, c1.name, c2.basic_unit AS currency
  -- 1. From countries (alias as c1)
  FROM countries AS c1
  	-- 2. Join with currencies (alias as c2)
  	INNER JOIN currencies as c2
    -- 3. Match on code
    USING (code)
-- 4. Where continent is Oceania
WHERE continent = 'Oceania';

-- 3. Select fields
SELECT c1.code, c1.name
  -- 4. From Countries
  FROM Countries AS c1
  -- 5. Where continent is Oceania
  WHERE continent = 'Oceania'
  	-- 1. And code not in
  	AND code NOT IN
  	-- 2. Subquery
  	(SELECT code
  	 FROM currencies);
