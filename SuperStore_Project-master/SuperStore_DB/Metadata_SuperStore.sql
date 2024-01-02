
use Metadata_SuperStore
go 

-- Data_Flow
drop table if exists Data_Flow
create table Data_Flow (
	id int IDENTITY(1,1) PRIMARY KEY,
	table_name nvarchar(255) NOT NULL, 
	LSET datetime NOT NULL
);

insert into Data_Flow (table_name, LSET) values
    ('ShipDate_Stage', '2011-01-01'),
    ('OrderDate_Stage', '2011-01-01'),
    ('Ship_Mode_Stage', '2011-01-01'),
    ('Customer_Stage', '2011-01-01'),
    ('Segment_Stage', '2011-01-01'),
    ('Product_Stage', '2011-01-01'),
    ('Address_Stage', '2011-01-01'),
	('Order_Stage', '2011-01-01');

-- DDS
drop table if exists DDS
create table DDS (
	id int IDENTITY(1,1) PRIMARY KEY,
	table_name nvarchar(255) NOT NULL, 
	LSET datetime NOT NULL
);

INSERT INTO DDS (table_name, LSET) VALUES
    ('City_DDS', '2011-01-01'),
    ('State_DDS', '2011-01-01'),
    ('Country_DDS', '2011-01-01'),
    ('PostalCode_DDS', '2011-01-01'),
    ('Region_DDS', '2011-01-01'),
    ('Market_DDS', '2011-01-01'),
    ('ShipMode_DDS', '2011-01-01'),
    ('Category_DDS', '2011-01-01'),
    ('SubCategory_DDS', '2011-01-01'),
    ('Product_DDS', '2011-01-01'),
    ('Customer_DDS', '2011-01-01'),
    ('Segment_DDS', '2011-01-01'),
    ('OrderDate_DDS', '2011-01-01'),
    ('ShipDate_DDS', '2011-01-01'),
	('Order_DDS', '2011-01-01'),
	('Transaction_DDS', '2011-01-01'),
	('DDS_Fact1', '2011-01-01'),
	('DDS_Fact2', '2011-01-01'),
	('DDS_Fact3', '2011-01-01'),
	('DDS_Fact4', '2011-01-01'),
	('DDS_Fact5', '2011-01-01'),
	('DDS_Fact6', '2011-01-01'),
	('Fact_OLAP', '2011-01-01');



select * from Data_Flow
select * from DDS
