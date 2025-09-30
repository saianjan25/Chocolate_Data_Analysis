SELECT * FROM chocolate_data;

UPDATE Chocolate_data
SET `Purchase Amount` = 0
WHERE `Purchase Amount` = "";


ALTER TABLE Chocolate_data
Modify `Purchase Amount` INT;


UPDATE chocolate_data
SET `Date` = STR_TO_DATE(`Date`, '%d-%b-%y');


ALTER TABLE Chocolate_data
Modify `Date` DATE;


ALTER TABLE Chocolate_data
CHANGE `ï»¿Txn ID` `Txn ID` VarChar(10);

ALTER TABLE Chocolate_data
ADD COLUMN day_of_week VARCHAR(10);


UPDATE Chocolate_data
SET day_of_week = DAYNAME(`date`);


ALTER TABLE Chocolate_data
CHANGE `Txn ID` `Txn_ID` VarChar(10);

ALTER TABLE Chocolate_data
CHANGE `First Name` `First_Name` VarChar(30);

ALTER TABLE Chocolate_data
CHANGE `Last Name` `Last_Name` VarChar(30);

ALTER TABLE Chocolate_data
CHANGE `Job Title` `Job_Title` VarChar(30);

ALTER TABLE Chocolate_data
CHANGE `Purchase Mode` `Purchase_Mode` VarChar(30);

ALTER TABLE Chocolate_data
CHANGE `Purchase Amount` `Purchase_Amount` VarChar(30);