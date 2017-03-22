<?php

namespace MiniminPackage\ServerStats;

use pxgamer\Minimin\Smarter;

class App
{
    // When initialised by the Minimin class, it will pass the $route to the plugin App constructor
    public function __construct($route)
    {
        // ... Run plugin commands
        $Smarter = Smarter::get();
        $Smarter->addTemplateDir(__DIR__ . '/Templates/');

        $linfo = new \Linfo\Linfo;
        $parser = $linfo->getParser();

        $Smarter->display(
            'ServerStats\index.tpl',
            [
                'cpu' => $parser->getCpu()[0],
                'ram' => $parser->getRam(),
                'hdd' => $parser->getHD()
            ]
        );
    }
}