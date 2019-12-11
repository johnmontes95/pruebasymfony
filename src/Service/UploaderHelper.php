<?php


namespace App\Service;


use Gedmo\Sluggable\Util\Urlizer;
use League\Flysystem\FileNotFoundException;
use League\Flysystem\FilesystemInterface;
use Psr\Log\LoggerInterface;
use Symfony\Component\Asset\Context\RequestStackContext;
use Symfony\Component\HttpFoundation\File\File;
use Symfony\Component\HttpFoundation\File\UploadedFile;

class UploaderHelper
{
    const ARTICLE_IMAGE = 'article_image';
    const ARTICLE_REFERENCE = 'article_reference';


    private $requestStackContext;

    private $filesystem;

    private $privateFilesystem;

    private $logger;

    private $publicAssetBaseUrl;

    public function __construct(FilesystemInterface $publicUploadsFilesystem, FilesystemInterface $privateUploadsFilesystem,RequestStackContext $requestStackContext, LoggerInterface $logger, string $uploadedAssetsBaseUrl)
    {
        $this->filesystem = $publicUploadsFilesystem;
        $this->privateFilesystem = $privateUploadsFilesystem;
        $this->requestStackContext = $requestStackContext;
        $this->logger = $logger;
        $this->publicAssetBaseUrl = $uploadedAssetsBaseUrl;
    }

    public function uploadArticleImage(File $file, ?string $existingFilename): string
    {
       $newFileName = $this->uploadFile($file, self::ARTICLE_IMAGE, true);

        if($existingFilename){
            try{
                $result = $this->filesystem->delete(self::ARTICLE_IMAGE.'/'.$existingFilename);
                if($result == false){
                    throw new \Exception(sprintf('Could not write uploaded file "%s"', $newFileName));
                }
            }catch (FileNotFoundException $e){
                $this->logger->alert(sprintf('Old uploaded file "%s" was missing when trying to delete', $existingFilename));
            }
        }

        return $newFileName;
    }

    public function getPublicPath(string $path): string
    {
        return $this->requestStackContext
        ->getBasePath(). $this->publicAssetBaseUrl . '/' . $path;
    }

    public function uploadArticleReference(File $file): string
    {
       return $this->uploadFile($file, self::ARTICLE_REFERENCE, false);
    }

    private function uploadFile(File $file, string $directory, bool $isPublic)
    {
        if($file instanceof UploadedFile) {
            $originalFilename = $file->getClientOriginalName();
        }else{
            $originalFilename = $file->getFilename();
        }
        $newFileName = Urlizer::urlize(pathinfo($originalFilename, PATHINFO_FILENAME)) . '-' . uniqid() . '.' . $file->guessExtension();

        $filesystem = $isPublic ? $this->filesystem : $this->privateFilesystem;
        $stream = fopen($file->getPathname(), 'r');
        $result = $filesystem->writeStream(
            $directory.'/'.$newFileName,
            $stream
        );

        if($result == false){
            throw new \Exception(sprintf('Could not write uploaded file "%s"', $newFileName));
        }

        if(is_resource($stream)){
            fclose($stream);
        }

        return $newFileName;
    }
}