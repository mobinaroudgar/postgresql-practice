--1. How many movies are there that contain 'Saga' in the description and where the title starts either with 'A' or ends with 'R'? Use the alias 'no_of_movies'.

Select count(*) as no_of_movies
From film 
Where (description ilike '%saga%') And
      (title ilike 'A%' or title ilike '%R')
