--Script to get ICRM picklist items

SELECT a.itemid AS PicklistID, 
       a.text AS PLName, 
       b.text AS ListValue
FROM sysdba.picklist a
     INNER JOIN sysdba.picklist b ON a.itemid = b.picklistid
ORDER BY a.text;