<?php
    require'models/connection_bdd.php';


    function listeannee(){
        global $basedonne;
        $requete = $basedonne->prepare("SELECT films.annee FROM films GROUP BY annee ORDER BY annee DESC");

        $requete->execute();
    
        return $requete->fetchAll(PDO::FETCH_ASSOC);
        
    }
    
