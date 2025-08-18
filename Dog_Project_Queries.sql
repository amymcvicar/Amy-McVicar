SELECT o.Org_Name, cs.Canine_Status_Value, COUNT(c.Canine_ID) as Count
FROM
Canines AS c
JOIN Canine_Status AS cs
ON c.Canine_Status_ID=cs.Canine_Status_ID
LEFT JOIN Organizations AS o
ON c.Owner_Org_ID = o.Org_ID
GROUP BY o.Org_Name, cs.Canine_Status_Value;

SELECT SUM(i.Amount_Paid) as Payments
FROM Income AS i
WHERE Year(i.Paid_Date)=2019
;

SELECT SUM(c.Amount_Due) as Paid
FROM Costs AS c
WHERE Year(c.Paid_Date)=2019
;

SELECT pt.Payment_Type_Value, fe.Event_Name, ca.Current_Name as Dog_Recipient, SUM(i.Amount_Paid) as Payments
FROM Income AS i
JOIN Payment_Type AS pt
ON i.Payment_Type_ID=pt.Payment_Type_ID
LEFT JOIN Fun_Events as fe
ON i.Event_ID = fe.Event_ID
LEFT JOIN Canines AS ca
ON ca.Canine_ID = i.Canine_ID
WHERE Year(i.Paid_Date)=2019
GROUP BY pt.Payment_Type_Value, fe.Event_Name, ca.Current_Name
;

SELECT ct.Cost_Type_Value, fe.Event_Name, ca.Current_Name as Doggie, co.Cost_Description, SUM(co.Amount_Due)
FROM Costs AS co
JOIN Cost_Type AS ct
ON co.Cost_Type_ID=ct.Cost_Type_ID
LEFT JOIN Fun_Events AS fe
ON co.Event_ID = fe.Event_ID
LEFT JOIN Canines AS ca
ON co.Canine_ID = ca.Canine_ID
WHERE Year(co.Paid_Date)=2019
GROUP BY ct.Cost_Type_Value, fe.Event_Name, ca.Current_Name, co.Cost_Description;