<?php
    try{
        $pdo = new PDO("mysql:host=localhost;dbname=apple", "root", "");
    }catch(PDOException $pdo){
        die("Lidhja me DB - DESHTOJ!");
    }
?>