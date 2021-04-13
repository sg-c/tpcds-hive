CREATE EXTERNAL TABLE `customer_address`(
  `ca_address_sk` int, 
  `ca_address_id` string, 
  `ca_street_number` string, 
  `ca_street_name` string, 
  `ca_street_type` string, 
  `ca_suite_number` string, 
  `ca_city` string, 
  `ca_county` string, 
  `ca_state` string, 
  `ca_zip` string, 
  `ca_country` string, 
  `ca_gmt_offset` double, 
  `ca_location_type` string)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.ql.io.parquet.serde.ParquetHiveSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.parquet.MapredParquetInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.parquet.MapredParquetOutputFormat'
LOCATION
  'DESTINATION_PATH/customer_address';

