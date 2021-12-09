USE lsantos_cs355fa21;

delete from Customer_Account_Phone_Number;
delete from Delivery_Attempt_Item;
delete from Payments;
delete from Item;
delete from Delivery_Attempt;

delete from Customer_Account;
delete from Manufacturer;

insert into Customer_Account values ('86946395', 'Shawn White', '413 Elm Street', 'Dawsons Creek', 'CA', '75837','2020-05-29');
insert into Customer_Account values ('17348442', 'Joe Smoe', '1892 Castner Lane', 'Mill Way', 'GA', '47382','2019-12-20');
insert into Customer_Account values ('95593020', 'Steve McQueen', '1255 Makers Way', 'Flavor Town', 'CA', '45676','2021-10-12');
insert into Customer_Account values ('11292394', 'Paulo Rendon', '413 Charter Ave', 'Twin Peaks', 'CA', '38495','2019-05-12');

insert into Manufacturer values ('258312834', 'Master Foods');
insert into Manufacturer values ('050683626', 'Fall Eats');
insert into Manufacturer values ('257463782', 'Craving Inc');
insert into Manufacturer values ('356473882', 'Cold Cuts Foodies');

insert into Payments values ('747583829', '285398462', '2021-10-20', '86946395', '258312834');
insert into Payments values ('374785896', '394872611', '2021-10-28', '17348442', '050683626');
insert into Payments values ('938920487', '859489840', '2021-10-13', '95593020', '257463782');
insert into Payments values ('643326784', '938003423', '2021-10-15', '11292394', '356473882');

insert into Item values ('392948520', 'Fried Rice Meal Kit', '258312834');
insert into Item values ('509605943', 'Ice Cream', '050683626');
insert into Item values ('449293455', 'Bagged Popcorn Co' , '257463782');
insert into Item values ('885498599', 'Pork', '356473882');

insert into Delivery_Attempt values ('85940302', 'Delivered', '2021-10-23');
insert into Delivery_Attempt values ('47594293', 'Not Delivered', '2021-11-02');
insert into Delivery_Attempt values ('34875879', 'Delivered', '2021-10-15');
insert into Delivery_Attempt values ('49586669', 'Delivered', '2021-10-18');

insert into Delivery_Attempt_Item values('85940302', '392948520');
insert into Delivery_Attempt_Item values('47594293', '509605943');
insert into Delivery_Attempt_Item values('34875879', '449293455');
insert into Delivery_Attempt_Item values('49586669', '885498599');

insert into Customer_Account_Phone_Number values('86946395', '1112134437');
insert into Customer_Account_Phone_Number values('17348442', '2218694935');
insert into Customer_Account_Phone_Number values('95593020', '3315904843');
insert into Customer_Account_Phone_Number values('11292394', '4414503223');



