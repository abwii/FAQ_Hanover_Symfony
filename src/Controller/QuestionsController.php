<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\Security\Core\Security;

class QuestionsController extends AbstractController
{
    #[Route('/questions', name: 'app_questions')]
    public function index(Security $security): Response
    {
        if (!$security->isGranted('ROLE_USER') && !$security->isGranted('ROLE_ADMIN')) {
            return $this->redirectToRoute('app_login');
        }
        return $this->render('default/questions.html.twig');
    }
}
