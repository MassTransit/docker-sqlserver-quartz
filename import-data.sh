#!/bin/sh

echo "Waiting for SQL Server to start"

sleep 20s

until /opt/mssql-tools/bin/sqlcmd -S localhost -U sa -P $SA_PASSWORD -d master -i tables_sqlServer.sql
do
   sleep 5
   echo "Trying again..."
done

echo "Quartz.NET Database Script Completed"

