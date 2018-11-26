<?php 

require 'vendor/autoload.php';

$loader = new Twig_Loader_Filesystem('view');
$twig = new Twig_Environment($loader, array(
    'cache' => false,
));






require_once('models/realisateur.php');



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
    $result = liste();
    

    $template = $twig->load('realisateur.html.twig');
    echo $template->render(array('realisateurs' => $result));


}