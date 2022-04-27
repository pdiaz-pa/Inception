<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the installation.
 * You don't have to use the web site, you can copy this file to "wp-config.php"
 * and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * Database settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** Database settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'wp_db' );

/** Database username */
define( 'DB_USER', 'pdiaz-pa' );

/** Database password */
define( 'DB_PASSWORD', 'caldodepollo' );

/** Database hostname */
define( 'DB_HOST', 'mariadb' );

/** Database charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8mb4' );

/** The database collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication unique keys and salts.
 *
 * Change these to different unique phrases! You can generate these using
 * the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}.
 *
 * You can change these at any point in time to invalidate all existing cookies.
 * This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         'y]$W?hrl+)VbV:.m!{(t#%o=ikRb+1v3_ppM@4rnAAF32-nl!Z^e/4*WgCHNL}R2' );
define( 'SECURE_AUTH_KEY',  'FW?BePD6zsWyv#{<4{6cl/RbhgI6{Zi)Pc>r(eY]QMl7O(gUH!(a;w*=J]r0g>B@' );
define( 'LOGGED_IN_KEY',    'x]m8JltIbGHHwb8y5?~PLLk+pgbsP/ka(4m.2 ~|)9OrI^//Oz$,U+[ZE|Z}g,u_' );
define( 'NONCE_KEY',        ';BhWGgTK*Kevz-Q bgNWji u|n)B&7XJ^>q}6$+NLeD[|_.%~{tE*@v!tLhU>*|0' );
define( 'AUTH_SALT',        'K8hh}!>/YVsW$@}JqDuDIT*;@rK54:vjlNYM>eb^s|-lIUNyD>Dm1izTS^Zt0NY3' );
define( 'SECURE_AUTH_SALT', '0,m`QN e7^]ul/<6Iq=+otvh(QF,=66{;cb$Z+uwj6=D[EV3l!rmM_h4Rv!70DD]' );
define( 'LOGGED_IN_SALT',   'd;(R1l1kza!jvFZ&.{vfrH`HV77Ss.@Q>t<^D]xM4w{(?7!O!(}4?;7UR?wu<b0C' );
define( 'NONCE_SALT',       '`*;|P0C $Di-,oLckxVyh7*P3(A#qa5g`!}! 6kO^5-p at<CmN/~Tc1!t-gV~j*' );

/**#@-*/

/**
 * WordPress database table prefix.
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

/* Add any custom values between this line and the "stop editing" line. */



/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
