-- Select field
SELECT country.capital
  -- From countries
  FROM countries AS country
	-- Set theory clause
  EXCEPT
-- Select field
SELECT city.name
  -- From cities
  FROM cities AS city
-- Order by ascending capital
ORDER BY capital;
