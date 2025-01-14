SELECT *
FROM origin_data
WHERE COD_LOC IN (SELECT 
			COD_LOC 
		  FROM origin_data
		  GROUP BY COD_LOC
		  HAVING 
			COUNT(DISTINCT NOMBRE_LOC) > 1 OR 
			COUNT(DISTINCT CP) > 1 OR
			COUNT(DISTINCT PROVINCIA) > 1 OR
			COUNT(DISTINCT POBLACION) > 1)
