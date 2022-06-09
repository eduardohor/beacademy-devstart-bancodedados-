<?php

include '../vendor/autoload.php';

// use App\Connection\Connection;

// $connection = Connection::getConnection();

// $query = 'SELECT * FROM tb_category;';

// $preparacao = $connection->prepare($query);
// $preparacao->execute();

// var_dump($preparacao);

// while ($registro = $preparacao->fetch()) {
//     var_dump($registro);
// }

use App\Controller\ErrorController;

$url = explode('?', $_SERVER['REQUEST_URI'])[0];

$routes = include '../config/routes.php';

if (false === isset($routes[$url])) {
    (new ErrorController())->notFoundAction();
    exit;
}

$controllerName = $routes[$url]['controller'];
$methodName = $routes[$url]['method'];


(new $controllerName())->$methodName();