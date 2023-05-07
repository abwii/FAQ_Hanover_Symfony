<?php

namespace App\Controller;
use App\Form\AjoutFormType;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use App\Entity\Ajout;

use Doctrine\ORM\EntityManagerInterface;
use Symfony\Component\HttpFoundation\Request;

class AjoutController extends AbstractController
{
    #[Route('/ajouter', name: 'app_ajouter')]
    public function ajout(Request $request, EntityManagerInterface $entityManager): Response
    {
        $user = new Ajout();
        $form = $this->createForm(AjoutFormType::class, $user);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            
            $entityManager->persist($user);
            $entityManager->flush();
            // do anything else you need here, like send an email

            // return $userAuthenticator->authenticateUser(
            //     $user,
            //     $authenticator,
            //     $request
            // );
            echo ("ajouté");
        }
        
        return $this->render('default/ajouter.html.twig', [
            'ajoutForm' => $form->createView(),
        ]);
    }

    #[Route('/modification', name: 'app_modification')]
    public function modif(Request $request, EntityManagerInterface $entityManager): Response
    {
        $user = new Ajout();
        $form = $this->createForm(AjoutFormType::class, $user);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {

            $entityManager->persist($user);
            $entityManager->flush();
            // do anything else you need here, like send an email

            // return $userAuthenticator->authenticateUser(
            //     $user,
            //     $authenticator,
            //     $request
            // );
            echo ("modifé");
        }
        
        return $this->render('default/modification.html.twig',[
            'modifForm' => $form->createView(),
        ]);
    }
    
    
}
