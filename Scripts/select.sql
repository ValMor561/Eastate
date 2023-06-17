SELECT surname,name FROM employee
	WHERE CompanyId IN (SELECT CompanyId FROM company
	WHERE Name = "MosFin");

SELECT Surname,Name FROM passportclient
	WHERE Family = "single";
	
SELECT Surname,Name FROM passportclient
	WHERE CodeOffice LIKE "7%";

SELECT Age,count(*) as "count" FROM passportclient
	GROUP BY Age;

SELECT Address FROM realestateobject
	WHERE Square > 100 AND ObjectType = "flat";