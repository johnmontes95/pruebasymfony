<?php


namespace App\Controller;


use App\Entity\Article;
use App\Entity\Comment;
use App\Repository\ArticleRepository;
use App\Service\MarkdownHelper;
use Doctrine\ORM\EntityManagerInterface;
use App\Service\SlackClient;
use Psr\Log\LoggerInterface;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
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
    public function toggleArticleHeart(Article $article, LoggerInterface $logger, EntityManagerInterface $em, Request $request){

        $type = $request->query->get('type');

        if(type == "like"){
            $article->incrementHeartCount();
        }else{
            $article->decrementHeartCount();
        }

        $em->flush();
        $logger->info('Article is being hearted');
        return $this->json(['hearts' => $article->getHeartCount()]);
    }

    /**
     * @Route("/news/{slug}/comment", name="article_add_comment")
     */
    public function addComment(Article $article, EntityManagerInterface $em, Request $request){

        $content = $request->query->get('comment');
        $comment = new Comment();
        $comment->setContent($content);
        $comment->setCreatedAt(new \Datetime());
        $comment->setAuthorName($this->getUser());
        $comment->setArticle($article);
        $em->persist($comment);
        $em->flush();
        return $this->render('article/comment.html.twig', [
            'comment' => $comment
        ]);

    }
}