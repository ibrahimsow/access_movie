<?php 

require 'vendor/autoload.php';

$loader = new Twig_Loader_Filesystem('view');
$twig = new Twig_Environment($loader, array(
    'cache' => false,
));






require_once('models/biopic.php');


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

 
    $template = $twig->load('biopic.html.twig');
    echo $template->render(array('title'=>"Film Biopic",'biopic' => $result));
}
