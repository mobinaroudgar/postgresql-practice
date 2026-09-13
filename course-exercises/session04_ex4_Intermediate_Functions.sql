
--In this challenge you have only the email address and the last
--name of the customers.

--You need to extract the first name from the email address and
--concatenate it with the last name. It should be in the form:
--"Last name, First name".

select email,
left(email, position('.' in email)-1) ||','|| Last_name
from customer

