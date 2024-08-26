USE librespeeddb;
 
CREATE TABLE `speedtest_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ip` text NOT NULL,
  `ispinfo` text,
  `extra` text,
  `ua` text NOT NULL,
  `lang` text NOT NULL,
  `dl` text,
  `ul` text,
  `ping` text,
  `jitter` text,
  `log` longtext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


CREATE USER 'librespeed'@'%' IDENTIFIED BY 'librespeed#123db';

GRANT ALL PRIVILEGES ON librespeeddb.* TO 'librespeed'@'%';

FLUSH PRIVILEGES;