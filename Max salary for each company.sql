# Select info about users with max salary in each company
# Subquery is used due to enabled only_full_group_by. 
# In case only_full_group_by is disabled -
#    current query can be shorter and only unique users can be shown
# In case more than 1 user has same max salary - all these users will be shown
    Select e.sJob AS jobTitle
		 , sq.salary AS salary
         , u.sFirstName AS fName
         , c.sName AS companyName
	  from tutorial.employee AS e
Inner Join tutorial.user AS u 
		On u.id = e.user_id
Inner Join tutorial.company AS c
		On c.id = e.company_id
Inner Join ( 
	Select max(nSalary) AS salary
	, company_id AS companyID
	from tutorial.employee
	Group By companyID) 		
		AS sq
		On sq.companyID = c.id 
	   AND sq.salary = e.nSalary;
        