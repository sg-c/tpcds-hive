CREATE EXTERNAL TABLE `web_returns`(
  `wr_returned_time_sk` int, 
  `wr_item_sk` int, 
  `wr_refunded_customer_sk` int, 
  `wr_refunded_cdemo_sk` int, 
  `wr_refunded_hdemo_sk` int, 
  `wr_refunded_addr_sk` int, 
  `wr_returning_customer_sk` int, 
  `wr_returning_cdemo_sk` int, 
  `wr_returning_hdemo_sk` int, 
  `wr_returning_addr_sk` int, 
  `wr_web_page_sk` int, 
  `wr_reason_sk` int, 
  `wr_order_number` bigint, 
  `wr_return_quantity` int, 
  `wr_return_amt` double, 
  `wr_return_tax` double, 
  `wr_return_amt_inc_tax` double, 
  `wr_fee` double, 
  `wr_return_ship_cost` double, 
  `wr_refunded_cash` double, 
  `wr_reversed_charge` double, 
  `wr_account_credit` double, 
  `wr_net_loss` double)
PARTITIONED BY ( 
  `wr_returned_date_sk` int)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.ql.io.parquet.serde.ParquetHiveSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.parquet.MapredParquetInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.parquet.MapredParquetOutputFormat'
LOCATION
  'DESTINATION_PATH/web_returns';

