<?php

namespace App\Controller;

use Doctrine\DBAL\Connection;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Doctrine\Persistence\ManagerRegistry;
use Symfony\Component\Routing\Annotation\Route;

class ResultatMantisController extends AbstractController
{
    private $connection;

    public function __construct(Connection $connection)
    {
        $this->connection = $connection;
    }

    #[Route('/resultat_mantis', name: 'app_resultat_mantis')]
    public function showResultsMantis(ManagerRegistry $mr): Response
    {
        $query = "SELECT * FROM mantis.mantis_bug_table where STATUS in (10,20) and version='4.1';";
        $result = $this->connection->executeQuery($query)->fetchAll();

        // Traitement des résultats de la requête

        return $this->render('resultat_mantis.html.twig', ['result' => $result]);
    }
}