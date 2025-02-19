create table [dbo].[IncrementalLoadMetadata](
entityID INT,
loadStartTime DATETIME,
status VARCHAR(50),
loadEndTime DATETIME,
processID INT Primary Key Identity(1,1)
);
