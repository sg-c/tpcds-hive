CREATE EXTERNAL TABLE `warehouse`(
  `w_warehouse_sk` int, 
  `w_warehouse_id` string, 
  `w_warehouse_name` string, 
  `w_warehouse_sq_ft` int, 
  `w_street_number` string, 
  `w_street_name` string, 
  `w_street_type` string, 
  `w_suite_number` string, 
  `w_city` string, 
  `w_county` string, 
  `w_state` string, 
  `w_zip` string, 
  `w_country` string, 
  `w_gmt_offset` double)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.ql.io.parquet.serde.ParquetHiveSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.parquet.MapredParquetInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.parquet.MapredParquetOutputFormat'
LOCATION
  'DESTINATION_PATH/warehouse';

