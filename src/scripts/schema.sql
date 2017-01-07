-- phpMyAdmin SQL Dump

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Table structure for table `audits`
--

CREATE TABLE IF NOT EXISTS `audits` (
  `id`          VARCHAR(36)  NOT NULL,
  `event`       VARCHAR(255) NOT NULL,
  `model`       VARCHAR(255) NOT NULL,
  `entity_id`   VARCHAR(36)  NOT NULL,
  `request_id`  VARCHAR(36)  NOT NULL,
  `json_object` TEXT         NOT NULL,
  `description` TEXT,
  `source_id`   VARCHAR(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
)
  ENGINE = InnoDB
  DEFAULT CHARSET = utf8;

-- --------------------------------------------------------

--
-- Table structure for table `audit_deltas`
--

CREATE TABLE IF NOT EXISTS `audit_deltas` (
  `id`            VARCHAR(36)  NOT NULL,
  `audit_id`      VARCHAR(36)  NOT NULL,
  `property_name` VARCHAR(255) NOT NULL,
  `old_value`     TEXT,
  `new_value`     TEXT,
  PRIMARY KEY (`id`),
  KEY `audit_id` (`audit_id`)
)
  ENGINE = InnoDB
  DEFAULT CHARSET = utf8;