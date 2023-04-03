<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class AjoutController extends AbstractController
{
    #[Route('/ajout', name: 'app_ajout')]
    public function index(): Response
    {
        return $this->render('default/ajout.html.twig');
    }
}
