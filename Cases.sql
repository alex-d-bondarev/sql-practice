# Show user ID, salary and some text, using case-when-then. Skip repeating salaries.
# Use variables
Set @little:=1000, @ok:=3000;

   Select e1.user_id, e1.nSalary,
	 CASE
		  WHEN e1.nSalary < @little THEN 'Little.'
		  WHEN e1.nSalary BETWEEN @little and @ok THEN 'OK.'
		  ELSE 'Good.'
	  END AS 'some text'
	 From tutorial.employee e1
Left Join tutorial.employee e2
	   On e1.nSalary = e2.nSalary
	  AND e1.user_id < e2.user_id
	Where e2.user_id is null
 Order By e1.nSalary ASC;