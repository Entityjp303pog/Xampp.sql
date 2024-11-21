<?php
include "config.php";


if(!$conn){
    die("erro na conexão". mysqli.connect.error());
}

$Nome = "$_POST[Nome]";

$CPF = "$_POST[CPF]";

$Email = "$_POST[Email]";

$Data = "$_POST[Dat_nasc]";

$CEP = "$_POST[CEP]";

$Tel = "$_POST[Tel]";


$sql = "INSERT INTO `Clientes`
(`Id_cliente`,`Nome`,`CPF`, `Email`, `Data_nasc`,`CEP`, `Num_telefone`)
VALUES
('', '$Nome', '$CPF', '$Email', '$Data', '$CEP', '$Tel')";


$query = mysqli_query(mysql: $conn,query: $sql) or
die(mysqli_error(mysql: $conn));


if($query){
    echo"<center>";
    echo"Cadastro realizado com sucesso";
}
else{
    die("Falha ao cadastrar");
}