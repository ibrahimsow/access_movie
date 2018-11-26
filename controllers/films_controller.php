<?php 

require 'vendor/autoload.php';

$loader = new Twig_Loader_Filesystem('view');
$twig = new Twig_Environment($loader, array(
    'cache' => false,
));






require_once('models/film1.php');


switch ($action) {
    case 'list':
        showList();
        break;
    
    // default:
    //     # code...
    //     break;
}





function showList(){
    global $twig;
    $films = liste();
    

    $template = $twig->load('film.html.twig');
    echo $template->render( array( 'title'=>'Tous les Films', 'films' => $films ) );

}