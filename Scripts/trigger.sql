CREATE TRIGGER updateowner
AFTER INSERT 
ON contract FOR EACH ROW
	UPDATE realestateobject 
	SET
		realestateobject.OwnerPassportNumber = new.ClientPassportNumber
		WHERE new.OwnerPassportNumber = realestateobject.OwnerPassportNumber;
		
INSERT INTO realestateobject
    (ObjectID,Address,Square,ObjectType,DistrictId,OwnerPassportNumber)
    VALUES
    (11,'Mychurinskyi 70',3000,'academy',6,19);

select * from realestateobject
where ObjectId = 11;

INSERT INTO contract
	(ContractID,DateOfContract,DateOfPayment,CostOfObject,EmployeeID,ContractType,OwnerPassportNumber,ClientPassportNumber)
	VALUES
	(11,'2022-10-12','2022-10-13',100000000,10,'purchase',19,3);