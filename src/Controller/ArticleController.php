<?php


namespace App\Controller;


use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class ArticleController extends AbstractController
{
    /**
     * @Route("/")
     */
    public function homepage(){
        return new Response("Primera página");
    }

    /**
     * @Route("/news/{slug}")
     */
    public function show($slug){

        $comments = 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. 
        Nam vulputate, diam et bibendum cursus, purus velit luctus enim, ut 
        euismod risus nisi eu dolor. Vestibulum scelerisque sed velit at aliquam. 
        Nulla vestibulum, risus quis vehicula mattis, leo libero lacinia velit, 
        eget lacinia velit nibh quis lectus. Integer id massa et elit varius auctor 
        ac ut leo. Etiam diam magna, fringilla a tempor sit amet, dapibus vitae nisi. 
        Nullam posuere leo elit, nec ultricies libero tristique quis. Donec eleifend 
        porttitor lectus ut vulputate. Integer quis interdum massa. Vestibulum ante 
        ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Phasellus 
        id ultricies mauris. Mauris a volutpat velit.';

        $lista = [
            'Primer elemento',
            'Segundo elemento',
            'Tercer elemento'
        ];

      return $this->render('article/show.html.twig', [
          'title' =>  ucwords(str_replace('-', ' ', $slug)),
          'comments' => $comments,
          'lista' => $lista,
        ]);
    }
}