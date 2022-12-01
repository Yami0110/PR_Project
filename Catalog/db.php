<?php

namespace catalog;

class DB {
    private $host, $dbname, $username, $password;
    private $connection;

    public function __construct($host, $dbname, $username, $password) {
        $this->host = $host;
        $this->dbname = $dbname;
        $this->username = $username;
        $this->password = $password;

        try {
            $this->connection = new \PDO('mysql:host='.$this->host . '; dbname=' . $this->dbname, $this->username, $this->password);
        } catch (\PDOException $e) {
            print "Error!: " . $e->getMessage() . "<br/>";
            die();
        }
    }

    public function getMedias($type) {
        $mediaItems = [];
        $sql = "SELECT *, media.id AS id
                FROM media
                INNER JOIN type ON media.type_id = type.id 
                WHERE type.type = '" . $type . "'";
        $query = $this->connection->query($sql);

        while ($row = $query->fetch()) {
            $mediaItems[] = [
                "image_link" => $row["image_link"],
                "display_name" => $row["display_name"],
                "views" => $row["views"],
                "created_at" => $row["created_at"],
                "updated_at" => $row["updated_at"],
                "id" => $row["id"]
            ];
        }
        return $mediaItems;
    }

    public function getTopMedias($type) {
        $mediaItems = [];
        $sql = "SELECT *, media.id AS id
                FROM media
                INNER JOIN type ON media.type_id = type.id 
                WHERE type.type = '" . $type . "'
                ORDER BY media.views DESC
                LIMIT 8";
        $query = $this->connection->query($sql);

        while ($row = $query->fetch()) {
            $mediaItems[] = [
                "image_link" => $row["image_link"],
                "display_name" => $row["display_name"],
                "views" => $row["views"],
                "created_at" => $row["created_at"],
                "updated_at" => $row["updated_at"],
                "id" => $row["id"]
            ];
        }
        return $mediaItems;
    }

    public function getMediaDetails($id) {
        $sql = "SELECT * FROM media WHERE id = " . $id;
        $result = [];

        try {
            $query = $this->connection->query($sql);
            $result = $query->fetchAll(\PDO::FETCH_ASSOC);
            return $result;
        } catch (\PDOException $e) {
            return $result;
        }
    }

    public function getMediaTags($id) {
        $sql = "SELECT tag.tag AS tag, tag_has_media.tag_id AS tag_id
                FROM tag
                INNER JOIN tag_has_media ON tag.id = tag_has_media.tag_id
                INNER JOIN media ON tag_has_media.media_id = media.id
                WHERE media.id = " . $id . "";
        $result = [];

        try {
            $query = $this->connection->query($sql);
            $result = $query->fetchAll(\PDO::FETCH_ASSOC);
            return $result;
        } catch (\PDOException $e) {
            return $result;
        }
    }

    public function getAllMediaTags() {
        $sql = "SELECT * FROM tag";
        $result = [];

        try {
            $query = $this->connection->query($sql);
            $result = $query->fetchAll(\PDO::FETCH_ASSOC);
            return $result;
        } catch (\PDOException $e) {
            return $result;
        }
    }

    public function insertTagToMedia($mediaId, $tagId) {
        $sql = "INSERT INTO tag_has_media(tag_id, media_id)
                VALUE (" . $tagId . ", 
                " . $mediaId . ")";
        
        try {
            $this->connection->exec($sql);
            return true;
        } catch (\PDOException $e) {
            return false;
        }
    }

    public function deleteTagFromMedia($mediaId, $tagId) {
        $sql = "DELETE FROM tag_has_media WHERE media_id = " . $mediaId . " AND tag_id = " . $tagId;

        try {
            $this->connection->exec($sql);
            return true;
        } catch (\PDOException $e) {
            return false;
        }
    }

    public function insertMediaItem($displayName, $sysName, $image_link, $video_link, $dimension, $format, $duration, $media_id) {
        $dateTime = date('Y-m-d H:i:s', time());
        $sql = "INSERT INTO media(display_name, sys_name, image_link, views, created_at, updated_at, video_link, dimension, format, duration, type_id)
                VALUE ('" . $displayName . "', 
                '" . $sysName . "', 
                '" . $image_link . "', 
                0, 
                '" . $dateTime . "', 
                '" . $dateTime . "', 
                '" . $video_link . "', 
                '" . $dimension . "', 
                '" . $format . "', 
                '" . $duration . "', 
                " . $media_id . ")";
        
        try {
            $this->connection->exec($sql);
            return true;
        } catch (\PDOException $e) {
            return false;
        }
    }

