<?php

include_once "db_connect.php";
$db = $GLOBALS['db'];

if (isset($_POST['submit'])) {
    $insert = $db->insertTagToMedia($_POST['media_id'], $_POST['tag_id']);

    if ($insert) {
        header("Location: edit_media_form.php?id=" . $_POST['media_id']);
    } else {
        echo "FATAL ERROR!!!";
    }
} else {
    header("Location: edit_media_form.php?id=" . $_POST['media_id']);
}