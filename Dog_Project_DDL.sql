/*
SQL DDL Statements for Dog Project
Author: Amy McVicar
December 2019
IST659 Database Project
*/

/*
Drop Tables
Create Tables
*/

DROP TABLE IF EXISTS Income;
DROP TABLE IF EXISTS Costs;
DROP TABLE IF EXISTS Canines;
DROP TABLE IF EXISTS Contacts;
DROP TABLE IF EXISTS Organizations;
DROP TABLE IF EXISTS Fun_Events;
DROP TABLE IF EXISTS Products;

DROP TABLE IF EXISTS Contact_Organization;
DROP TABLE IF EXISTS Organization_Type;
DROP TABLE IF EXISTS Event_Type;
DROP TABLE IF EXISTS Countries;
DROP TABLE IF EXISTS Contact_Sub_Type_Value;
DROP TABLE IF EXISTS Contact_Sub_Type;
DROP TABLE IF EXISTS Contact_Org_Status;
DROP TABLE IF EXISTS Canine_Location_Type;
DROP TABLE IF EXISTS Canine_Status;
DROP TABLE IF EXISTS Cost_Type;
DROP TABLE IF EXISTS Payment_Type;
DROP TABLE IF EXISTS Product_Type;


---------------------------------------------

---------------------------------------------
-- Create Table Organization_Type
CREATE TABLE Organization_Type (
	-- Columns for the Organization_Type table
	Org_Type_ID int identity,
	Org_Type_Value char(20) not null,
	-- Constraints on the Organization_Type Table
	CONSTRAINT PK_Organization_Type PRIMARY KEY (Org_Type_ID),
	CONSTRAINT U1_Organization_Type UNIQUE (Org_Type_Value)
)
-- End Creating the Organization_Type table
---------------------------------------------
-- Create Table Event_Type
CREATE TABLE Event_Type (
	-- Columns for the Event_Type table
	Event_Type_ID int identity,
	Event_Type_Value char(100) NOT NULL,
	-- Constraints on the Event_Type Table
	CONSTRAINT PK_Event_Type PRIMARY KEY (Event_Type_ID),
	CONSTRAINT U1_Event_Type UNIQUE (Event_Type_Value)
)
-- End Creating the Event_Type table


---------------------------------------------
-- Create Table Countries
CREATE TABLE Countries (
	-- Columns for the Countries table
	Country_ID int identity,
	Country_ISO_Code char(2) not null,
	Country_Name char(200) not null,
	-- Constraints on the Countries Table
	CONSTRAINT PK_Countries PRIMARY KEY (Country_ID),
	CONSTRAINT U1_Countries UNIQUE (Country_ISO_Code),
	CONSTRAINT U2_Countries UNIQUE (Country_Name)
)

-- End Creating the Countries table


---------------------------------------------
-- Create Table Contact_Sub_Type_Value
CREATE TABLE Contact_Sub_Type_Value (
	-- Columns for the Contact_Sub_Type_Value table
	Contact_Sub_Type_Value_ID int identity,
	Contact_Sub_Type_Value char(50),
	-- Constraints on the Contact_Sub_Type_Valuee Table
	CONSTRAINT PK_Contact_Sub_Type_Value PRIMARY KEY (Contact_Sub_Type_Value_ID),
	CONSTRAINT U1_Contact_Sub_Type_Value UNIQUE (Contact_Sub_Type_Value)
)
-- End Creating the Contact_Sub_Type_Value table

---------------------------------------------
-- Create Table Contact_Sub_Type
CREATE TABLE Contact_Sub_Type (
	-- Columns for Contact_Sub_Type table
	Contact_Sub_Type_ID int identity,
	Contact_ID int NOT NULL,
	Contact_Sub_Typ_Value_ID int NOT NULL,
	Contact_Type_Date datetime DEFAULT CURRENT_TIMESTAMP,
	-- Constraints on the Contact_Sub_Type Table
	CONSTRAINT PK_Contact_Sub_Type PRIMARY KEY (Contact_Sub_Type_ID),
)
-- End Creating the Contact_Sub_Type table

