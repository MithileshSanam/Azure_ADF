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
