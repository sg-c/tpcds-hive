CREATE EXTERNAL TABLE `catalog_returns`(
  `cr_returned_time_sk` int, 
  `cr_item_sk` int, 
  `cr_refunded_customer_sk` int, 
  `cr_refunded_cdemo_sk` int, 
  `cr_refunded_hdemo_sk` int, 
  `cr_refunded_addr_sk` int, 
  `cr_returning_customer_sk` int, 
  `cr_returning_cdemo_sk` int, 
  `cr_returning_hdemo_sk` int, 
  `cr_returning_addr_sk` int, 
  `cr_call_center_sk` int, 
  `cr_catalog_page_sk` int, 
  `cr_ship_mode_sk` int, 
  `cr_warehouse_sk` int, 
  `cr_reason_sk` int, 
  `cr_order_number` bigint, 
  `cr_return_quantity` int, 
  `cr_return_amount` double, 
  `cr_return_tax` double, 
  `cr_return_amt_inc_tax` double, 
  `cr_fee` double, 
  `cr_return_ship_cost` double, 
  `cr_refunded_cash` double, 
  `cr_reversed_charge` double, 
  `cr_store_credit` double, 
  `cr_net_loss` double)
PARTITIONED BY ( 
  `cr_returned_date_sk` int)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.ql.io.parquet.serde.ParquetHiveSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.parquet.MapredParquetInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.parquet.MapredParquetOutputFormat'
LOCATION
  'DESTINATION_PATH/catalog_returns';