---------------------------------------------
-- Create Table Contact_Org_Status
CREATE TABLE Contact_Org_Status (
	-- Columns for the Contact_Status table
	Contact_Org_Status_ID int identity,
	Contact_Org_Status_Value char(50) NOT NULL,
	-- Constraints on the Organization_Type Table
	CONSTRAINT PK_CContact_Org_Status PRIMARY KEY (Contact_Org_Status_ID),
	CONSTRAINT U1_Contact_Org_Status UNIQUE (Contact_Org_Status_Value)
)	
-- End Creating the Contact_Status table

---------------------------------------------
-- Create Table Canine_Location_Type
CREATE TABLE Canine_Location_Type (
	-- Columns for the Canine_Location_Type table
	Canine_Location_Type_ID int identity,
	Canine_Location_Type_Value char(20) NOT NULL,
	-- Constraints on the Canine_Location_Type Table
	CONSTRAINT PK_Canine_Location_Type PRIMARY KEY (Canine_Location_Type_ID),
	CONSTRAINT U1_Canine_Location_Type UNIQUE (Canine_Location_Type_Value)
)
-- End Creating the Canine_Location_Type table

---------------------------------------------
-- Create Table Canine_Status
CREATE TABLE Canine_Status (
	-- Columns for the Canine_Status table
	Canine_Status_ID int identity,
	Canine_Status_Value char(20) NOT NULL,
	-- Constraints on the Canine_Status Table
	CONSTRAINT PK_Canine_Status PRIMARY KEY (Canine_Status_ID),
	CONSTRAINT U1_Canine_Status UNIQUE (Canine_Status_Value)
)
-- End Creating the Canine_Status table

---------------------------------------------
-- Create Table Payment_Type
CREATE TABLE Payment_Type (
	-- Columns for the Payment_Type table
	Payment_Type_ID int identity,
	Payment_Type_Value char(20) NOT NULL,
	-- Constraints on the Payment_Type Table
	CONSTRAINT PK_Payment_Type PRIMARY KEY (Payment_Type_ID),
	CONSTRAINT U1_Payment_Type UNIQUE (Payment_Type_Value)
)
-- End Creating the Payment_Type table

---------------------------------------------
-- Create Table Cost_Type
CREATE TABLE Cost_Type (
	-- Columns for the Cost_Type table
	Cost_Type_ID int identity,
	Cost_Type_Value char(20) NOT NULL,
	-- Constraints on the Cost_Type Table
	CONSTRAINT PK_Cost_Type PRIMARY KEY (Cost_Type_ID),
	CONSTRAINT U1_Cost_Type UNIQUE (Cost_Type_Value)
)
-- End Creating the Cost_Type table
	
---------------------------------------------
-- Create Table Product_Type
CREATE TABLE Product_Type (
	-- Columns for the Product_Type table
	Product_Type_ID int identity,
	Product_Type_Value char(100) NOT NULL,
	-- Constraints on the Product_Type Table
	CONSTRAINT PK_Product_Type PRIMARY KEY (Product_Type_ID),
	CONSTRAINT U1_Product_Type UNIQUE (Product_Type_Value)
)
-- End Creating the Product_Type table

-- Create Table Contact_Organization
CREATE TABLE Contact_Organization (
	-- Columns for the Contact_Organization table
	Contact_Org_ID int identity,
	Contact_Org_Value char(50) not null,
	-- Constraints on the Contact_Organization Table
	CONSTRAINT PK_Contact_Organization PRIMARY KEY (Contact_Org_ID),
	CONSTRAINT U1_Contact_Organization UNIQUE (Contact_Org_Value)
)	
-- End Creating the Contact_Organization table


---------------------------------------------
-- Create Fun_Events Table
CREATE TABLE Fun_Events (
	-- Columns for the Fun_Events table
	Event_ID int identity,
	Event_Name varchar(100) NOT NULL,
	Location varchar(50) NOT NULL,
	Event_Start_Date date NOT NUll,
	Event_End_Date date,
	Event_Type_ID int,
	Description varchar(255),
	-- Constraints on the Fun_Events Table
	CONSTRAINT PK_Fun_Events PRIMARY KEY (Event_ID),
	CONSTRAINT F1_Fun_Events FOREIGN KEY (Event_Type_ID) REFERENCES Event_Type(Event_Type_ID)
)
-- End Creating the Fun_Events table



