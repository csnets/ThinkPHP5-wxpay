DROP TABLE IF EXISTS `order`;
CREATE TABLE `order` (
  `id` int(11) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `body` varchar(50) DEFAULT NULL,
  `total_fee` int(11) DEFAULT NULL,
  `transaction_id` varchar(50) DEFAULT NULL,
  `out_trade_no` varchar(50) DEFAULT NULL,
  `product_id` varchar(30) DEFAULT NULL,
  `status` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;
