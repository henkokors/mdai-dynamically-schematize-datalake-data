-- Create schema if not exists
IF NOT EXISTS ( SELECT name FROM sys.schemas WHERE name = N'datahub' )
    EXEC('CREATE SCHEMA [datahub]');

-- Drop existing tables for idempotent SQL
DROP TABLE IF EXISTS datahub.Address
DROP TABLE IF EXISTS datahub.Customer
DROP TABLE IF EXISTS datahub.ProductModel
DROP TABLE IF EXISTS datahub.ProductDescription
DROP TABLE IF EXISTS datahub.Product
DROP TABLE IF EXISTS datahub.ProductModelProductDescription
DROP TABLE IF EXISTS datahub.ProductCategory
DROP TABLE IF EXISTS datahub.CustomerAddress
DROP TABLE IF EXISTS datahub.SalesOrderDetail
DROP TABLE IF EXISTS datahub.SalesOrderHeader

-- Create datahub tables based on the SalesLT tables
SELECT * INTO datahub.Customer                          FROM SalesLT.Customer                       WHERE 1=0;
SELECT * INTO datahub.ProductModel                      FROM SalesLT.ProductModel                   WHERE 1=0;
SELECT * INTO datahub.ProductDescription                FROM SalesLT.ProductDescription             WHERE 1=0;
SELECT * INTO datahub.Product                           FROM SalesLT.Product                        WHERE 1=0;
SELECT * INTO datahub.ProductModelProductDescription    FROM SalesLT.ProductModelProductDescription WHERE 1=0;
SELECT * INTO datahub.ProductCategory                   FROM SalesLT.ProductCategory                WHERE 1=0;
SELECT * INTO datahub.Address                           FROM SalesLT.Address                        WHERE 1=0;
SELECT * INTO datahub.CustomerAddress                   FROM SalesLT.CustomerAddress                WHERE 1=0;
SELECT * INTO datahub.SalesOrderDetail                  FROM SalesLT.SalesOrderDetail               WHERE 1=0;
SELECT * INTO datahub.SalesOrderHeader                  FROM SalesLT.SalesOrderHeader               WHERE 1=0;