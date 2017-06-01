DROP TABLE IF EXISTS `fact_rental`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fact_rental` (
  `customer_key` int(8) NOT NULL,
  `staff_key` int(8) NOT NULL,
  `film_key` int(8) NOT NULL,
  `store_key` int(8) NOT NULL,
  `rental_date_key` int(8) NOT NULL,
  `return_date_key` int(10) NOT NULL,
  `rental_time_key` int(8) NOT NULL,
  `count_returns` int(10) NOT NULL,
  `count_rentals` int(8) NOT NULL DEFAULT 1,
  `rental_duration` int(11) DEFAULT NULL,
  `rental_last_update` datetime DEFAULT NULL,
  `rental_id` int(11) DEFAULT NULL,
  KEY `dim_store_fact_rental_fk` (`store_key`),
  KEY `dim_staff_fact_rental_fk` (`staff_key`),
  KEY `dim_time_fact_rental_fk` (`rental_time_key`),
  KEY `dim_film_fact_rental_fk` (`film_key`),
  KEY `dim_date_fact_rental_fk` (`rental_date_key`),
  KEY `dim_customer_fact_rental_fk` (`customer_key`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

