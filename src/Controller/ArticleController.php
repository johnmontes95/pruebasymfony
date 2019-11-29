<?php


namespace App\Controller;


use App\Entity\Article;
use App\Repository\ArticleRepository;
use App\Service\MarkdownHelper;
use Doctrine\ORM\EntityManagerInterface;
use App\Service\SlackClient;
use Psr\Log\LoggerInterface;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\Routing\Annotation\Route;

class ArticleController extends AbstractController
{

    private $isDebug;
    public function __construct(bool $isDebug)
    {
        $this->isDebug = $isDebug;
    }

    /**
     * @Route("/", name="app_homepage")
     */
    public function homepage(ArticleRepository $repository){

        $articles = $repository->findAllPublishedOrderedByNewest();
        return $this->render('article/homepage.html.twig', [
            'articles' => $articles,
        ]);
    }

    /**
     * @Route("/news/{slug}", name="article_show")
     */
    public function show(Article $article, MarkdownHelper $markdownHelper, SlackClient $slack){

        if ($article->getSlug() === 'life-on-planet-mercury-tan-relaxing-and-fabulous-2') {
            $slack->sendMessage('Kahn',  'Ah, Kirk, my old friend...');
        }

        return $this->render('article/show.html.twig', [
          'article' => $article,
        ]);

    }

    /**
     * @Route("/news/{slug}/heart", name="article_toggle_heart", methods={"POST"})
     */
    public function toggleArticleHeart(Article $article, LoggerInterface $logger, EntityManagerInterface $em){

        $article->incrementHeartCount();
        $em->flush();
        $logger->info('Article is being hearted');
        return $this->json(['hearts' => $article->getHeartCount()]);
    }
}