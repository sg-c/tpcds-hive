#!/bin/sh

if [ $# -ne 2 ]
then
    echo "Usage: $0 <new_database_name> <new_external_location_path_to_tables>"
    echo "example: $0 'gcs_tpcds'  gs://alluxio-alex/ufs/tpc-ds-test-data/parquet/scale100 "
    echo "example: $0 'hdfs_tpcds'  hdfs://user/hive/data/tpc-ds-test-data/parquet/scale100 "
    echo "example: $0 'alluxio_tpcds'  alluxio://alluxio-alex/ufs/tpc-ds-test-data/parquet/scale100 "
    exit 1
fi
NEW_DB_NAME="${1}"
NEW_FILE_PATH="${2}"
HIVE="hive -S"
tables="`cd template/; ls *.ddl`"

# Create new database
hive -e "create database ${NEW_DB_NAME}"
touch ${NEW_DB_NAME}.ddl
> ${NEW_DB_NAME}.ddl

for table in ${tables}
do
    echo "Working on $table"
    TABLE_NAME="`basename $table .ddl`"

    # Change file path
    sed s^DESTINATION_PATH^${NEW_FILE_PATH}^ template/${table} >> ${NEW_DB_NAME}.ddl

    
    # Repair partitions for Hive
    echo "MSCK REPAIR TABLE ${TABLE_NAME};" >> ${NEW_DB_NAME}.ddl
done

echo "Creating and MSCK'ing all tables now in ${NEW_DB_NAME}"
hive --database ${NEW_DB_NAME} -f ${NEW_DB_NAME}.ddl

