<?php
    require'models/connection_bdd.php';


    function liste(){
        global $basedonne;
        $sql = "SELECT films.titre, films.description, films.annee, films.image_film
                FROM `films`";
        
        $requete = $basedonne->prepare($sql);
        $requete->execute();    
        return $requete->fetchAll(PDO::FETCH_ASSOC);    
    }

