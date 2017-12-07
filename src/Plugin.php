<?php

namespace MiniminPackage\ServerStats;

/**
 * Class Plugin.
 */
class Plugin
{
    /**
     * @return object
     */
    public static function info()
    {
        $object = (object)[
            'app_namespace' => '\\MiniminPackage\\ServerStats',
            'name'          => 'Server Stats',
            'link'          => 'server-stats',
            'description'   => 'A server statistics package based around system information.',
        ];

        return $object;
    }
}
