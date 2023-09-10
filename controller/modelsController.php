<?php
include_once __DIR__ . '/../model/models.php';

class modelsController extends models
{
    public function getAllModels()
    {
        return $this->getAllModelsInfo();
    }

    public function createNewModel($name, $image, $brand_id)
    {
        if ($image['error'] == 0) {
            $file_name = $image['name'];
            $extension = explode('.', $file_name);
            $file_type = end($extension);
            $file_size = $image['size'];
            $allowed_types = ['jpg', 'JPG', 'png', 'PNG', 'svg'];
            $temp_name = $image['tmp_name'];

            if (in_array($file_type, $allowed_types)) {
                if ($file_size <= 2000000) {
                    $time = time();
                    $file_name = $time . $file_name;
                    if (move_uploaded_file($temp_name, '../uploads/' . $file_name)) {
                        return $this->createNewModelInfo($name, $file_name, $brand_id);
                    }
                }
            } else {
                return false;
                // echo 'You cannot create ,Something worng!';
            }
        }
    }

    public function showModel($id)
    {
        return $this->showModelInfo($id);
    }

    public function updateModel($id, $name, $image, $brand_id)
    {
        return $this->updateModelInfo($id, $name, $image, $brand_id);
    }

    public function deleteModel($id)
    {
        return $this->deleteModelInfo($id);
    }

    public function showModels($id)
    {
        return $this->showModelInfos($id);
    }

    // public function dir($id){
    //     return $this->dirInfo($id);
    // }
}
