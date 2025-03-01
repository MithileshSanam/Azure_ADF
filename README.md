# Implementing End to End Azure pipeline using SCD1 and SCD2 for Database and File based ingestion
## Project Structure:
<b> Project Description:</b><br/>
This is an end to end data engineering project utilising file based and database ingestion for full load and incremental load. Utilizing SCD1 and SCD2 types for medallion architecture.
<br/> Tools: Azure SQL DB, Azure Databricks, Azure Data Factory, Azure Key Vault, Azure Datalake Storage 
  <br/><b>Sources:</b><br/>
  <ol>
          <li>Database Ingestion : Azure SQL DB</li>
          <li>File based Ingestion: ADLS Gen2 Container</li></ol>

  <br/>
  <b>Ingestion Structure </b>
  <ol>
    <li>Source to Landing: Database/File based(csv) to parquet</li>
    <li>Bronze Ingestion: Delta using SCD1</li>
<li> Silver Ingestion: Delta using SCD2 </li>
    <li> Gold Ingestion: Delta using SCD1 (latest version from Silver)</li>
  </ol>
  <b>Architecture:</b>
  <br/>FULL LOAD
  <img width="1048" alt="Screenshot 2025-03-01 at 5 55 41 PM" src="https://github.com/user-attachments/assets/1a02d23a-5a57-40f8-b027-04d1f8420412" />
  <br/> INCREMENTAL LOAD
<img width="1425" alt="Screenshot 2025-03-01 at 6 04 41 PM" src="https://github.com/user-attachments/assets/2acd1f8f-1020-4145-a30f-847c67b45857" />
