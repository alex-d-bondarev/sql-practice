Select * from `tutorial`.`user`;

Delete from `tutorial`.`user`;

INSERT INTO `tutorial`.`user`
(`sFirstName`, `sLastName`, `nPassportID`)
VALUES
#('fName1', 'lName1', 221),
#('fName2', 'lName2', 222),
#('fName3', 'lName3', 223),
('fName7', 'lName7', 331),
('fName8', 'lName8', 332),
('fName9', 'lName9', 333);
