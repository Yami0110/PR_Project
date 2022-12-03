<?php

include_once "db_connect.php";
$db = $GLOBALS['db'];

if ($_POST['type'] == 'videos') {
    $type = 1;
} else {
    $type = 2;
}

if (isset($_POST['sys_name'])) {
    if ($type == 1) {
        $insert = $db->insertMediaItem($_POST['display_name'], $_POST['sys_name'], $_POST['image_link'], $_POST['video_link'], $_POST['dimension'], $_POST['format'], $_POST['duration'], $type);
    } else {
        $insert = $db->insertMediaItem($_POST['display_name'], $_POST['sys_name'], $_POST['image_link'], 'NULL', $_POST['dimension'], $_POST['format'], $_POST['duration'], $type);
    }

    if ($insert) {
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