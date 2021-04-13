CREATE EXTERNAL TABLE `store_returns`(
  `sr_return_time_sk` int, 
  `sr_item_sk` int, 
  `sr_customer_sk` int, 
  `sr_cdemo_sk` int, 
  `sr_hdemo_sk` int, 
  `sr_addr_sk` int, 
  `sr_store_sk` int, 
  `sr_reason_sk` int, 
  `sr_ticket_number` bigint, 
  `sr_return_quantity` int, 
  `sr_return_amt` double, 
  `sr_return_tax` double, 
  `sr_return_amt_inc_tax` double, 
  `sr_fee` double, 
  `sr_return_ship_cost` double, 
  `sr_refunded_cash` double, 
  `sr_reversed_charge` double, 
  `sr_store_credit` double, 
  `sr_net_loss` double)
PARTITIONED BY ( 
  `sr_returned_date_sk` int)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.ql.io.parquet.serde.ParquetHiveSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.parquet.MapredParquetInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.parquet.MapredParquetOutputFormat'
LOCATION
  'DESTINATION_PATH/store_returns';

