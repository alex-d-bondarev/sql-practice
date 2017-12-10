# Count employees of each manager
# V1 - slow, practice String %
# EXPLAIN
  Select count(id)
 	   , manager_id
    From tutorial.employee
   Where manager_id 
	  IN (
		 Select id 
		 From tutorial.employee
		 Where sJob like 'manager%')
Group By manager_id;

# V2 - fast
# EXPLAIN
  Select count(id)
 	   , manager_id
    From tutorial.employee
   Where manager_id IS NOT null
Group By manager_id;

# Get employees with salary > 1000
Select id, nSalary
From tutorial.employee
Where nSalary > 1000;

# Get employees with salary between 1000 and 100
Select id, nSalary
From tutorial.employee
Where nSalary between 100 and 1000;