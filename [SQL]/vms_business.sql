CREATE TABLE IF NOT EXISTS `vms_business` (
  `id` varchar(50) NOT NULL DEFAULT '',
  `type` varchar(50) NOT NULL DEFAULT '',
  `owner` mediumtext DEFAULT NULL,
  `employees` longtext DEFAULT '{}',
  `stock` longtext DEFAULT '{}',
  `data` longtext DEFAULT '{}',
  `announcements` longtext DEFAULT '{}',
  `orders` longtext DEFAULT '{}',
  `history` longtext DEFAULT '{}'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;