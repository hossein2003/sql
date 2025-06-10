create proc sp_showOrder
as
select * from [Order Detail]
go 

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
