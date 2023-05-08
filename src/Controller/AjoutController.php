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
            echo '<script language="javascript">';
            echo 'alert("Project successfully added!")';
            echo '</script>';
        }

        return $this->render('default/ajouter.html.twig', [
            'ajoutForm' => $form->createView(),
        ]);
    }

    #[Route('/modification/{id}', name: 'app_modification')]
    public function modifier(Request $request, EntityManagerInterface $entityManager, int $id): Response
    {
        // Récupérer l'objet à modifier depuis la base de données

        $ajout = $entityManager->getRepository(Ajout::class)->find($id);

        // Vérifier si l'objet a été trouvé

        if (!$ajout) {
            throw $this->createNotFoundException('L\'ajout avec l\'id ' . $id . ' n\'a pas été trouvé.');
            
        }
        

        // Créer le formulaire avec l'objet à modifier
        $form = $this->createForm(AjoutFormType::class, $ajout);
        $form->handleRequest($request);
        dump($form->getData());

        // Vérifier si le formulaire a été soumis et est valide

        if ($form->isSubmitted() && $form->isValid()&& $request->isMethod('POST')) {

            // Persister l'objet modifié dans la base de données
            $entityManager->persist($ajout);
            $entityManager->flush();
            echo(dump($request));

            // Rediriger l'utilisateur vers la liste des ajouts
            return $this->redirectToRoute('liste_ajouts');
        }
        else {
            dump($form->getErrors());
        }

        // Afficher le formulaire pour modifier l'objet
        return $this->render('default/modification.html.twig', [
            'modifForm' => $form->createView(),
            'ajout' => $ajout // Passer l'objet à la vue pour pouvoir afficher ses propriétés dans le formulaire
        ]);
    }
}
