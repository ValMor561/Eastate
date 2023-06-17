INSERT INTO district
    (DistrictId,City,Name)
    VALUES
    (10,'Saint-Petersburg','Central'),
    (11,'Saint-Petersburg','Nevskaya'),
    (12,'Saint-Petersburg','East');
	
INSERT INTO district
    (DistrictId,City,Name)
    VALUES
    (13,'Kazan','Central'),
    (14,'Kazan','East');
	
DELETE FROM district
	WHERE DistrictId IN (10,11,12,13,14);