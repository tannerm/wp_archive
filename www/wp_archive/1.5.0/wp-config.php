<?php
// ** MySQL settings ** //
define('DB_NAME', 'wp_archive_1_5_0');     // The name of the database
define('DB_USER', 'wp_archive_1_5_0');     // Your MySQL username
define('DB_PASSWORD', 'wp_archive_1_5_0'); // ...and password
define('DB_HOST', 'localhost');     // 99% chance you won't need to change this value
ini_set('display_errors', '0');

// Change the prefix if you want to have multiple blogs in a single database.
$table_prefix  = 'wp_';   // example: 'wp_' or 'b2' or 'mylogin_'

// Change this to localize WordPress.  A corresponding MO file for the
// chosen language must be installed to wp-includes/languages.
// For example, install de.mo to wp-includes/languages and set WPLANG to 'de'
// to enable German language support.
define ('WPLANG', '');

/* Stop editing */

define('ABSPATH', dirname(__FILE__).'/');
require_once(ABSPATH.'wp-settings.php');
?>