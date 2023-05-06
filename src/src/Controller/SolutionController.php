<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class SolutionController extends AbstractController
{
    #[Route('/solution', name: 'app_solution')]
    public function index(): Response
    {
        return $this->render('default/solution.html.twig');
    }
}
