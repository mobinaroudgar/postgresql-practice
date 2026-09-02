--3. How many payments are there where the amount is either 0 or is between 3.99 and 7.99 and in the same time has happened on 2020-05-01.

Select  count(*)
From payment 
where  (amount=0 or amount between 3.99 and 7.99) 
and  (payment_date  between '2020-05-01' and '2020-05-02') 
