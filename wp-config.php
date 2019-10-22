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
define( 'DB_NAME', 'khanhdungtour' );

/** MySQL database username */
define( 'DB_USER', 'root' );

/** MySQL database password */
define( 'DB_PASSWORD', '' );

/** MySQL hostname */
define( 'DB_HOST', 'localhost' );

/** Database Charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8mb4' );

/** The Database Collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         'bP{p:,m6zo-#zqY<d&L%x6,zY$/$RunF0QA-S.$<IF#7dSc8y%wKUJIv#FD|lwd_' );
define( 'SECURE_AUTH_KEY',  's[<v)gN=/f97.yom`I-1:%8@0<pcj%D3B7[wrU|1?fhe:fD`2;*>qAq*iEb[2hay' );
define( 'LOGGED_IN_KEY',    '$Vnz6ASD|l`5_HiO[nPmX9g5{QA66Sio05j;$L{Nk`F~JxDo+unbk)&=a!&iK;m9' );
define( 'NONCE_KEY',        'EtTv.jvqEk~!vPPXl8z[5uD%EeeC9bH;r/J$NGjetygh177qBoJ{[9n[{Us]sN1;' );
define( 'AUTH_SALT',        '9Xif$8#,V~~!3?DMQ#YFS5(6_N9-zN,l+cnSTCMu;x>)6?|Lf5YY-%$ctg}mT:`N' );
define( 'SECURE_AUTH_SALT', 'p[~W:.ClF:[z$P4HA`Kkn+~;VS7$YK~<eL`JM+.Js%@AE#S41VO=!b4OdfbyFWyf' );
define( 'LOGGED_IN_SALT',   'jeeOmFx]:x:0c^ivK.T$-|dQ~1uxhRLy!TtvYAW[mDcT38GfU1x3soR[VFKjd1!2' );
define( 'NONCE_SALT',       '#wUkLR}q2Z+F+T.8oQ9PC`[g%<[$m|PL#<8Kx9a0W/DM9Ease$S&CtEgD~5Btpax' );

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
 * visit the Codex.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define( 'WP_DEBUG', false );

/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', dirname( __FILE__ ) . '/' );
}

/** Sets up WordPress vars and included files. */
require_once( ABSPATH . 'wp-settings.php' );
