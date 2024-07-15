## Sql-challenge
In this module challenge, we were tasked with extracting data from csv files into Postgresql and querying data in Postgresql.

The data includes information about employees and managers of a company, including employee number, name, department, hire date,...etc. These employees were hired between the 1980s and 1990s. 


For the purposes of filtering employees by year they were hired, I used the EXTRACT function and YEAR attribute of the hire_date column of the employees table. I found this technique at https://www.postgresqltutorial.com/postgresql-date-functions/postgresql-extract/. 
Additionally, for the last query involving the counts of unique last names, to obtain the unique last names, I used the keyword, 'EXTINCT', as explained in https://estuary.dev/postgresql-distinct-clause/#:~:text=SELECT%20DISTINCT%20column1%20FROM%20table_name,of%20unique%20values%20in%20column1%20..  