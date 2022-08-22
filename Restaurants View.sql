--The main purpose is to create the final table with unique rows per restaurant and day to be exploted by powerBI
ALTER VIEW restaurants_maps.Vrestaurants AS 

WITH
cteFilas AS
(
	SELECT *, 
	ROW_NUMBER() OVER(PARTITION BY clave ORDER BY clave) AS NumeroFila
	FROM restaurants
)

SELECT *
FROM cteFilas
WHERE NumeroFila = 1
;