<?php

namespace App\Controller;

use App\Entity\Ajout;
use App\Entity\PreModification;
use Doctrine\Persistence\ManagerRegistry;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\Security\Core\Security;



class PreModificationController extends AbstractController
{
    #[Route('/pre-modification', name: 'app_pre_modification')]
    public function showProbs(ManagerRegistry $mr, Security $security): Response
    {
        $allProbs = $mr->getRepository(Ajout::class)->findAll();
        if (!$security->isGranted('ROLE_USER') && !$security->isGranted('ROLE_ADMIN')) {
            return $this->redirectToRoute('app_login');
        }
        return $this->render('default/pre-modification.html.twig', [
            'allProbs' => $allProbs
        ]);
    }
}