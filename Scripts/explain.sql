EXPLAIN SELECT Surname,Name FROM passportclient
	WHERE Family = "single";
	
EXPLAIN SELECT * FROM passportclient
LEFT JOIN realestateobject 
ON realestateobject.OwnerPassportNumber = passportclient.PassportNumber;

EXPLAIN SELECT ContractID,DateOfPayment,Surname,Name,City FROM contract
INNER JOIN passportclient
ON contract.OwnerPassportNumber = passportclient.PassportNumber
UNION SELECT ContractID,DateOfPayment,Surname,Name,City FROM contract
INNER JOIN passportclient
ON contract.ClientPassportNumber = passportclient.PassportNumber
ORDER BY ContractID;

