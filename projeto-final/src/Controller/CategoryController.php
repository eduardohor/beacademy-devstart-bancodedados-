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
        $cat = $result->fetch(\PDO::FETCH_ASSOC);

        var_dump($cat);
        parent::render('category/list');
    }

    public function addAction(): void
    {
        parent::render('category/add');
    }

    public function editAction(): void
    {
        parent::render('category/edit');
    }
}