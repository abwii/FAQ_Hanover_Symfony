<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class PreModificationController extends AbstractController
{
    #[Route('/pre-modification', name: 'app_pre-modification')]
    public function index(): Response
    {
        return $this->render('default/pre-modification.html.twig');
    }
}
