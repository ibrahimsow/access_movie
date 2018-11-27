<?php
    $basedonne = new PDO("mysql:host=127.0.0.1;dbname=annuaire_film; charset=utf8", "root", "online@2017");


    function liste(){
        global $basedonne;
        $sql = "SELECT films.titre, films.description, films.annee, films.image_film FROM (film_genre INNER JOIN films ON film_genre.film = films.id) INNER JOIN genre ON genre.id = film_genre.genre WHERE genre.id = 10";
        
        $requete = $basedonne->prepare($sql);
        $requete->execute();
        return $requete->fetchAll(PDO::FETCH_ASSOC);
        
    }

