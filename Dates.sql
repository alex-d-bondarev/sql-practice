# Date/time now
SELECT now(); 
# String to date
SELECT STR_TO_DATE('12/31/2017', '%m/%d/%Y')
UNION
SELECT STR_TO_DATE('12-30-2017', '%m-%d-%Y')
UNION
SELECT STR_TO_DATE('29-12-2017', '%d-%m-%Y')
UNION
SELECT STR_TO_DATE('02 December 2017', '%d %M %Y')
UNION
SELECT STR_TO_DATE('1 December 2017', '%e %M %Y')
UNION
SELECT STR_TO_DATE('300 2017', '%j %Y')