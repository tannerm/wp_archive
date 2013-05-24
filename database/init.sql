# We include default installations of WordPress with this Vagrant setup.
# In order for that to respond properly, default databases should be
# available for use.

CREATE DATABASE IF NOT EXISTS `wp_archive`;
GRANT ALL PRIVILEGES ON `wp_archive`.* TO 'wp_archive'@'localhost' IDENTIFIED BY 'wp_archive';

CREATE DATABASE IF NOT EXISTS `wp_archive_3_5_0`;
GRANT ALL PRIVILEGES ON `wp_archive_3_5_0`.* TO 'wp_archive_3_5_0'@'localhost' IDENTIFIED BY 'wp_archive_3_5_0';

CREATE DATABASE IF NOT EXISTS `wp_archive_3_0_0`;
GRANT ALL PRIVILEGES ON `wp_archive_3_0_0`.* TO 'wp_archive_3_0_0'@'localhost' IDENTIFIED BY 'wp_archive_3_0_0';

CREATE DATABASE IF NOT EXISTS `wp_archive_2_5_0`;
GRANT ALL PRIVILEGES ON `wp_archive_2_5_0`.* TO 'wp_archive_2_5_0'@'localhost' IDENTIFIED BY 'wp_archive_2_5_0';

CREATE DATABASE IF NOT EXISTS `wp_archive_2_0_0`;
GRANT ALL PRIVILEGES ON `wp_archive_2_0_0`.* TO 'wp_archive_2_0_0'@'localhost' IDENTIFIED BY 'wp_archive_2_0_0';

CREATE DATABASE IF NOT EXISTS `wp_archive_1_5_0`;
GRANT ALL PRIVILEGES ON `wp_archive_1_5_0`.* TO 'wp_archive_1_5_0'@'localhost' IDENTIFIED BY 'wp_archive_1_5_0';

CREATE DATABASE IF NOT EXISTS `wp_archive_1_0_0`;
GRANT ALL PRIVILEGES ON `wp_archive_1_0_0`.* TO 'wp_archive_1_0_0'@'localhost' IDENTIFIED BY 'wp_archive_1_0_0';

CREATE DATABASE IF NOT EXISTS `wp_archive_0_71_gold`;
GRANT ALL PRIVILEGES ON `wp_archive_0_71_gold`.* TO '0_71_gold'@'localhost' IDENTIFIED BY 'wp_archive_0_71_gold';

# Create an external user with privileges on all databases in mysql so
# that a connection can be made from the local machine without an SSH tunnel
GRANT ALL PRIVILEGES ON *.* TO 'external'@'%' IDENTIFIED BY 'external';
