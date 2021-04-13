CREATE EXTERNAL TABLE `catalog_page`(
  `cp_catalog_page_sk` int, 
  `cp_catalog_page_id` string, 
  `cp_start_date_sk` int, 
  `cp_end_date_sk` int, 
  `cp_department` string, 
  `cp_catalog_number` int, 
  `cp_catalog_page_number` int, 
  `cp_description` string, 
  `cp_type` string)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.ql.io.parquet.serde.ParquetHiveSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.parquet.MapredParquetInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.parquet.MapredParquetOutputFormat'
LOCATION
  'DESTINATION_PATH/catalog_page';

