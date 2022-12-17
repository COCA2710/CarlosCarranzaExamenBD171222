--Crear dispositivo de backups

EXEC sp_addumpdevice 'disk', 'AWDV_CCarranzaA',
'C:\Backup\AWDV_CCarranzaA.bak'
GO

-- Creacion de backup
DECLARE @BACKUP_NAME VARCHAR(50)
SET @BACKUP_NAME =N'AWbk'+FORMAT(GETDATE(),'yyyyMMdd_hhmmss')
BACKUP DATABASE AdventureWorks2019
TO AWDV_CCarranzaA
WITH NOFORMAT , NOINIT , NAME = @BACKUP_NAME
GO 

