<?php
$db_user = "root";
$db_host = "localhost";
$db_pass = "";

$db_name = "biblioteca";

$conn = new mysqli($db_host, $db_user, $db_pass, $db_name);



if ($conn->connect_error){
    die("falha na conexão: {$conn->connect_error}");
}
else{
    echo("Conectou-se com sucesso ao banco de dados $db_name");
}