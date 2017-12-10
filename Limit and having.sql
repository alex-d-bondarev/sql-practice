-- Limit clause
  Select sJob, nSalary
	From tutorial.employee
order by nSalary DESC
   Limit 3;

-- Having clause
# Show employees with same salary
  Select e.user_id, e.nSalary
	From tutorial.employee e
   Where e.nSalary 
	  IN (
		 Select t.nSalary
		 From tutorial.employee t
		 Group by t.nSalary
		 Having count(t.id) > 1)
order by e.nSalary;