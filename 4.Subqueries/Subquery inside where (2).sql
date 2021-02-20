-- 2. Select fields
SELECT city.name, city.country_code, city.urbanarea_pop
  -- 3. From cities
  FROM cities AS city
-- 4. Where city name in the field of capital cities
WHERE city.name IN
  -- 1. Subquery
  (SELECT capital
   FROM countries)
ORDER BY urbanarea_pop DESC;
