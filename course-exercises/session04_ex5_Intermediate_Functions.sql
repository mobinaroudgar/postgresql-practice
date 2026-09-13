
--You need to create an anonymized form of the email addresses
--in the following way:
--M ***. S *** @sakilacustomer.org
--P ***. J *** @sakilacustomer.org

Select email, Left(email,1)||'***.'||
Substring (email From Position('.' In email)+1 For 1)||'***'||
Substring(email From position('@' In email)) As new_email
From customer

--In a second query create an anonymized form of the email
--addresses in the following way:
--*** Y.S *** @sakilacustomer.org
--*** A.J *** @sakilacustomer.org

Select email, '***'|| Substring(email From Position('.' In email)-1 For 1) ||'.***'
||Substring(email From Position('@' In email)-1 For 1)||
substring(email from position('@' in email)) as new_email
From customer


