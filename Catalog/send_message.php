<?php

include_once "db_connect.php";
$db = $GLOBALS['db'];

    $send = $db->sendMessage($_POST['name'], $_POST['email'], $_POST['subject_id'], $_POST['message']);

    if ($send) {
        header("Location: contact.php");
    } else {
        echo "FATAL ERROR!!!";
    }