/* 1 */
SELECT count(DISTINCT CODIGO_ESTACION) AS cantEstaciones
FROM barcelona_viajeros_por_franja_xlsx
/* 2 */
SELECT DISTINCT NOMBRE_ESTACION
FROM barcelona_viajeros_por_franja_xlsx
/* 3 */
SELECT NOMBRE_ESTACION AS estaciones, sum(VIAJEROS_SUBIDOS) AS Subidos, sum(VIAJEROS_BAJADOS) AS Bajados
FROM barcelona_viajeros_por_franja_xlsx
GROUP BY NOMBRE_ESTACION
/* 4 */
SELECT NOMBRE_ESTACION AS estaciones, sum(VIAJEROS_SUBIDOS) AS Subidos, sum(VIAJEROS_BAJADOS) AS Bajados, (VIAJEROS_BAJADOS - VIAJEROS_SUBIDOS) AS Diferencia
FROM barcelona_viajeros_por_franja_xlsx
GROUP BY NOMBRE_ESTACION
/* 5 */
SELECT NOMBRE_ESTACION, max(VIAJEROS_SUBIDOS), TRAMO_HORARIO
FROM barcelona_viajeros_por_franja_xlsx
GROUP BY TRAMO_HORARIO
/* 6 */
SELECT NOMBRE_ESTACION, max(VIAJEROS_SUBIDOS) AS Cant_pasajeros
FROM barcelona_viajeros_por_franja_xlsx
GROUP BY NOMBRE_ESTACION
ORDER BY Cant_pasajeros DESC
LIMIT 1
/* 7 */
SELECT NOMBRE_ESTACION, max(VIAJEROS_BAJADOS), TRAMO_HORARIO
FROM barcelona_viajeros_por_franja_xlsx
GROUP BY TRAMO_HORARIO
/* 8 */
SELECT NOMBRE_ESTACION, max(VIAJEROS_BAJADOS) AS Cant_pasajeros
FROM barcelona_viajeros_por_franja_xlsx
GROUP BY NOMBRE_ESTACION
ORDER BY Cant_pasajeros DESC
LIMIT 1
/* 9 */

/* 10 */

/* 11 */

/* 12 */