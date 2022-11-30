<?php

include_once "db.php";

use catalog\DB;
$db = new DB("localhost", "catalog", "root", "");

global $db;

session_start();