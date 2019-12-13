<?php

namespace App\Twig;

use App\Service\MarkdownHelper;
use App\Service\UploaderHelper;
use Psr\Container\ContainerInterface;
use Symfony\Contracts\Service\ServiceSubscriberInterface;
use Twig\Extension\AbstractExtension;
use Twig\TwigFilter;
use Twig\TwigFunction;

class AppExtension extends AbstractExtension implements ServiceSubscriberInterface
{

    private $container;
    public function __construct(ContainerInterface $container)
    {
        $this->container = $container;
    }


    public function getFilters(): array
    {
        return [
            new TwigFilter('cached_markdown', [AppRuntime::class, 'processMarkdown'], ['is_safe' => ['html']]),
        ];
    }

    public function getFunctions(): array
    {
        return [
            new TwigFunction('uploaded_asset', [$this, 'getUploadedAssetPath'])
        ];
    }

    public function processMarkdown($value)
    {
        return $this->container
            ->get(MarkdownHelper::class)
            ->parse($value);
    }

    public function getUploadedAssetPath(string $path)
    {
        return $this->container
            ->get(UploaderHelper::class)
            ->getPublicPath($path);
    }

    /**
     * Returns an array of service types required by such instances, optionally keyed by the service names used internally.
     *
     * For mandatory dependencies:
     *
     *  * ['logger' => 'Psr\Log\LoggerInterface'] means the objects use the "logger" name
     *    internally to fetch a service which must implement Psr\Log\LoggerInterface.
     *  * ['loggers' => 'Psr\Log\LoggerInterface[]'] means the objects use the "loggers" name
     *    internally to fetch an iterable of Psr\Log\LoggerInterface instances.
     *  * ['Psr\Log\LoggerInterface'] is a shortcut for
     *  * ['Psr\Log\LoggerInterface' => 'Psr\Log\LoggerInterface']
     *
     * otherwise:
     *
     *  * ['logger' => '?Psr\Log\LoggerInterface'] denotes an optional dependency
     *  * ['loggers' => '?Psr\Log\LoggerInterface[]'] denotes an optional iterable dependency
     *  * ['?Psr\Log\LoggerInterface'] is a shortcut for
     *  * ['Psr\Log\LoggerInterface' => '?Psr\Log\LoggerInterface']
     *
     * @return array The required service types, optionally keyed by service names
     */
    public static function getSubscribedServices()
    {
        // TODO: Implement getSubscribedServices() method.
        return [
            MarkdownHelper::class,
            UploaderHelper::class
        ];

    }
}
