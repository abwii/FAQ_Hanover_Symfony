<?php

namespace App\Form;

use App\Entity\Ajout;
use PHPUnit\TextUI\XmlConfiguration\CodeCoverage\Report\Html;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\Extension\Core\Type\ChoiceType;
use Symfony\Component\Form\Extension\Core\Type\TextType;
use Symfony\Component\Form\Extension\Core\Type\TextareaType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;


class AjoutFormType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $builder
            ->add('ProjectName', TextType::class, [
                'attr' => [
                    'class' => 'form-control',
                ],
                'label' => 'Nom du projet',
            ]
            )
            
            ->add('Categorie', ChoiceType::class, [
                'choices' => [
                    'Application mobile' => 'Application mobile',
                    'Base de donnees' => 'Base de donnees',
                    'Embarque' => 'Embarque',
                    'General' => 'General',
                    'IHM' => 'IHM',
                    'Intervention sur les donnees' => 'Intervention sur les donnees',
                    'Livraison et Mise à jour' => 'Livraison et Mise à jour',
                    'Serveur' => 'Serveur',
                    'Siri et Siri Light' => 'Siri et Siri Light',
                    'Non determine' => 'Non determine',

                ],
            ])
            ->add('Impact', ChoiceType::class, [
                'choices' => [
                    'Mineur' => 'Mineur',
                    'Majeur' => 'Majeur',
                    'Bloquant' => 'Bloquant',
                    'Simple' => 'Simple',
                    'Critique' => 'Critique',
                    'Fonctionnalité' => 'Fonctionnalité',
                    'Cosmétique' => 'Cosmétique',
                    'Serveur' => 'Serveur',
                    'Je ne sais pas' => 'Je ne sais pas',

                ],
            ])
            ->add('Objet', TextType::class, [
                'attr' => [
                    'class' => 'form-control',
                ],
                'label' => 'Objet',
            ])
            ->add('Description', TextareaType::class, [
                'attr' => [
                    'class' => 'form-control',
                ],
                'label' => 'Description',
            ])
            ->add('Version', TextType::class, [
                'attr' => [
                    'class' => 'form-control',
                ],
                'label' => 'Version',
            ])
            ->add('Solution', TextareaType::class, [
                'attr' => [
                    'class' => 'form-control', 'rows' =>7,
                ],
                'label' => 'Solution',
            ]);
    }

    public function configureOptions(OptionsResolver $resolver)
    {
        $resolver->setDefaults([
            'data_class' => Ajout::class,
        ]);
    }
}
