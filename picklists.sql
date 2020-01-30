--Script to get ICRM picklist items

select 
	a.itemid as PicklistID
,	a.text as PLName
,	b.text as ListValue

from sysdba.picklist a
inner join sysdba.picklist b
on a.itemid = b.picklistid
order by a.text