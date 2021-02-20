-- Select field
SELECT citiy.name
  -- From cities
  FROM cities AS citiy
	-- Set theory clause
	EXCEPT
-- Select field
SELECT country.capital
  -- From countries
  FROM countries AS country
-- Order by result
ORDER BY name;
