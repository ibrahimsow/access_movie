<?php
    require'models/connection_bdd.php';


    function liste(){
        global $basedonne;
        $requete = $basedonne->prepare("SELECT annees.annee FROM `annees`");

        $requete->execute();
    
        return $requete->fetchAll(PDO::FETCH_ASSOC);
        
    }