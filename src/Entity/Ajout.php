<?php

namespace App\Entity;
use App\Repository\AjoutsRepository;
use Doctrine\ORM\Mapping as ORM;
use Symfony\Bridge\Doctrine\Validator\Constraints\UniqueEntity;


/**
 * @UniqueEntity(fields={"ProjectName"}, message="The ProjectName is already used by another user")
 */
#[ORM\Entity(repositoryClass: AjoutsRepository::class)]
class Ajout
{
    #[ORM\Id]
    #[ORM\GeneratedValue]
    #[ORM\Column]
    private ?int $id = null;

    #[ORM\Column(length: 180, unique: true)]
    private ?string $ProjectName = null;

    
    #[ORM\Column]
    private ?string $Objet = null;

    #[ORM\Column(length: 100)]
    private ?string $Description = null;
    #[ORM\Column(length: 100)]
    private ?string $Categorie = null;

    #[ORM\Column(length: 100)]
    private ?string $Impact = null;

    #[ORM\Column(length: 100)]
    private ?string $Version = null;

    #[ORM\Column(length: 100)]
    private ?string $Solution = null;

    #[ORM\Column(options:['default'=> 'CURRENT_TIMESTAMP'])]
    private ?\DateTimeImmutable $created_at = null;

    public function __construct()
    {
        $this->created_at = new \DateTimeImmutable();
    }


    public function getId(): ?int
    {
        return $this->id;
    }

    public function getProjectName(): ?string
    {
        return $this->ProjectName;
    }

    public function setProjectName(string $ProjectName): self
    {
        $this->ProjectName = $ProjectName;

        return $this;
    }

    public function getObjet(): string
    {
        return $this->Objet;
    }

    public function setObjet(string $Objet): self
    {
        $this->Objet = $Objet;

        return $this;
    }

    /**
     * @see UserInterface
     */
    public function eraseCredentials()
    {
        // If you store any temporary, sensitive data on the user, clear it here
        // $this->plainObjet = null;
    }

    public function getDescription(): ?string
    {
        return $this->Description;
    }
    

    public function setDescription(string $Description): self
    {
        $this->Description = $Description;

        return $this;
    }
    public function getCategorie(): ?string
    {
        return $this->Categorie;
    }
    public function setCategorie(string $Categorie): self
    {
        $this->Categorie = $Categorie;

        return $this;
    }
    public function getImpact(): ?string
    {
        return $this->Impact;
    }
    public function setImpact(string $Impact): self
    {
        $this->Impact = $Impact;

        return $this;
    }

    public function getVersion(): ?string
    {
        return $this->Version;
    }

    public function setVersion(string $Version): self
    {
        $this->Version = $Version;

        return $this;
    }

    public function getSolution(): ?string
    {
        return $this->Solution;
    }
    public function setSolution(string $Solution): self
    {
        $this->Solution = $Solution;

        return $this;
    }

    public function getCreatedAt(): ?\DateTimeImmutable
    {
        return $this->created_at;
    }

    public function setCreatedAt(\DateTimeImmutable $created_at): self
    {
        $this->created_at = $created_at;

        return $this;
    }
}
