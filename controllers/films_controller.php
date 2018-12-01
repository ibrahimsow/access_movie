<?php 

require 'vendor/autoload.php';

$loader = new Twig_Loader_Filesystem('view');
$twig = new Twig_Environment($loader, array(
    'cache' => false,
));






require_once('models/film.php');
require_once('models/genre.php');


switch ($action) {
    case 'list':
        showList();
        break;
        case 'genre':
        showListbyGenre();
        break;
        case 'realisateur':
        showListByOneRealisateur();
        break;
        case 'acteur':
        showListByOneActeur();
        break;
        case 'annee':
        showListAnnee();
        break;
}





function showList(){
    global $twig, $baseurl;
    $films = liste();
    $genres = listeGenre();
    
    $template = $twig->load('film.html.twig');
    echo $template->render( array('title'=>'Tous les Films', 'films' => $films, 'genres' => $genres, 'baseurl' => $baseurl) );

}

function showListbyGenre(){
    global $twig, $id, $baseurl;
    $films = showFilmsByGenre($id);
    $genres = listeGenre();
    

    $template = $twig->load('film.html.twig');
    echo $template->render( array( 'films' => $films, 'genres' => $genres, 'baseurl' => $baseurl) );

}

function showListByOneRealisateur(){
    global $twig, $id, $baseurl;
    $films = showFilmsByOneRealisateur($id);
    

    $template = $twig->load('film.html.twig');
    echo $template->render( array( 'films' => $films, 'baseurl' => $baseurl) );

}

function showListByOneActeur(){
    global $twig, $id, $baseurl;
    $films = showFilmsByOneActeur($id);
    

    $template = $twig->load('film.html.twig');
    echo $template->render( array( 'films' => $films, 'baseurl' => $baseurl) );

}

function showListAnnee(){
    global $twig, $id, $baseurl;
    $films = showAnnee($id);
    

    $template = $twig->load('film.html.twig');
    echo $template->render( array( 'films' => $films, 'baseurl' => $baseurl) );

}


