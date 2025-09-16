SELECT * 
from`retail sales`.`retail sales` ;

create table total_sales 
(CustomerID int ,
Country varchar(50),
Quantity int,
UnitPrice decimal(5,2),
totalsales  DECIMAL(15,2) GENERATED ALWAYS AS (Quantity * UnitPrice) STORED);

insert into total_sales( CustomerID, Country, Quantity, UnitPrice)
select 
CustomerID,
Country,
Quantity, 
UnitPrice
FROM  `retail sales`.`retail sales` ;

select *
  FROM `retail sales`.total_sales
ORDER BY totalsales ASC;

select*
from `retail sales`.total_sales ;


