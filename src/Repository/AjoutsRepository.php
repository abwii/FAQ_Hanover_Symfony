<?php

namespace App\Repository;

use App\Entity\Symfony\Ajout;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Doctrine\Persistence\ManagerRegistry;


/**
 * @extends ServiceEntityRepository<\App\Entity\Ajout>
 *
 * @method Ajout|null find($id, $lockMode = null, $lockVersion = null)
 * @method Ajout|null findOneBy(array $criteria, array $orderBy = null)
 * @method Ajout[]    findAll()
 * @method Ajout[]    findBy(array $criteria, array $orderBy = null, $limit = null, $offset = null)
 */
class AjoutsRepository extends ServiceEntityRepository
{
    public function __construct(ManagerRegistry $registry)
    {
        parent::__construct($registry, Ajout::class);
    }

    public function save(\App\Entity\Symfony\Ajout $entity, bool $flush = false): void
    {
        $this->getEntityManager()->persist($entity);

        if ($flush) {
            $this->getEntityManager()->flush();
        }
    }

    public function remove(\App\Entity\Symfony\Ajout $entity, bool $flush = false): void
    {
        $this->getEntityManager()->remove($entity);

        if ($flush) {
            $this->getEntityManager()->flush();
        }
    }

    public function findByReqSql($reqSQL1, $reqSQL2)
    {
        $qb = $this->createQueryBuilder('a');

        $qb->andWhere('a.ReqSQL1 = :ReqSQL1')
           ->setParameter('ReqSQL1', $reqSQL1);

        $qb->andWhere('a.ReqSQL2 = :ReqSQL2')
           ->setParameter('ReqSQL2', $reqSQL2);

        return $qb->getQuery()->getResult();
    }


//    /**
//     * @return Ajout[] Returns an array of Ajout objects
//     */
//    public function findByExampleField($value): array
//    {
//        return $this->createQueryBuilder('u')
//            ->andWhere('u.exampleField = :val')
//            ->setParameter('val', $value)
//            ->orderBy('u.id', 'ASC')
//            ->setMaxResults(10)
//            ->getQuery()
//            ->getResult()
//        ;
//    }

//    public function findOneBySomeField($value): ?Ajout
//    {
//        return $this->createQueryBuilder('u')
//            ->andWhere('u.exampleField = :val')
//            ->setParameter('val', $value)
//            ->getQuery()
//            ->getOneOrNullResult()
//        ;
//    }

}
