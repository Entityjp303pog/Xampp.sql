<?php
include "config.php";

if(!$conn){
    die("erro na conexão". mysqli.connect.error());
}


$Nome = "$_POST[Nome]";

$Autor = "$_POST[Autor]";

$Gen = "$_POST[Genero]";

$Dat_pub = "$_POST[Dat_pub]";

$Sinopse = "$_POST[Sinopse]";


//transformamos as informações coletadas em um comando sql
$sql = "INSERT INTO `livros`
(`Id_livro`,`Nome`,`Autor`, `Genero`, `Data_publicacao`,`Sinopse`)
VALUES  
('', '$Nome', '$Autor', '$Gen', '$Dat_pub', '$Sinopse')";

//Tudo abaixo checa se o cadastro foi bem sucedido
$query = mysqli_query(mysql: $conn,query: $sql) or die(mysqli_error(mysql: $conn));

if($query){
    echo"<center>";
    echo"Cadastro realizado com sucesso";
}
else{
    die("Falha ao cadastrar");
}