<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the
 * installation. You don't have to use the web site, you can
 * copy this file to "wp-config.php" and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'wordpress' );

/** MySQL database username */
define( 'DB_USER', 'wordpress_user' );

/** MySQL database password */
define( 'DB_PASSWORD', 'password' );

/** MySQL hostname */
define( 'DB_HOST', 'localhost' );

/** Database Charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8' );

/** The Database Collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

define('FS_METHOD', 'direct');
/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         'wHGT>^w A28zdyCGCKG4}z+Xo3aH`ny8O?F^Eg+ MA`iFFG%:um^gDHMgM#.,f?o');
define('SECURE_AUTH_KEY',  'OM:SHVqR:8/y8b>$+K^ASx.Jm1e$sqTHYa/0=(Wm!U M#lTRxDwIpHG$m-,atxd=');
define('LOGGED_IN_KEY',    'g6YRW}_S|HTV3p4h|1S1]@6_VzAfn)E 3sb9LtKkt;YDC?I =#1`4j=!?p0#BUDR');
define('NONCE_KEY',        '-m%Dqy0PSkjI&p>(=u*eULG,@`o]P?Pm.[sS[emf3U|(#-AEf2V].(e~ sby}tuZ');
define('AUTH_SALT',        ' fSI&@sw[!NAt/(n%L|0lTGW;r{I%&-I?_G.[pNE+YmX|QuE)q)z{jxT&OTO-gX>');
define('SECURE_AUTH_SALT', 'x<*ACW=4fxa-+0q{I0:^+&I?b%wL`@h|x;8W(p($I$nwQm(W9%K Fy,zoUFO|1px');
define('LOGGED_IN_SALT',   '*BX:=xIBiDW2{j2.P$.FKaQ-Vl5?xksk~P!qe%u.W)Ekm3T$`$,F~-X{KL.PCsER');
define('NONCE_SALT',       'i-m4x5rp8gv5>.xg^(=KzDqy(O5sf66z:SKi::pN[S_]du%|li&G6-5tq997&(.>');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the documentation.
 *
 * @link https://wordpress.org/support/article/debugging-in-wordpress/
 */
define( 'WP_DEBUG', false );

/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
        define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';