--Extract the last 5 characters of the email address first. The email address always ends with '.org'. How can you extract just the dot '.' from the email address?

select email, right(email,5),left(right(email,4),1)
from customer 
