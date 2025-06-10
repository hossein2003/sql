create Procedure sp_showOrder
as
select * from [Order Detail]
go 

  
use [northwind]
  go
  set ANSI_Null on 
  go
  set quoted_identfier on
  go
  ALter Procedure [dbo].[sp.showorder]
  as 
  select count(*)from [order_details] where quantity=20

  
insert into Territories(TerritoriesDescription,RegionID) value ('new york',2)

  
delete from Territories where TerritoryID=@TerritoryID
go

  
begin 
return (select count(*) from Territories where RegionID=@RegionID)
end 

  
Create trigger [dbo].[Trg_update] on [dbo].[mytabel]
after update
as 
begin 
update my table set modifydateTime = getdate()
where mytabel.id = (select d.id from deleted d)
end 
  
set statistics time on
set statistics io on
  
create clustered index ci_indexingID on indexing (id)
go
  
create nonclustered index nci_pay on Indexing (pay)
go

در کل منظور از ایندکس گداری این است که شاخص را مشخص کنیم و به راحتی و با جستوجو کمتر به داده مورد نیاز خودمان دسترسی داشته باشیم
