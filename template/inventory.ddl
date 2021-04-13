CREATE EXTERNAL TABLE `inventory`(
  `inv_item_sk` int, 
  `inv_warehouse_sk` int, 
  `inv_quantity_on_hand` int)
PARTITIONED BY ( 
  `inv_date_sk` int)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.ql.io.parquet.serde.ParquetHiveSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.parquet.MapredParquetInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.parquet.MapredParquetOutputFormat'
LOCATION
  'DESTINATION_PATH/inventory';

