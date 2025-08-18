/*
SQL DML Statements for Dog Project
Author: Amy McVicar
December 2019
IST659 Database Project
*/

/*
Load Sample Data into each of tables
Begin with the 'Type' and 'Value' tables created to manage data quality
*/
----TYPE TABLES----
-- Insert Into Organization_Type
INSERT INTO Organization_Type([Org_Type_Value]) VALUES('Vendor');
INSERT INTO Organization_Type([Org_Type_Value]) VALUES('Rescue');
INSERT INTO Organization_Type([Org_Type_Value]) VALUES('Shelter');
INSERT INTO Organization_Type([Org_Type_Value]) VALUES('Profit');
INSERT INTO Organization_Type([Org_Type_Value]) VALUES('Partner');
-- Insert Into Event_Type
INSERT INTO Event_Type([Event_Type_Value]) VALUES('Adoption');
INSERT INTO Event_Type([Event_Type_Value]) VALUES('Auction');
INSERT INTO Event_Type([Event_Type_Value]) VALUES('Awareness');
INSERT INTO Event_Type([Event_Type_Value]) VALUES('Donation Drive');
INSERT INTO Event_Type([Event_Type_Value]) VALUES('Sales');
INSERT INTO Event_Type([Event_Type_Value]) VALUES('Other');
-- Insert Into Countries
-- ISO Standard 2 ISO Country Code & Country Name imported from Excel
-- Insert Into Contact_Sub_Type_Value
INSERT INTO Contact_Sub_Type_Value([Contact_Sub_Type_Value]) VALUES('Organization - Partner');
INSERT INTO Contact_Sub_Type_Value([Contact_Sub_Type_Value]) VALUES('Organization - Vendor');
INSERT INTO Contact_Sub_Type_Value([Contact_Sub_Type_Value]) VALUES('Personal - Donor');
INSERT INTO Contact_Sub_Type_Value([Contact_Sub_Type_Value]) VALUES('Personal - Employee');
INSERT INTO Contact_Sub_Type_Value([Contact_Sub_Type_Value]) VALUES('Personal - Volunteer');
INSERT INTO Contact_Sub_Type_Value([Contact_Sub_Type_Value]) VALUES('Personal - Foster');
INSERT INTO Contact_Sub_Type_Value([Contact_Sub_Type_Value]) VALUES('Personal - Adopter');
INSERT INTO Contact_Sub_Type_Value([Contact_Sub_Type_Value]) VALUES('Personal - Other');
-- Insert Into Contact_Sub_Type

-- Insert Into Contact_Org_Status
INSERT INTO Contact_Org_Status([Contact_Org_Status_Value]) VALUES('Active');
INSERT INTO Contact_Org_Status([Contact_Org_Status_Value]) VALUES('Inactive - Deceased');
INSERT INTO Contact_Org_Status([Contact_Org_Status_Value]) VALUES('Inactive - Out of Business');
INSERT INTO Contact_Org_Status([Contact_Org_Status_Value]) VALUES('Inactive - Other');
INSERT INTO Contact_Org_Status([Contact_Org_Status_Value]) VALUES('Inactive - Bad Contact Data');
-- Insert Into Canine_Location_Type
INSERT INTO Canine_Location_Type([Canine_Location_Type_Value]) VALUES('Shelter');
INSERT INTO Canine_Location_Type([Canine_Location_Type_Value]) VALUES('Foster');
INSERT INTO Canine_Location_Type([Canine_Location_Type_Value]) VALUES('Foster Hospice');
INSERT INTO Canine_Location_Type([Canine_Location_Type_Value]) VALUES('Home');
INSERT INTO Canine_Location_Type([Canine_Location_Type_Value]) VALUES('Recue');
-- Insert Into Canine_Status
INSERT INTO Canine_Status([Canine_Status_Value]) VALUES('Urgent Need');
INSERT INTO Canine_Status([Canine_Status_Value]) VALUES('Need');
INSERT INTO Canine_Status([Canine_Status_Value]) VALUES('Fostered');
INSERT INTO Canine_Status([Canine_Status_Value]) VALUES('Sponsored');
INSERT INTO Canine_Status([Canine_Status_Value]) VALUES('Adopted');
INSERT INTO Canine_Status([Canine_Status_Value]) VALUES('Lost');
INSERT INTO Canine_Status([Canine_Status_Value]) VALUES('Found');
INSERT INTO Canine_Status([Canine_Status_Value]) VALUES('Reunited');
INSERT INTO Canine_Status([Canine_Status_Value]) VALUES('Deceased');
-- Insert Into Cost_Type
INSERT INTO Cost_Type([Cost_Type_Value]) VALUES('Payroll');
INSERT INTO Cost_Type([Cost_Type_Value]) VALUES('Supplies');
INSERT INTO Cost_Type([Cost_Type_Value]) VALUES('Taxes');
INSERT INTO Cost_Type([Cost_Type_Value]) VALUES('Veterinarian');
INSERT INTO Cost_Type([Cost_Type_Value]) VALUES('Services');
INSERT INTO Cost_Type([Cost_Type_Value]) VALUES('Other');
-- Insert Into Payment_Type
INSERT INTO Payment_Type([Payment_Type_Value]) VALUES('Adoption Fee');
INSERT INTO Payment_Type([Payment_Type_Value]) VALUES('Sponsorship');
INSERT INTO Payment_Type([Payment_Type_Value]) VALUES('Donation');
INSERT INTO Payment_Type([Payment_Type_Value]) VALUES('Customer');
INSERT INTO Payment_Type([Payment_Type_Value]) VALUES('Credit Adjustment');
INSERT INTO Payment_Type([Payment_Type_Value]) VALUES('Other');
-- Insert Into Product_Type
INSERT INTO Product_Type([Product_Type_Value]) VALUES('Collar');
INSERT INTO Product_Type([Product_Type_Value]) VALUES('Leash');
INSERT INTO Product_Type([Product_Type_Value]) VALUES('Food Mat');
INSERT INTO Product_Type([Product_Type_Value]) VALUES('Dog Bed Padding');
INSERT INTO Product_Type([Product_Type_Value]) VALUES('Dog Bed Cover');
INSERT INTO Product_Type([Product_Type_Value]) VALUES('Travel Water Bowl');
INSERT INTO Product_Type([Product_Type_Value]) VALUES('Hiking Water Dispenser');
--Insert into Contact_Organization
INSERT INTO Contact_Organization([Contact_Org_Value]) VALUES('Contact');
INSERT INTO Contact_Organization([Contact_Org_Value]) VALUES('Organization');
