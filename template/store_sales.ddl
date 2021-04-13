CREATE EXTERNAL TABLE `store_sales`(
  `ss_sold_time_sk` int, 
  `ss_item_sk` int, 
  `ss_customer_sk` int, 
  `ss_cdemo_sk` int, 
  `ss_hdemo_sk` int, 
  `ss_addr_sk` int, 
  `ss_store_sk` int, 
  `ss_promo_sk` int, 
  `ss_ticket_number` bigint, 
  `ss_quantity` int, 
  `ss_wholesale_cost` double, 
  `ss_list_price` double, 
  `ss_sales_price` double, 
  `ss_ext_discount_amt` double, 
  `ss_ext_sales_price` double, 
  `ss_ext_wholesale_cost` double, 
  `ss_ext_list_price` double, 
  `ss_ext_tax` double, 
  `ss_coupon_amt` double, 
  `ss_net_paid` double, 
  `ss_net_paid_inc_tax` double, 
  `ss_net_profit` double)
PARTITIONED BY ( 
  `ss_sold_date_sk` int)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.ql.io.parquet.serde.ParquetHiveSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.parquet.MapredParquetInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.parquet.MapredParquetOutputFormat'
LOCATION
  'DESTINATION_PATH/store_sales';

