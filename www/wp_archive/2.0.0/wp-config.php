<?php
// ** MySQL settings ** //
define('DB_NAME', 'wp_archive_2_0_0');    // The name of the database
define('DB_USER', 'wp_archive_2_0_0');     // Your MySQL username
define('DB_PASSWORD', 'wp_archive_2_0_0'); // ...and password
define('DB_HOST', 'localhost');    // 99% chance you won't need to change this value
ini_set('display_errors', '0');

// You can have multiple installations in one database if you give each a unique prefix
$table_prefix  = 'wp_';   // Only numbers, letters, and underscores please!

// Change this to localize WordPress.  A corresponding MO file for the
// chosen language must be installed to wp-includes/languages.
// For example, install de.mo to wp-includes/languages and set WPLANG to 'de'
// to enable German language support.
define ('WPLANG', '');

/* That's all, stop editing! Happy blogging. */

define('ABSPATH', dirname(__FILE__).'/');
require_once(ABSPATH.'wp-settings.php');
?>