CREATE EXTERNAL TABLE `web_page`(
  `wp_web_page_sk` int, 
  `wp_web_page_id` string, 
  `wp_rec_start_date` string, 
  `wp_rec_end_date` string, 
  `wp_creation_date_sk` int, 
  `wp_access_date_sk` int, 
  `wp_autogen_flag` string, 
  `wp_customer_sk` int, 
  `wp_url` string, 
  `wp_type` string, 
  `wp_char_count` int, 
  `wp_link_count` int, 
  `wp_image_count` int, 
  `wp_max_ad_count` int)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.ql.io.parquet.serde.ParquetHiveSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.parquet.MapredParquetInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.parquet.MapredParquetOutputFormat'
LOCATION
  'DESTINATION_PATH/web_page';

