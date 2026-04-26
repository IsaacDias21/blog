<?php

    require 'vendor/autoload.php';
    // require 'rotas.php'; 
    use sistema\biblioteca\Upload;

    $upload = new Upload("upload");
    

    if(!empty($arquivo = $_FILES)){
        $arquivo = $_FILES['arquivo'];
        $upload->arquivo($arquivo , 'imagens'); 
        r($upload);
        var_dump($upload);  
    }

    $arquivo = $_FILES;
    // echo '<hr>';
    // echo $arquivo['arquivo']['name'];
    // echo '<hr>';

    // if (isset($_FILES['arquivo'])) {
    //     echo $_FILES['arquivo']['name'];
    //     var_dump($_FILES);
    // } else {
    //     echo "Nenhum arquivo enviado ainda.";
    // }

    var_dump($arquivo);
    print_r($arquivo);
?>  
<form method="post" enctype="multipart/form-data">
    <input type="file" name="arquivo">
    <button>Enviar</button>
</form>