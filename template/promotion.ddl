CREATE EXTERNAL TABLE `promotion`(
  `p_promo_sk` int, 
  `p_promo_id` string, 
  `p_start_date_sk` int, 
  `p_end_date_sk` int, 
  `p_item_sk` int, 
  `p_cost` double, 
  `p_response_target` int, 
  `p_promo_name` string, 
  `p_channel_dmail` string, 
  `p_channel_email` string, 
  `p_channel_catalog` string, 
  `p_channel_tv` string, 
  `p_channel_radio` string, 
  `p_channel_press` string, 
  `p_channel_event` string, 
  `p_channel_demo` string, 
  `p_channel_details` string, 
  `p_purpose` string, 
  `p_discount_active` string)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.ql.io.parquet.serde.ParquetHiveSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.parquet.MapredParquetInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.parquet.MapredParquetOutputFormat'
LOCATION
  'DESTINATION_PATH/promotion';

