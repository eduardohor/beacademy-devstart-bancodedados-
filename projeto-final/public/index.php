<?php

include '../vendor/autoload.php';

use App\Connection\Connection;

$connection = Connection::getConnection();

$query = 'SELECT * FROM tb_category;';

$preparacao = $connection->prepare($query);
$preparacao->execute();

var_dump($preparacao);

while ($registro = $preparacao->fetch()) {
    var_dump($registro);
}


// use App\Controller\IndexController;
// use App\Controller\ProductController;
// use App\Controller\ErrorController;

// $url = $_SERVER['REQUEST_URI'];

// function createRouter(string $controllerName, string $methodName)
// {
//     return [
//         'controller' => $controllerName,
//         'method' => $methodName
//     ];
// }

// $routes = [
//     '/' => createRouter(IndexController::class, 'indexAction'),
//     '/produtos' => createRouter(ProductController::class, 'listAction'),
//     '/produto-novo' => createRouter(ProductController::class, 'addAction')
// ];

// if (false === isset($routes[$url])) {
//     (new ErrorController())->notFoundAction();
//     exit;
// }

// $controllerName = $routes[$url]['controller'];
// $methodName = $routes[$url]['method'];


// (new $controllerName())->$methodName();