    public function deleteMediaItem($id) {
        $sql = "DELETE FROM media WHERE id = " . $id;

        try {
            $this->connection->exec($sql);
            return true;
        } catch (\PDOException $e) {
            return false;
        }
    }

    public function updateMedia($id, $displayName, $sys_name, $image_link, $dimension, $format, $video_link, $duration) {
        $dateTime = date('Y-m-d H:i:s', time());
        $sql = "UPDATE media
                SET display_name = '" . $displayName . "', sys_name = '" . $sys_name . "', image_link = '" . $image_link . "', updated_at = '" . $dateTime . "', dimension = '" . $dimension . "', format = '" . $format . "', video_link = '" . $video_link . "', duration = '" . $duration . "'
                WHERE id = " . $id;

        try {
            $this->connection->exec($sql);
            return true;
        } catch (\PDOException $e) {
            return false;
        }
    }

    public function getEmployers() {
        $employerItems = [];
        $sql = "SELECT * FROM employer";
        $query = $this->connection->query($sql);

        while ($row = $query->fetch()) {
            $employerItems[] = [
                "name" => $row["name"],
                "surname" => $row["surname"],
                "position" => $row["position"],
                "about" => $row["about"],
                "image_link" => $row["image_link"],
                "id" => $row["id"]
            ];
        }
        return $employerItems;
    }

    public function getSns($id) {
        $employerItems = [];
        $sql = "SELECT * FROM sns_has_employer 
                INNER JOIN sns ON sns_has_employer.sns_id = sns.id 
                WHERE sns_has_employer.employer_id = " . $id;
        $query = $this->connection->query($sql);

        while ($row = $query->fetch()) {
            $employerItems[] = [
                "sns_link" => $row["sns_link"],
                "icon" => $row["icon"]
            ];
        }
        return $employerItems;
    }

    public function getSubjects() {
        $subjectItems = [];
        $sql = "SELECT * FROM subject";
        $query = $this->connection->query($sql);

        while ($row = $query->fetch()) {
            $subjectItems[] = [
                "subject" => $row["subject"],
                "value" => $row["value"],
                "id" => $row["id"]
            ];
        }
        return $subjectItems;
    }

    public function sendMessage($name, $email, $subject_id, $message) {
        $dateTime = date('Y-m-d H:i:s', time());
        $sql = "INSERT INTO contact(name, email, message, subject_id, get_date)
                VALUE ('" . $name . "', 
                '" . $email . "', 
                '" . $message . "', 
                " . $subject_id . ", 
                '" . $dateTime . "')";
        
        try {
            $this->connection->exec($sql);
            return true;
        } catch (\PDOException $e) {
            return false;
        }
    }

    public function getMails() {
        $mailItems = [];
        $sql = "SELECT contact.name AS name, contact.email AS email, subject.subject AS subject, subject.value AS value, contact.get_date AS get_date, contact.id AS id FROM contact
                INNER JOIN subject ON contact.subject_id = subject.id
                ORDER BY contact.id DESC";
        $query = $this->connection->query($sql);

        while ($row = $query->fetch()) {
            $mailItems[] = [
                "name" => $row["name"],
                "email" => $row["email"],
                "value" => $row["value"],
                "subject" => $row["subject"],
                "get_date" => $row["get_date"],
                "id" => $row["id"]
            ];
        }
        return $mailItems;
    }

    public function getMessage($id) {
        $sql = "SELECT message FROM contact WHERE id = " . $id;
        $result = [];

        try {
            $query = $this->connection->query($sql);
            $result = $query->fetchAll(\PDO::FETCH_ASSOC);
            return $result;
        } catch (\PDOException $e) {
            return $result;
        }
    }

    public function deleteMail($id) {
        $sql = "DELETE FROM contact WHERE id = " . $id;

        try {
            $this->connection->exec($sql);
            return true;
        } catch (\PDOException $e) {
            return false;
        }
    }

    public function login($username, $password) {
        $hasPassword = sha1($password);
        $sql = "SELECT COUNT(id) AS is_admin FROM user WHERE username = '" . $username . "' AND password = '" . $hasPassword . "'";

        try {
            $query = $this->connection->query($sql);
            $result = $query->fetch(\PDO::FETCH_ASSOC);
            if (intval($result['is_admin']) === 1) {
                return true;
            } else {
                return false;
            }
        } catch (\PDOException $e) {
            return false;
        }
    }
}