SELECT   COUNT(*) AS CANTIDAD 
FROM PERSON_WORK_SITUATION PWS
INNER JOIN CHARGE_POSITION CP ON CP.ID_CHARGE_POSITION = PWS.ID_CHARGE_POSITION
WHERE CP.[NAME] = 'Software Engineer' AND LEFT(PWS.YEAR_MONTH,4) = 2016 AND   RIGHT(PWS.YEAR_MONTH,2) = 8
GROUP BY CP.[NAME]

SELECT  SUM(PHV.[VALUE])  AS TOTAL
FROM PERSON_HOUR_VALUE PHV
INNER JOIN PERSON_WORK_SITUATION PWS ON PHV.ID_PERSON= PWS.ID_PERSON AND PHV.YEAR_MONTH = PWS.YEAR_MONTH
INNER JOIN PERSON P ON P.ID_PERSON = PWS.ID_PERSON
INNER JOIN CHARGE_POSITION CP ON CP.ID_CHARGE_POSITION = PWS.ID_CHARGE_POSITION
WHERE CP.[NAME] = 'Software Engineer' AND LEFT(PHV.YEAR_MONTH,4) = 2017 AND   RIGHT(PWS.YEAR_MONTH,2) BETWEEN 7 AND 12 