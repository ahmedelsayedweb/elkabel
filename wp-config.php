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
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define('DB_NAME', 'elkabel');

/** MySQL database username */
define('DB_USER', 'root');

/** MySQL database password */
define('DB_PASSWORD', '');

/** MySQL hostname */
define('DB_HOST', 'localhost');

/** Database Charset to use in creating database tables. */
define('DB_CHARSET', 'utf8mb4');

/** The Database Collate type. Don't change this if in doubt. */
define('DB_COLLATE', '');

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         ' T)0zNKF2hA.q HY^+C{ydV@pS;ju(uAd7NDeV-I)t>{/#P)3>p?LEtmi.3yV]E)');
define('SECURE_AUTH_KEY',  'Tkn~MzjkR0,i]J7+1*kS9T/T0d|-vp#0,pp{!$h]([>d76SL>dk6+7b;j pw  gC');
define('LOGGED_IN_KEY',    '4!#H+]RE^[CFAS##6XP(=72Jco$N4YP26J!KIVM_9`-P(tX 6tbn:3iSv#rk|c/Q');
define('NONCE_KEY',        '[%n4hg$kntLk)s[C3(yGJ(9u[;PNLW&*rq9;L)5t<feMJ>fmBP.&W]15xq!R?`kU');
define('AUTH_SALT',        'g&iUiz?veD*X][ixcqNXryqpEIn^@uSY}s@JbSA>WIb-aZ!w1qLj$]74a<,7nmCD');
define('SECURE_AUTH_SALT', 'qy^*H4g8)p1>MZ5vV4Y:d E-|MsM)]27d_#>XUWbI{f,0nE.,<=2u-Y%DDqO7{8Q');
define('LOGGED_IN_SALT',   'k20HE}f-=n-qqlZnY}]QK1Ct{yK5A`phxbJ#p0rI/r&5b3>2Cr:5( z,4Ag][_m>');
define('NONCE_SALT',       '`)lp !=O)F*;{2}]Ay-&>o1a_.Bj:X|KqRBV[~/7u|D[fk>g`8+HuaM{gwSqq3cx');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix  = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the Codex.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define('WP_DEBUG', false);

/* That's all, stop editing! Happy blogging. */

/** Absolute path to the WordPress directory. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');
