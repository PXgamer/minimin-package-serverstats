<?php

namespace MiniminPackage\ServerStats;

use Linfo\Linfo;
use pxgamer\Minimin\Smarter;

/**
 * Class App.
 */
class App
{
    /**
     * App constructor.
     * @param $route
     */
    public function __construct($route)
    {
        // ... Run plugin commands
        $Smarter = Smarter::get();
        $Smarter->addTemplateDir(__DIR__.'/Templates/');

        $linfo = new Linfo;
        $parser = $linfo->getParser();

        $Smarter->display(
            'ServerStats\index.tpl',
            [
                'cpu'          => $parser->getCpu()[0],
                'ram'          => $parser->getRam(),
                'hdd'          => $parser->getHD(),
                'os'           => $parser->getOS(),
                'kernel'       => $parser->getKernel(),
                'architecture' => $parser->getCPUArchitecture(),
                'web'          => $parser->getWebService(),
                'php'          => $parser->getPhpVersion(),
                'devices'      => $parser->getDevs(),
                'network'      => $parser->getNet(),
            ]
        );
    }
}
