<!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">

<h1>Listar Categorias</h1>

<table class="table table-hover table-striped">
    <thead class="table-dark">
        <tr>
            <td>#ID</td>
            <td>Nome</td>
            <td>Descrição</td>
        </tr>
    </thead>
    <tbody>
        <?php
        while ($category = $data->fetch(\PDO::FETCH_ASSOC)) {
            echo "<tr>
                    <td>{$category['id']}</td>
                    <td>{$category['name']}</td>
                    <td>{$category['description']}</td>
                  </tr>";
        }
        ?>
    </tbody>
</table>