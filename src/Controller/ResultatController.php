<?php

namespace App\Controller;

use App\Repository\AjoutsRepository;
use App\Entity\Symfony\Ajout;
use Doctrine\Persistence\ManagerRegistry;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class ResultatController extends AbstractController
{
    #[Route('/resultat', name: 'app_resultat')]
    public function showResults(ManagerRegistry $mr): Response
    {
        // Si les variables de session ne sont pas vides, les utiliser pour récupérer les résultats de la base de données
        $allResults = $mr->getRepository(Ajout::class)->findAll();
        return $this->render('default/resultat.html.twig', [
            'allResults' => $allResults
        ]);
    }
}