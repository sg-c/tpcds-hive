CREATE EXTERNAL TABLE `customer_demographics`(
  `cd_demo_sk` int, 
  `cd_gender` string, 
  `cd_marital_status` string, 
  `cd_education_status` string, 
  `cd_purchase_estimate` int, 
  `cd_credit_rating` string, 
  `cd_dep_count` int, 
  `cd_dep_employed_count` int, 
  `cd_dep_college_count` int)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.ql.io.parquet.serde.ParquetHiveSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.parquet.MapredParquetInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.parquet.MapredParquetOutputFormat'
LOCATION
  'DESTINATION_PATH/customer_demographics';

