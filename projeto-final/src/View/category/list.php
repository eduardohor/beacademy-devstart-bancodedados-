<h1>Listar Categorias</h1>

<div class="mb-3 text-end">
    <a href="/categorias/nova" class="btn btn-outline-primary">Nova Categoria</a>
</div>

<table class="table table-hover table-striped">
    <thead class="table-dark">
        <tr>
            <td>#ID</td>
            <td>Nome</td>
            <td>Descrição</td>
            <td>Ações</td>
        </tr>
    </thead>
    <tbody>
        <?php
        while ($category = $data->fetch(\PDO::FETCH_ASSOC)) {
            extract($category);

            echo "<tr>
                    <td>{$id}</td>
                    <td>{$name}</td>
                    <td>{$description}</td>
                    <td><a href='/categorias/editar?id={$id}' class='btn btn-warning btn-sm'>Editar</a>
                    <a href='/categorias/excluir?id={$id}' class='btn btn-danger btn-sm'>Excluir</a></td>
                  </tr>";
        }
        ?>
    </tbody>
</table>