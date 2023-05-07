<?php

namespace App\Controller;

use App\Entity\Ajout;
use App\Entity\PreModification;
use Doctrine\Persistence\ManagerRegistry;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;


class PreModificationController extends AbstractController
{
    #[Route('/pre-modification', name: 'app_pre_modification')]
    public function showProbs(ManagerRegistry $mr): Response
    {
        $allProbs = $mr->getRepository(Ajout::class)->findAll();
        return $this->render('default/pre-modification.html.twig', [
            'allProbs' => $allProbs
        ]);
    }
}
