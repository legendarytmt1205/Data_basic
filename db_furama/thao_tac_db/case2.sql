select * 
from db_furama.employees 
where (full_name REGEXP "H.*|T.*|K.*")  and length(full_name)<15;