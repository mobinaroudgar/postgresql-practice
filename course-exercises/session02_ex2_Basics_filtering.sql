--2. Create a list of all customers where the first name contains
--'ER' and has an 'A' as the second letter.
--Order the results by the last name descendingly.

Select *
From customer
where first_name ilike '_A%ER%'
order by last_name desc