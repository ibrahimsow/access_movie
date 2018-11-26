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
    $result = genre1();
    $result2 = genre2();
    $result3 = genre3();
    $result4 = genre4();
    $result5 = genre5();
    $result6 = genre6();
    $result7 = genre7();
    $result8 = genre8();
    $result9 = genre9();

    $template = $twig->load('genre.html.twig');
    echo $template->render(array('genre' => $result,'genre2' => $result2, 'genre3' => $result3, 'genre4' => $result4, 'genre5' => $result5, 'genre6' => $result6, 'genre7' => $result7, 'genre8' => $result8, 'genre9' => $result9 ));


}