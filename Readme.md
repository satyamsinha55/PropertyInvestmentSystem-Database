# PropertyInvestmentSystem

PropertyInvestmentSystem is a database designed to store and manage property investment data sourced from the US Census Bureau's housing data. The system provides a centralized repository for property investment information, allowing users to analyze, track, and make informed investment decisions.

## Data Source

The housing data used in this project is obtained from the US Census Bureau's ACS 2016-5 year estimates. The data files can be downloaded from the following URL:

[US Census Bureau ACS 2016-5 E Housing Data](https://data.world/uscensusbureau/acs-2016-5-e-housing/)

Please note that in addition to the US Census Bureau data, some data in the database has been randomly generated to augment the dataset and suit the needs of the system.

## Database Setup

1. Download the necessary data files from the provided URL.
2. Filter out unnecessary columns from the downloaded data files.
3. Create an SQL file to load the data into the database.
4. Use PostgreSQL (PGSQL) or a compatible database management system to set up the database.
5. Execute the SQL file to create the necessary tables and insert the data into the database.

## System Components

The system consists of the following components:

1. **CSV Files**: The `/csv files` folder contains the filtered data files (`NY.csv` and `US_All_States.csv`) used for data loading.

2. **SQL Tables**: The `/sql tables` folder contains the SQL scripts required to create the tables in the database schema.

3. **Sample Queries**: The `/sample queries` folder includes example SQL queries that demonstrate how to retrieve and analyze property investment data from the database.

4. **ER Diagram**: The `/er diagram` folder contains an Entity-Relationship (ER) diagram representing the database schema and its relationships.

5. **Screenshots**: The `/screenshots` folder includes screenshots showcasing the database structure, sample query results, or any other relevant visual representations of the database.

## Usage

To use the PropertyInvestmentSystem, follow these steps:

1. Set up the database using PostgreSQL (PGSQL) or a compatible database management system.
2. Load the data into the database from the CSV files and SQL scripts.
3. Connect to the database using your preferred database management system.
4. Perform queries and analysis on the property investment data stored in the database.
5. Leverage the data to make informed property investment decisions.
