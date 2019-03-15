# mdai-dynamically-schematize-datalake-data
0. Clone the code into your local repo for your own Azure Data Factory
1. Place the files under 'datalake-10-raw' in your own datalake
2. Deploy the sample database AdventureWorksLT on your Azure SQL Server
3. Create the `datahub` objects using [create-datahub.sql](.\create-datahub.sql)
4. Ensure your [ADF Managed Identity](https://docs.microsoft.com/en-us/azure/data-factory/data-factory-service-identity#retrieve-managed-identity) has the required permissions on your [ADLS source](https://docs.microsoft.com/en-us/azure/data-factory/connector-azure-data-lake-storage#managed-identity) &  [SQL destination](https://docs.microsoft.com/en-us/azure/data-factory/connector-azure-sql-database#managed-identity)
2. Update the (Managed Identity) linked services to your own source/destination
3. .. Get going! :)
