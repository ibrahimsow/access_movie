<?php
    require'models/connection_bdd.php';


    function liste(){
        global $basedonne;
        $requete = $basedonne->prepare("SELECT realisateur.realisateur FROM realisateur");

        $requete->execute();
    
        return $requete->fetchAll(PDO::FETCH_ASSOC);
        
    }
    
