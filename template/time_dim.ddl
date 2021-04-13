CREATE EXTERNAL TABLE `time_dim`(
  `t_time_sk` int, 
  `t_time_id` string, 
  `t_time` int, 
  `t_hour` int, 
  `t_minute` int, 
  `t_second` int, 
  `t_am_pm` string, 
  `t_shift` string, 
  `t_sub_shift` string, 
  `t_meal_time` string)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.ql.io.parquet.serde.ParquetHiveSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.parquet.MapredParquetInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.parquet.MapredParquetOutputFormat'
LOCATION
  'DESTINATION_PATH/time_dim';