---------------------------------------------
-- Create Products Table
CREATE TABLE Products (
	-- Columns for the Products table
	Product_ID int identity,
	Product_Name varchar(100),
	Product_Type int,
	Product_Description varchar(255),
	Product_Cost decimal(10,2),
	Sale_Price decimal(10,2),
	Inventory_Quantity int,
	Product_Graphic_ID int,
	Product_Status char(20) DEFAULT 'Active',
	-- Constraints on the Products Table
	CONSTRAINT PK_Products PRIMARY KEY (Product_ID)
)
-- End Creating the Products table


-- Create Table Organizations
CREATE TABLE Organizations (
	-- Columns for the User table
	Org_ID int identity,
	Org_Name varchar(100) not null,
	Org_Address_1 varchar(100),
	Org_Address_2 varchar(100),
	Org_City varchar(100),
	Org_State varchar(100),
	Org_Postal varchar(50),
	Org_Country_ID int,
	Org_Phone varchar(50),
	Org_URL varchar(100),
	Contact_Org_Status_ID int DEFAULT 1,
	Org_Type_ID int,
	-- Constraints on the Organizations Table
	CONSTRAINT PK_Organizations PRIMARY KEY (Org_ID),
	CONSTRAINT U1_Organizations UNIQUE (Org_Name),
	CONSTRAINT FK1_Organizations FOREIGN KEY (Org_Type_ID) REFERENCES Organization_Type(Org_Type_ID),
	CONSTRAINT FK2_Organizations FOREIGN KEY (Contact_Org_Status_ID) REFERENCES Contact_Org_Status(Contact_Org_Status_ID)
)
-- End Creating the Organizations table


--------------------------------------------


---------------------------------------------
-- Create Table Contacts
CREATE TABLE Contacts (
	-- Columns for the Contacts table
	Contact_ID int identity,
	First_Name varchar(50),
	Middle_Name varchar(50),
	Last_Name varchar(50),
	Contact_Org_ID int,
	Phone varchar(50),
	Email varchar(100) not null,
	Email_Opt_In char(1),
	Address_1 varchar(100),
	Address_2 varchar(100),
	City varchar(100),
	Postal varchar(50),
	[State] varchar(100),
	Country_ID int,
	Contact_Org_Status_ID int DEFAULT 1,
	Org_ID int,
	-- Constraints on the Contacts Table
	CONSTRAINT PK_Contacts PRIMARY KEY (Contact_ID),
	CONSTRAINT U1_Contacts	UNIQUE (Email),
	CONSTRAINT FK1_Contacts FOREIGN KEY (Contact_Org_ID) REFERENCES Contact_Organization(Contact_Org_ID),
	CONSTRAINT FK2_Contacts FOREIGN KEY (Country_ID) REFERENCES Countries(Country_ID),
	CONSTRAINT FK3_Contacts FOREIGN KEY (Org_ID) REFERENCES Organizations(Org_ID),
	CONSTRAINT FK4_Contacts FOREIGN KEY (Contact_Org_Status_ID) REFERENCES Contact_Org_Status(Contact_Org_Status_ID)
)
-- End Creating the Contacts table


