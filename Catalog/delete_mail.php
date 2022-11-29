<?php

include_once "db_connect.php";
$db = $GLOBALS['db'];

if (isset($_GET['id'])) {
    $delete = $db->deleteMail($_GET['id']);

    if ($delete) {
        header("Location: mails_list.php");
    } else {
        echo "FATAL ERROR!!!";
    }
} else {
    header("Location: mails_list.php");
}