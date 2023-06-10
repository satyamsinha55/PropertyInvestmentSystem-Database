select * from address,ownerdetails;

select houseid, beds from house where propertytypeid = 1;

select city, firstname
from address inner join ownerdetails 
on address.addressid = ownerdetails.addressid

create index forsale_index on house(forsale);

--order by 

select houseid, firstname, forsale,yearbuilt
from house join ownerdetails
on house.addressid = ownerdetails.addressid
where forsale = true
order by yearbuilt desc;

--subquery
select firstname, lastname , ownerincome from income join ownerdetails
on income.ownerid = ownerdetails.ownerid
where firstname in (select firstname from ownerdetails where firstname like 'A%');

---groupby
select count(*) 
from house 
where forsale = true
group by propertytypeid ;

----update 
select * from house where houseid = 12; 

update house
set yearbuilt = 2002
where houseid = 12; 

select * from propertytype; 

----delete
insert into propertytype (single, duplex,multifamily,condo) values (false, true,true,false);

delete from propertytype where propertytypeid = 7;

---query analysis

--- original query 
explain select houseid, forsale, firstname, lastname, propertytype.propertytypeid, address.addressid
from propertytype,address,house, ownerdetails

-- improved query 
explain select houseid, forsale, firstname, lastname, propertytype.propertytypeid, address.addressid
from propertytype,
address
join house on address.addressid = house.addressid
join ownerdetails on address.addressid = ownerdetails.addressid; 

-- query 2

explain select count(houseid), city, propertytype.propertytypeid, forsale 
from propertytype, house 
join address on house.addressid = address.addressid
group by city, forsale, propertytype.propertytypeid;

-- query3 
Explain SELECT firstname, age from ownerdetails where firstname like 'S%' OR age <50

Explain SELECT firstname,age from ownerdetails where firstname like '%S'
UNION
SELECT firstname,age from ownerdetails where age<50

