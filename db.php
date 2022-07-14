<?php
ini_set('display_errors', '1');
ini_set('display_startup_errors', '1');
error_reporting(E_ALL);
define('DBHOST', 'localhost'); // MySQL Database Host
define('DBUSERNAME', 'payroll'); // MySQL Database Username
define('DBPASSWORD', 'P@ssw0rd1'); // MySQL Database Password
define('DBNAME', 'payroll-dev'); // MySQL Database Name
/* Database Connection */
$db = new mysqli(DBHOST,DBUSERNAME,DBPASSWORD,DBNAME);
//echo '<pre>';var_dump($db);
if($db->connect_errno > 0){
    die('Unable to connect to database [' . $db->connect_error . ']');
}
/* Database Connection Class - better for functions and all */
class Database {
    private static $db;
    private $connection;
    private function __construct() {
        $this->connection = new MySQLi(DBHOST,DBUSERNAME,DBPASSWORD,DBNAME);
    }
    function __destruct() {
        $this->connection->close();
    }
    public static function getConnection() {
        if (self::$db == null) {
            self::$db = new Database();
        }
        return self::$db->connection;
    }
}
?>