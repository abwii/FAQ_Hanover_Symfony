<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;


class PreModificationController extends AbstractController
{
    #[Route('/pre-modification', name: 'app_pre-modification')]
    public function showProb(): Response
    {
        // 2 20 de https://www.youtube.com/watch?v=Ao6cfZO7UH4

        return $this->render('default/pre-modification.html.twig');
    }
}
