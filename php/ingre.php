<?php
include'conexion.php';
$nom=$_POST['nomp'];
$rif=$_POST['rif'];
$tel=$_POST['tel'];
$mail=$_POST['email'];
$direc=$_POST['direc'];


//verificar de que no existan campos similares

$busqueda=pg_query("SELECT * FROM proveedores WHERE nom_prove='$nom' AND  rif='$rif'");



    if(pg_num_rows($busqueda)==0){
        $ingresa=pg_query("INSERT INTO  proveedores (nom_prove,rif,telf,email,direc)VALUES('".$nom."','".$rif."','".$tel."','".$mail."','".$direc."')");
        if($ingresa){
        echo"bien hecho del inser";
        }else{
        echo"error";
        }
    }else{
        echo"ya estos campos existen";
    }













?>