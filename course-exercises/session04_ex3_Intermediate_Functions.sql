--You need to create an anonymized version of the email addresses.
--MARY.SMITH@sakilacustomer.org
--It should be the first character followed by
--part starting with '@'.

--Note the email address always ends with '@sakilacustomer.org'.

select email , left (email,1) ||'***'|| right(email,19) as Email
from customer 