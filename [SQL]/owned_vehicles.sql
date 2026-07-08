CREATE TABLE IF NOT EXISTS `owned_vehicles` (
  `owner` varchar(80) DEFAULT NULL,
  `company` varchar(50) DEFAULT NULL,
  `gang` varchar(50) DEFAULT NULL,
  `plate` varchar(8) DEFAULT NULL,
  `vin` varchar(17) DEFAULT NULL,
  `netid` int(11) DEFAULT NULL,
  `milage` int(11) DEFAULT NULL,
  `vehicle` longtext DEFAULT NULL,
  `type` varchar(50) NOT NULL DEFAULT 'vehicle',
  `position` longtext DEFAULT NULL,
  `garage` varchar(50) DEFAULT NULL,
  `garageSpotID` int(11) DEFAULT NULL,
  `parking_date` int(11) DEFAULT NULL,
  `impound_date` int(11) DEFAULT NULL,
  `impound_data` longtext DEFAULT NULL,
  `insurance` longtext DEFAULT NULL,
  `tuning_data` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;