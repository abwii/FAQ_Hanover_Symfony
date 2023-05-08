<?php

namespace App\Controller;

use App\Entity\Contact;
use App\Form\ContactFormType;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Component\Security\Core\Security;

class ContactController extends AbstractController
{
    #[Route('/contact', name: 'app_contact')]
    public function contact(Request $request, EntityManagerInterface $entityManager, Security $security): Response
    {
        if (!$security->isGranted('ROLE_USER') && !$security->isGranted('ROLE_ADMIN')) {
            return $this->redirectToRoute('app_login');
        }

        $user = $this->getUser(); // Récupérer l'utilisateur connecté
        $contact = new Contact();
        $contact->setUser($user); // Définir l'utilisateur connecté pour l'entité Contact

        $form = $this->createForm(ContactFormType::class, $contact);
        $form->handleRequest($request);
        
        if ($form->isSubmitted() && $form->isValid()) {
            $user = $form->getData();
            $entityManager->persist($user);
            $entityManager->flush();
            // do anything else you need here, like send an email

            // return $userAuthenticator->authenticateUser(
            //     $user,
            //     $authenticator,
            //     $request
            // );
            echo ("mail envoyé");
        }
        return $this->render('default/contact.html.twig', [
            'contactForm' => $form->createView(),
        ]);
    }
}
