USE lsantos_cs355fa21;

DROP TABLE IF EXISTS Customer_Account_Phone_Number;
DROP TABLE IF EXISTS Delivery_Attempt_Item;
DROP TABLE IF EXISTS Payments;
DROP TABLE IF EXISTS Item;
DROP TABLE IF EXISTS Delivery_Attempt;
DROP TABLE IF EXISTS Customer_Account;
DROP TABLE IF EXISTS Manufacturer;


create table Customer_Account
	(Account_Num	int(8),
	 Cus_Name	varchar(30),
	 Street		varchar(20),
	 City		varchar(20),
	 State		varchar(13),
	 Zip		int(5),
	 Date_Active	DATE,
	 PRIMARY KEY (Account_Num)
	);

create table Manufacturer
        (Man_ID         int(9),
         Man_Name       varchar(30),
         PRIMARY KEY (Man_ID)
        );

create table Payments
        (Routing_Num	int(9),
	 Bank_Num	int(9),
	 Payment_Date	Date,
	 Account_Num	int(8),
	 Man_ID		int(9),
	 PRIMARY KEY(Payment_Date, Account_Num, Man_ID),
	 FOREIGN KEY (Account_Num) references Customer_Account(Account_Num) ON UPDATE CASCADE ON DELETE CASCADE,
	 FOREIGN KEY (Man_ID) references Manufacturer(Man_ID) ON UPDATE CASCADE ON DELETE CASCADE
        );

create table Item
        (Item_ID	int(9),
	 Item_Name	varchar(45),
	 Man_ID		int(9),
	 PRIMARY KEY (Item_ID),
	 FOREIGN KEY (Man_ID) references Manufacturer(Man_ID) ON UPDATE CASCADE ON DELETE CASCADE
        );

create table Delivery_Attempt
        (Tracking_Num	 int(8),
	 Delivery_Status varchar(20),
       	 Delivery_Date	 DATE,
	 PRIMARY KEY (Tracking_Num)	
        );

create table Delivery_Attempt_Item
	(Tracking_Num	int(8),
	 Item_ID	int(9),
	 FOREIGN KEY (Tracking_Num) references Delivery_Attempt(Tracking_Num) ON UPDATE CASCADE ON DELETE CASCADE,
	 FOREIGN KEY (Item_ID) references  Item(Item_ID) ON UPDATE CASCADE ON DELETE CASCADE
	);

create table Customer_Account_Phone_Number
	(Account_Num	int(8),
	 Phone_Number	varchar(34),
	 PRIMARY KEY (Phone_Number, Account_Num),
	 FOREIGN KEY (Account_Num) references Customer_Account(Account_Num) ON UPDATE CASCADE ON DELETE CASCADE
	);
