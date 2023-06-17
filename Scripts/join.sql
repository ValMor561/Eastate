SELECT * FROM passportclient
INNER JOIN realestateobject 
ON realestateobject.OwnerPassportNumber = passportclient.PassportNumber;

SELECT * FROM realestateobject
CROSS JOIN district
using(DistrictId);

SELECT * FROM passportclient
LEFT JOIN realestateobject 
ON realestateobject.OwnerPassportNumber = passportclient.PassportNumber;

SELECT ContractID,DateOfPayment,Surname,Name,City FROM contract
INNER JOIN passportclient
ON contract.OwnerPassportNumber = passportclient.PassportNumber
UNION SELECT ContractID,DateOfPayment,Surname,Name,City FROM contract
INNER JOIN passportclient
ON contract.ClientPassportNumber = passportclient.PassportNumber
ORDER BY ContractID;