---------------------------------------------
-- Create Table Canines
CREATE TABLE Canines (
	-- Columns for the Canines table
	Canine_ID int identity,
	Current_Name varchar(50) NOT NULL,
	Original_Name varchar(50),
	Age_Estimated char(1),
	Birthdate date,
	Breed varchar(50),
	Description varchar(255),
	Canine_Location_Type_ID int NOT NULL,
	Canine_Status_ID int NOT NULL,
	Contact_Org_ID int NOT NULL,
	Owner_Org_ID int,
	Owner_Contact_ID int,
	Owner_Organization_Identifier char(100),
	Create_Date datetime,
	-- Constraints on the Canines Table
	CONSTRAINT PK_Canines PRIMARY KEY (Canine_ID),
	CONSTRAINT F1_Canines FOREIGN KEY (Canine_Location_Type_ID) REFERENCES Canine_Location_Type(Canine_Location_Type_ID),
	CONSTRAINT F2_Canines FOREIGN KEY (Canine_Status_ID) REFERENCES Canine_Status(Canine_Status_ID),
	CONSTRAINT F3_Canines FOREIGN KEY (Contact_Org_ID) REFERENCES Contact_Organization(Contact_Org_ID),
	CONSTRAINT F4_Canines FOREIGN KEY (Owner_Org_ID) REFERENCES Organizations(Org_ID),
	CONSTRAINT F5_Canines FOREIGN KEY (Owner_Contact_ID) REFERENCES Contacts(Contact_ID)
)
-- End Creating the Canines table

---------------------------------------------



---------------------------------------------
-- Create Table Income
CREATE TABLE Income (
	-- Columns for the Income table
	Income_ID int identity,
	Contact_Org_ID int,
	Org_ID int,
	Contact_ID int,
	Amount_Due decimal(10,2),
	Amount_Paid decimal(10,2) NOT NULL,
	Due_Date date,
	Paid_Date date NOT NULL,
	Payment_Type_ID int,
	Payment_Description varchar(255),
	Event_ID int,
	Canine_ID int,
	-- Constraints on the Income table
	CONSTRAINT PK_Income PRIMARY KEY (Income_ID),
	CONSTRAINT F1_Income FOREIGN KEY (Contact_Org_ID) REFERENCES Contact_Organization(Contact_Org_ID),
	CONSTRAINT F2_Income FOREIGN KEY (Org_ID) REFERENCES Organizations(Org_ID),
	CONSTRAINT F3_Income FOREIGN KEY (Contact_ID) REFERENCES Contacts(Contact_ID),
	CONSTRAINT F4_Income FOREIGN KEY (Payment_Type_ID) REFERENCES Payment_Type(Payment_Type_ID),
	CONSTRAINT F5_Income FOREIGN KEY (Event_ID) REFERENCES Fun_Events(Event_ID),
    CONSTRAINT F6_Income FOREIGN KEY (Canine_ID) REFERENCES Canines(Canine_ID)
)
-- End Creating the Income table



---------------------------------------------
-- Create Table Costs
CREATE TABLE Costs (
	-- Columns for the Costs table
	Cost_ID int identity,
	Contact_Org_ID int,
	Org_ID int,
	Contact_ID int,
	Cost_Type_ID int,
	Cost_Description varchar(255),
	PO varchar(50),
	Amount_Due decimal(10,2) NOT NULL,
	Due_Date date NOT NULL,
	Paid_Date date,
	Paid_By_Contact_ID int,
	Event_ID int,
	Canine_ID int	
	-- Constraints on the Costs Table
	CONSTRAINT PK_Costs PRIMARY KEY (Cost_ID),
	CONSTRAINT F1_Costs FOREIGN KEY (Contact_Org_ID) REFERENCES Contact_Organization(Contact_Org_ID),
	CONSTRAINT F2_Costs FOREIGN KEY (Org_ID) REFERENCES Organizations(Org_ID),
	CONSTRAINT F3_Costs FOREIGN KEY (Contact_ID) REFERENCES Contacts(Contact_ID),
	CONSTRAINT F4_Costs FOREIGN KEY (Cost_Type_ID) REFERENCES  Cost_Type(Cost_Type_ID),
	CONSTRAINT F5_Costs FOREIGN KEY (Paid_By_Contact_ID) REFERENCES Contacts(Contact_ID),
	CONSTRAINT F6_Costs FOREIGN KEY (Event_ID) REFERENCES [Fun_Events](Event_ID),
	CONSTRAINT F7_Costs FOREIGN KEY (Canine_ID) REFERENCES Canines(Canine_ID)
)
-- End Creating the Costs table


