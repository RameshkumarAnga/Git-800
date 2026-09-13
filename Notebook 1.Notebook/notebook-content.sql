-- Fabric notebook source

-- METADATA ********************

-- META {
-- META   "kernel_info": {
-- META     "name": "sqldatawarehouse"
-- META   },
-- META   "dependencies": {
-- META     "warehouse": {
-- META       "default_warehouse": "748b7c84-00ae-4a99-8974-fbb2ac4758cf",
-- META       "known_warehouses": [
-- META         {
-- META           "id": "748b7c84-00ae-4a99-8974-fbb2ac4758cf",
-- META           "type": "MountedWarehouse"
-- META         }
-- META       ]
-- META     }
-- META   }
-- META }

-- CELL ********************

-- Welcome to your new notebook
-- Type here in the cell editor to add code!

-- %%sql

DECLARE @jsonDocument json = '[{"Given name":"Phillip","Family name":"Burton"},
                                {"Given name":"Phillip","Middle Name":"Anne","Family name":"Burton"}]'
SELECT @jsonDocument

-- METADATA ********************

-- META {
-- META   "language": "sql",
-- META   "language_group": "sqldatawarehouse"
-- META }

-- CELL ********************

SELECT @@VERSION

-- METADATA ********************

-- META {
-- META   "language": "sql",
-- META   "language_group": "sqldatawarehouse"
-- META }

-- CELL ********************

CREATE TABLE StagingSales (
    Id INT NOT NULL,
    JsonData VARCHAR(8000) -- Use VARCHAR to store the JSON string
);

-- METADATA ********************

-- META {
-- META   "language": "sql",
-- META   "language_group": "sqldatawarehouse"
-- META }

-- CELL ********************

-- Insert sample JSON string
INSERT INTO StagingSales (Id, JsonData)
VALUES (1, '{"Customer": "Alice", "Details": {"Age": 30, "City": "New York"}}');

-- Parse the JSON data
SELECT 
    Id,
    JSON_VALUE(JsonData, '$.Customer') AS CustomerName,
    JSON_VALUE(JsonData, '$.Details.City') AS City
FROM StagingSales;

-- METADATA ********************

-- META {
-- META   "language": "sql",
-- META   "language_group": "sqldatawarehouse"
-- META }

-- CELL ********************

CREATE TABLE StagingSales (
    Id INT NOT NULL,
    JsonData VARCHAR(8000) -- Use VARCHAR to store the JSON string
);

-- Insert sample JSON string
INSERT INTO StagingSales (Id, JsonData)
VALUES (1, '{"Customer": "Alice", "Details": {"Age": 30, "City": "New York"}}');

-- Parse the JSON data
SELECT 
    Id,
    JSON_VALUE(JsonData, '$.Customer') AS CustomerName,
    JSON_VALUE(JsonData, '$.Details.City') AS City
FROM StagingSales;

SELECT *
FROM StagingSales

-- METADATA ********************

-- META {
-- META   "language": "sql",
-- META   "language_group": "sqldatawarehouse"
-- META }

-- CELL ********************


-- METADATA ********************

-- META {
-- META   "language": "sql",
-- META   "language_group": "sqldatawarehouse"
-- META }
