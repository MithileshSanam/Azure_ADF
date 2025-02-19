create table [dbo].[IncrementalLoadMetadata](
entityID INT,
loadStartTime DATETIME,
status VARCHAR(50),
loadEndTime DATETIME,
pipelineID VARCHAR(50),
processID INT Primary Key Identity(1,1)
);


create table [dbo].[Entity](
entityID INT Primary Key Identity(1,1),
entityName Varchar(50)
);


CREATE TABLE [dbo].[Arancione] (
    ArancioneID INT PRIMARY KEY IDENTITY(1,1),      
    OnlineRetailer VARCHAR(255),           
    SalesMonth DATE,                       
    Title VARCHAR(255),                  
    Vintage INT,                          
    Variety VARCHAR(100),                 
    Score INT,                            
    ListPrice DECIMAL(10, 2),               
    Quantity INT                             
);


CREATE TABLE [dbo].[Celeste] (
    TransactionId UNIQUEIDENTIFIER PRIMARY KEY, 
    TransactionDate DATE,                       
    OnlineRetailer VARCHAR(255),               
    SalesMonth DATE,                            
    SalesRegion VARCHAR(100),                   
    SalesCurrency VARCHAR(10),                 
    Title VARCHAR(255),                         
    Vintage INT,                                
    Variety VARCHAR(100),                       
    Score INT,                                  
    ListPrice DECIMAL(10, 2),                  
    Quantity INT                           
);
