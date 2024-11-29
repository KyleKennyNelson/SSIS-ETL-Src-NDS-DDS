Project Overview
This project implements an ETL (Extract, Transform, Load) process using SQL Server Integration Services (SSIS). The goal is to extract data from a source system, transform and stage it in the Near Data Store (NDS), and finally load it into the Data Distribution Store (DDS) for further use in reporting and analytics.

Project Structure
The project consists of the following components:

Source-to-NDS (Extract and Stage):

Extract data from the source system.
Perform minimal transformations (e.g., data type conversion, initial cleansing).
Load the data into the NDS tables.
NDS-to-DDS (Transform and Load):

Perform business logic and complex transformations.
Load the processed data into the DDS tables.
Logging and Error Handling:

Implement logging for success and error tracking in the ETL pipeline.
Store logs in a dedicated logging table.
Configuration:

Parameters for dynamic connection strings, file paths, and environment-specific settings.
Pre-Requisites
Ensure the following are installed and configured before running the project:

SQL Server with the necessary databases:
Source Database (e.g., OLTP system)
NDS (staging area)
DDS (data warehouse)
SQL Server Integration Services (SSIS)
Visual Studio with SQL Server Data Tools (SSDT) for project editing.
Git (if cloning from version control).
Configuration
Before running the project, update the following:

Connection Managers:

Define connection managers for:
Source database
NDS database
DDS database
Use project parameters to make connections dynamic.
Environment Variables (optional):

Set up SSIS environment variables for production deployments.
Configuration Files (if used):

Update config.json or .dtsConfig files with appropriate settings for your environment.
