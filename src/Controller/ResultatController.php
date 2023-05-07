<?php

namespace App\Controller;

use App\Repository\AjoutsRepository;
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
        // Récupérer les valeurs des variables de session
        $ReqSQL1 = $_POST['ReqSQL1'] ?? null;
        $ReqSQL2 = $_POST['ReqSQL2'] ?? null;

        // Si les variables de session ne sont pas vides, les utiliser pour récupérer les résultats de la base de données
        if ($ReqSQL1 && $ReqSQL2) {
            $allResults = $mr->getRepository(Ajout::class)->findByReqSql($ReqSQL1, $ReqSQL2);
        } else {
            $allResults = $mr->getRepository(Ajout::class)->findAll();
        }

        return $this->render('default/resultat.html.twig', [
            'allResults' => $allResults,
            'ReqSQL1' => $ReqSQL1,
            'ReqSQL2' => $ReqSQL2,
        ]);
    }
}