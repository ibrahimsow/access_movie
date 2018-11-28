<?php
    $basedonne = new PDO("mysql:host=127.0.0.1;dbname=annuaire_film; charset=utf8", "root", "online@2017");


    function liste(){
        global $basedonne;
        $requete = $basedonne->prepare("SELECT films.annee FROM films GROUP BY annee ORDER BY annee DESC");

        $requete->execute();
    
        return $requete->fetchAll(PDO::FETCH_ASSOC);
        
    }