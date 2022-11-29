<?php

include_once "db_connect.php";
$db = $GLOBALS['db'];

$photoDetails = $db->getMediaDetails($_POST['id']);
$type = $photoDetails[0]['type_id'];

if(isset($_POST['submit'])) {
    if ($type == 1) {
        $update = $db->updateMedia($_POST['id'], $_POST['display_name'], $_POST['sys_name'], $_POST['image_link'], $_POST['dimension'], $_POST['format'], $_POST['video_link'], $_POST['duration']);
    } else {
        $update = $db->updateMedia($_POST['id'], $_POST['display_name'], $_POST['sys_name'], $_POST['image_link'], $_POST['dimension'], $_POST['format'], 'NULL', 'NULL');
    }

    if($update) {
        if ($type == 1) {
            header("Location: list.php?mediaType=videos");
        } else {
            header("Location: list.php?mediaType=photos");
        }
    } else {
        echo "FATAL ERROR!!!!";
    }
} else {
    if ($type == 1) {
        header("Location: list.php?mediaType=videos");
    } else {
        header("Location: list.php?mediaType=photos");
    }
}