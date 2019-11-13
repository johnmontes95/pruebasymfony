<?php


namespace App\Controller;


use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Symfony\Component\HttpFoundation\Response;

class ArticleController
{
    /**
     * @Route("/")
     */
    public function homepage(){
        return new Response("Primera página");
    }

    /**
     * @Route("/news/hola-mundo")
     */
    public function show(){
        return new Response("Hola");
    }
}