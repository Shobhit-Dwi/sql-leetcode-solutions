Select firstName, lastName, city, state
from person p left outer join Address a
on p.personid = a.personid;  
