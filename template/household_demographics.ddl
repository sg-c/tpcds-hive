CREATE EXTERNAL TABLE `household_demographics`(
  `hd_demo_sk` int, 
  `hd_income_band_sk` int, 
  `hd_buy_potential` string, 
  `hd_dep_count` int, 
  `hd_vehicle_count` int)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.ql.io.parquet.serde.ParquetHiveSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.parquet.MapredParquetInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.parquet.MapredParquetOutputFormat'
LOCATION
  'DESTINATION_PATH/household_demographics';

