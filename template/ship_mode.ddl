CREATE EXTERNAL TABLE `ship_mode`(
  `sm_ship_mode_sk` int, 
  `sm_ship_mode_id` string, 
  `sm_type` string, 
  `sm_code` string, 
  `sm_carrier` string, 
  `sm_contract` string)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.ql.io.parquet.serde.ParquetHiveSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.parquet.MapredParquetInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.parquet.MapredParquetOutputFormat'
LOCATION
  'DESTINATION_PATH/ship_mode';

