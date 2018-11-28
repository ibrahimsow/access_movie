<?php 


// rooting
$requete = explode("/", trim($_SERVER['REQUEST_URI'], "/"));

$controller=(count($requete)=== 1)?  "home":$requete[1];
$action=(count($requete) < 3)? "list": $requete[2];
$id=(count($requete) < 4)? 0: (int)$requete[3];

switch ($controller) {
        case 'films':
        require_once("controllers/films_controller.php");
        break;

        case 'action':
        require_once("controllers/action_controller.php");
        break;
        
        case 'animation':
        require_once("controllers/animation_controller.php");
        break;
        
        case 'art_martiaux':
        require_once("controllers/art_martiaux_controller.php");
        break;

        case 'avanture':
        require_once("controllers/avanture_controller.php");
        break;
        
        case 'biopic':
        require_once("controllers/biopic_controller.php");
        break;

        case 'bollywood':
        require_once("controllers/bollywood_controller.php");
        break;

        case 'drame':
        require_once("controllers/drame_controller.php");
        break;

        case 'famille':
        require_once("controllers/famille_controller.php");
        break;

        case 'fiction':
        require_once("controllers/fiction_controller.php");
        break;

        case 'romance':
        require_once("controllers/romance_controller.php");
        break;

        case 'realisateur':
        require_once("controllers/realisateur_controller.php");
        break;

        case 'annee':
        require_once("controllers/annee_controller.php");
        break;

    default:
        require_once("controllers/home_controller.php");
        break;
}




?>