#### EXPORT ####

### Determine total size
#
# SELECT
#    Data_BB / POWER(1024,1) Data_KB,
#   Data_BB / POWER(1024,2) Data_MB,
#    Data_BB / POWER(1024,3) Data_GB
# FROM (
#    SELECT SUM(data_length) Data_BB
#    FROM information_schema.tables
#    WHERE table_schema IN ('database')
# ) A;

### Pipe Viewer
mysqldump -uUSER -pPASSWORD DATABASE | pv -s sizeM > output.sql

#### IMPORT ####

# Pipe Viewer
pv file.sql | mysql -u user -p database
