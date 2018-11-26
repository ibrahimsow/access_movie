<?php
    $basedonne = new PDO("mysql:host=127.0.0.1;dbname=annuaire; charset=utf8", "root", "online@2017");


    function liste(){
        global $basedonne;
        $requete = $basedonne->prepare("SELECT realisateurs.nom FROM realisateurs");

        $requete->execute();
    
        return $requete->fetchAll(PDO::FETCH_ASSOC);
        
    }
    
