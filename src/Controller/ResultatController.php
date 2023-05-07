<?php

namespace App\Controller;

use App\Entity\Ajout;
use Doctrine\Persistence\ManagerRegistry;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;



class ResultatController extends AbstractController
{
    #[Route('/resultat', name: 'app_resultat')]
    public function showResults(ManagerRegistry $mr): Response
    {
        $allResults = $mr->getRepository(Ajout::class)->findAll();
        return $this->render('default/resultat.html.twig', [
            'allResults' => $allResults
        ]);
    }
}
