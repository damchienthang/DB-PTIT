select MAX(vr.Horsepower) as horsepower 
FROM Vehicle_Releases vr 
JOIN Vehicle_Types vt on vt.id = vr.Vehicle_Type_id
where vt.name = 'Sedan' and vr.Release_Date >= '2020-01-01';