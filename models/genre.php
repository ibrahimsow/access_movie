<?php
    $basedonne = new PDO("mysql:host=127.0.0.1;dbname=annuaire; charset=utf8", "root", "online@2017");


    function genre1(){
        global $basedonne;
        $requete = $basedonne->prepare("SELECT genre.type FROM `genre` Where genre.id = 1");

        $requete->execute();
    
        return $requete->fetchAll(PDO::FETCH_ASSOC);
        
    }


    function genre2(){
        global $basedonne;
        $requete = $basedonne->prepare("SELECT genre.type FROM `genre` Where genre.id = 2");

        $requete->execute();
    
        return $requete->fetchAll(PDO::FETCH_ASSOC);
        
    }
    

    function genre3(){
        global $basedonne;
        $requete = $basedonne->prepare("SELECT genre.type FROM `genre` Where genre.id = 3");

        $requete->execute();
    
        return $requete->fetchAll(PDO::FETCH_ASSOC);
        
    }


    function genre4(){
        global $basedonne;
        $requete = $basedonne->prepare("SELECT genre.type FROM `genre` Where genre.id = 4");

        $requete->execute();
    
        return $requete->fetchAll(PDO::FETCH_ASSOC);
        
    }


    function genre5(){
        global $basedonne;
        $requete = $basedonne->prepare("SELECT genre.type FROM `genre` Where genre.id = 5");

        $requete->execute();
    
        return $requete->fetchAll(PDO::FETCH_ASSOC);
        
    }
    

    function genre6(){
        global $basedonne;
        $requete = $basedonne->prepare("SELECT genre.type FROM `genre` Where genre.id = 6");

        $requete->execute();
    
        return $requete->fetchAll(PDO::FETCH_ASSOC);
        
    }
    
    function genre7(){
        global $basedonne;
        $requete = $basedonne->prepare("SELECT genre.type FROM `genre` Where genre.id = 7");

        $requete->execute();
    
        return $requete->fetchAll(PDO::FETCH_ASSOC);
        
    }


    function genre8(){
        global $basedonne;
        $requete = $basedonne->prepare("SELECT genre.type FROM `genre` Where genre.id = 8");

        $requete->execute();
    
        return $requete->fetchAll(PDO::FETCH_ASSOC);
        
    }
    

    function genre9(){
        global $basedonne;
        $requete = $basedonne->prepare("SELECT genre.type FROM `genre` Where genre.id = 9");

        $requete->execute();
    
        return $requete->fetchAll(PDO::FETCH_ASSOC);
        
    }
    