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
    Quantity INT,
    lastUpdateDate DATETIME DEFAULT GETDATE()
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
    Quantity INT,
    lastUpdateDate DATETIME DEFAULT GETDATE()
);


CREATE TABLE [dbo].[pipelineRunDetail]
(
    pipelinerunId INT PRIMARY KEY IDENTITY(1,1),
	entityID INT,  
    pipelineName NVARCHAR(255),
	pipelineId NVARCHAR(50),
	runStage NVARCHAR(50),
    runStatus NVARCHAR(50),
	loadType VARCHAR(50),      
    runStartTime DATETIME,           
    runEndTime DATETIME,            
    durationInSeconds INT,           
    errorMessage NVARCHAR(MAX),      
    lastUpdated DATETIME DEFAULT GETDATE()
);

CREATE PROCEDURE [dbo].[InsertPipelineRunDetail]
    @pipelineName NVARCHAR(255),
    @pipelineId NVARCHAR(50),
    @runStage NVARCHAR(50),
    @runStatus NVARCHAR(50),
    @loadType VARCHAR(50),
    @runStartTime DATETIME,
    @runEndTime DATETIME,
    @entityName NVARCHAR(255), 
    @errorMessage NVARCHAR(MAX)
AS
BEGIN
    DECLARE @entityID INT;
    SELECT @entityID = entityID
    FROM [dbo].[Entity]
    WHERE entityName = @entityName;

    DECLARE @durationInSeconds INT;
    SET @durationInSeconds = DATEDIFF(SECOND, @runStartTime, @runEndTime);

    INSERT INTO [dbo].[pipelineRunDetail]
    (
        pipelineName,
        pipelineId,
        runStage,
        runStatus,
        loadType,
        runStartTime,
        runEndTime,
        durationInSeconds,
        entityId,
        errorMessage
    )
    VALUES
    (
        @pipelineName,
        @pipelineId,
        @runStage,
        @runStatus,
        @loadType,
        @runStartTime,
        @runEndTime,
        @durationInSeconds,
        @entityId,
        @errorMessage
    );
END;

