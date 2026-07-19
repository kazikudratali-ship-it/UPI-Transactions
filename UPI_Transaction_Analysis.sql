
select * from [dbo].[UPI_Transaction]

--- 1.Total Transaction 
select count(TransactionID) as [Total Transaction]
from UPI_Transaction ;

--- 2.Total Transaction Volume 
select sum(Amount) as [Total Transantion Volume] 
from UPI_Transaction ;

--- 3.Success Rate (%)
select round(count(case when Status = 'Success' then 1 end )*100.0/count(TransactionID),2)
from UPI_Transaction;

--- 4.Average Transaction Amount
select avg(Amount) As [Average Transaction Amount]
from upi_Transaction;

--- 5.Transaction by gender 
select gender,count(TransactionID) as [Transaction]
from UPI_Transaction 
group by gender; 

--- 6.Transaction by Purpose
select Purpose,count(TransactionID) as [Transaction]
from UPI_Transaction 
group by Purpose;

--- 7.Transaction Amount By Bank Name
select 
		BankNameSent ,
		sum(Amount) as [Transaction Amount] 
from UPI_Transaction 
group by BankNameSent
order by sum(Amount) desc;

--- 8.Transaction Amount By City
select 
		City,
		sum(Amount) as [Transaction Amount] 
from UPI_Transaction 
group by City
order by sum(Amount) desc;

--- 9.Transaction Amount by Currency 
select currency,sum(Amount) as [Transaction Amount]
from UPI_Transaction 
group by Currency
order by sum(Amount) desc ;

--- 10.Transaction Amount by Merchant
select MerchantName,Sum(Amount) as [Transaction Amount]
from UPI_Transaction
group by MerchantName
order by sum(Amount) desc;

