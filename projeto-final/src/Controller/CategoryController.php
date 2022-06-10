<?php

declare(strict_types=1);

namespace App\Controller;

use App\Connection\Connection;

class CategoryController extends AbstractController
{
    public function listAction(): void
    {
        $conn = Connection::getConnection();

        $result = $conn->prepare('SELECT * FROM tb_category;');
        $result->execute();


        parent::render('category/list', $result);
    }

    public function addAction(): void
    {
        if ($_POST) {
            $name = $_POST['name'];
            $description = $_POST['description'];

            $query = "INSERT INTO tb_category (name, description) VALUES('{$name}', '{$description}')";

            $conn = Connection::getConnection();

            $result = $conn->prepare($query);
            $result->execute();

            echo 'Categoria cadastrada com sucesso!';
        }
        parent::render('category/add');
    }

    public function updateAction(): void
    {
        $id = $_GET['id'];

        $conn = Connection::getConnection();

        $query = "SELECT * FROM tb_category WHERE id='{$id}'";

        $result = $conn->prepare($query);
        $result->execute();

        $data = $result->fetch(\PDO::FETCH_ASSOC);

        if ($_POST) {
            $newName = $_POST['name'];
            $newDescription = $_POST['description'];

            $quereUpdate = "UPDATE tb_category SET name='{$newName}', description='{$newDescription}' WHERE id='{$id}'";

            $result = $conn->prepare($quereUpdate);
            $result->execute();

            echo "Catagoria atualizada com sucesso!";
        }

        parent::render('category/edit', $data);
    }

    public function removeAction(): void
    {
        $conn = Connection::getConnection();

        $id = $_GET['id'];

        $query = "DELETE FROM tb_category WHERE id='{$id}'";

        $result = $conn->prepare($query);
        $result->execute();

        echo 'Categoria excluida!';
    }
}