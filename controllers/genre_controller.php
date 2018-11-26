<?php 

require 'vendor/autoload.php';

$loader = new Twig_Loader_Filesystem('view');
$twig = new Twig_Environment($loader, array(
    'cache' => false,
));






require_once('models/genre.php');



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
    $result = genre();
 
    $template = $twig->load('genre.html.twig');
    echo $template->render(array('title'=>'Liste des Genres','genre' => $result));


}