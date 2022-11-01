CREATE DATABASE myDB;
USE myDB;
-- DROP DATABASE mydb;

-- Modify database to read only == 1
-- After read only == 1, database cant drop 
ALTER DATABASE myDB READ ONLY = 0;

-- Need to install keyring to work with encrypted database
ALTER DATABASE myDB ENCRYPTION = 'N';

-- look for plugin keyring 
SELECT 
    PLUGIN_NAME, PLUGIN_STATUS
FROM
    INFORMATION_SCHEMA.PLUGINS;

-- files path for plugins 
SHOW VARIABLES LIKE 'plugin_dir';

-- install plugin
INSTALL PLUGIN keyring_file SONAME 'keyring_file.dll';









