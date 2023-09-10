<?php
include_once __DIR__ . '/../vendor/database/database.php';

class tutorials
{
    public function getAllTutoInfo()
    {
        $connect = Database::connect();
        $connect->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

        // $sql = 'SELECT tutorials.*, pname.name FROM tutorials LEFT JOIN (SELECT packages.name, tutorials.id AS tutorial_id FROM packages JOIN tutorials ON tutorials.package_id = packages.id) AS pname ON tutorials.id = pname.tutorial_id ORDER BY pname.name ASC';
        $sql = 'SELECT tutorials.*, pname.name 
FROM tutorials 
LEFT JOIN (SELECT packages.name, tutorials.id AS tutorial_id FROM packages JOIN tutorials ON tutorials.package_id = packages.id) AS pname ON tutorials.id = pname.tutorial_id ORDER BY tutorials.id DESC
';
        $state = $connect->prepare($sql);
        if ($state->execute()) {
            $result = $state->fetchAll(PDO::FETCH_ASSOC);
        }
        return $result;
    }

    public function uploadTutoInfo($title, $video, $description, $package)
    {
        $connect = Database::connect();
        $connect->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

        $sql = 'INSERT INTO tutorials(title,video_url,description,package_id) VALUES (:title,:video_url,:description,:package_id)';
        $state = $connect->prepare($sql);
        $state->bindParam(':title', $title);
        $state->bindParam(':video_url', $video);
        $state->bindParam(':description', $description);
        $state->bindParam(':package_id', $package);

        if ($state->execute()) {
            return true;
        } else {
            return false;
        }
    }
    public function showTutoInfo($id)
    {
        $connect = database::connect();
        $connect->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

        $sql = 'SELECT * FROM tutorials WHERE id=:id';
        $state = $connect->prepare($sql);
        $state->bindParam(':id', $id);
        if ($state->execute()) {
            $result = $state->fetch(PDO::FETCH_ASSOC);
            return $result;
        } else {
            return null;
        }
    }

    public function getAllFreeTuto()
    {
        $connect = Database::connect();
        $connect->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

        $sql = 'SELECT * FROM tutorials WHERE package_id IS NULL ORDER BY id DESC';
        $state = $connect->prepare($sql);
        if ($state->execute()) {
            $result = $state->fetchAll(PDO::FETCH_ASSOC);
        }
        return $result;
    }

    public function updateTutoInfo($id, $title, $video, $description, $package)
    {
        $connect = Database::connect();
        $connect->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

        $sql = 'UPDATE tutorials SET title=:title,video_url=:video_url,description=:description,package_id=:package_id WHERE id=:id';
        $state = $connect->prepare($sql);
        $state->bindParam(':id', $id);
        $state->bindParam(':title', $title);
        $state->bindParam(':video_url', $video);
        $state->bindParam(':description', $description);
        $state->bindParam(':package_id', $package);

        if ($state->execute()) {
            return true;
        } else {
            return false;
        }
    }

    public function deletetutoInfo($id)
    {
        $connect = Database::connect();
        $connect->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

        $sql = 'DELETE FROM tutorials WHERE id=:id';
        $state = $connect->prepare($sql);
        $state->bindParam(':id', $id);

        if ($state->execute()) {
            return true;
        } else {
            return false;
        }
    }

    public function getTutoByPackInfo($id)
    {
        $connect = Database::connect();
        $connect->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

        //         $sql = 'SELECT tutorials.*, packages.name
        // FROM tutorials
        // LEFT JOIN packages ON tutorials.package_id = packages.id
        // WHERE tutorials.package_id =:id OR tutorials.package_id IS NULL
        // GROUP BY tutorials.title;';
        $sql = 'SELECT * 
                FROM tutorials
                LEFT JOIN sale ON tutorials.package_id = sale.packages_id 
                LEFT JOIN packages ON sale.packages_id = packages.id 
                WHERE sale.user_id = :id OR tutorials.package_id IS NULL
                ORDER BY tutorials.id DESC';
        $state = $connect->prepare($sql);
        $state->bindParam(':id', $id);
        if ($state->execute()) {
            $result = $state->fetchAll(PDO::FETCH_ASSOC);
        }
        return $result;
    }

    // public function searchTutoInfo($name)
    // {
    //     try {
    //         $connect = database::connect();
    //         $connect->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

    //         $sql = 'SELECT * FROM `tutorials` WHERE title LIKE :name';
    //         $state = $connect->prepare($sql);
    //         $state->bindValue(':name', '%' . $name . '%', PDO::PARAM_STR);

    //         if ($state->execute()) {
    //             $result = $state->fetchAll(PDO::FETCH_ASSOC);
    //             return $result;
    //         } else {
    //             return null;
    //         }
    //     } catch (PDOException $e) {
    //         // Handle any database errors here, e.g., log or display an error message.
    //         return null;
    //     }
    // }

    public function totalfreepackageInfo()
    {
        $connect = database::connect();
        $connect->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

        $sql = 'SELECT COUNT(id)as total FROM tutorials WHERE package_id is null';
        $state = $connect->prepare($sql);
        if ($state->execute()) {
            $result = $state->fetchAll(PDO::FETCH_ASSOC);
            return $result;
        } else {
            return null;
        }
    }

    public function totalbypackageInfo()
    {
        $connect = database::connect();
        $connect->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

        $sql = 'SELECT packages.name ,COUNT(tutorials.id)as total FROM tutorials JOIN packages ON tutorials.package_id = packages.id GROUP BY package_id';
        $state = $connect->prepare($sql);
        if ($state->execute()) {
            $result = $state->fetchAll(PDO::FETCH_ASSOC);
            return $result;
        } else {
            return null;
        }
    }
    public function getTutoByPackIdInfo($id)
    {
        $connect = database::connect();
        $connect->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

        $sql = 'SELECT * FROM `tutorials` WHERE package_id = :id';
        $state = $connect->prepare($sql);
        $state->bindParam(':id', $id);
        if ($state->execute()) {
            $result = $state->fetchAll(PDO::FETCH_ASSOC);
        }
        return $result;
    }
}
?>
