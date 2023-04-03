<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class ModificationController extends AbstractController
{
    #[Route('/modification', name: 'app_modification')]
    public function index(): Response
    {
        return $this->render('default/modification.html.twig');
    }
}
