<?php
    require'models/connection_bdd.php';


    function listeacteur(){
        global $basedonne;
        $requete = $basedonne->prepare("SELECT acteur.acteur, acteur.id FROM acteur");

        $requete->execute();
    
        return $requete->fetchAll(PDO::FETCH_ASSOC);
        
    }
    
