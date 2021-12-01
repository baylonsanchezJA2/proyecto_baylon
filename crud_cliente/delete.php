<?php

include("conexion.php");
$con=conectar();

$IDcliente=$_GET['id'];

$sql="DELETE FROM clientes  WHERE IDcliente='$IDcliente'";
$query=mysqli_query($con,$sql);

    if($query){
        Header("Location: cliente.php");
    }
?>