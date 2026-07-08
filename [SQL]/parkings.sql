CREATE TABLE IF NOT EXISTS `parkings` (
  `owner` varchar(100) DEFAULT NULL,
  `ownerName` varchar(220) DEFAULT NULL,
  `parking` varchar(200) NOT NULL,
  `space` int(11) NOT NULL DEFAULT 0,
  `time` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;