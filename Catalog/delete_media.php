<?php

include_once "db_connect.php";
$db = $GLOBALS['db'];

$mediaDetails = $db->getMediaDetails($_GET['id']);
$type = $mediaDetails[0]['type_id'];

if (isset($_GET['id'])) {
    $delete = $db->deleteMediaItem($_GET['id']);

    if ($delete) {
        if ($type == 1) {
            header("Location: list.php?mediaType=videos");
        } else {
            header("Location: list.php?mediaType=photos");
        }
    } else {
        echo "FATAL ERROR!!!";
    }
} else {
    if ($type == 1) {
        header("Location: list.php?mediaType=videos");
    } else {
        header("Location: list.php?mediaType=photos");
    }
}