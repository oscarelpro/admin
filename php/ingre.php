<?php
include'conexion.php';

$nom=$_POST['nomp'];
$rif=$_POST['rif'];
$tel=$_POST['tel'];
$mail=$_POST['email'];
$fecha=$_POST['fecha'];


//verificar de que no existan campos similares

$busqueda=pg_query("SELECT * FROM tb_proveedor WHERE nombre='$nom' AND  rif='$rif'");



    if(pg_num_rows($busqueda)==0){
        $ingresa=pg_query("INSERT INTO  tb_proveedor(nombre,rif,tel,email,fecha)VALUES('".$nom."','".$rif."','".$tel."','".$mail."','".$fecha."')");
        if($ingresa){
        echo"bien hecho del inser";
        }else{
        echo"error";
        }
    }else{
        echo"ya estos campos existen";
    }













?>