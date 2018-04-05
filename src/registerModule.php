<?php
declare(strict_types = 1);

use Slothsoft\Farah\Module\Module;
use Slothsoft\Farah\Module\ModuleRepository;
use Slothsoft\Farah\Module\FarahUrl\FarahUrlAuthority;

ModuleRepository::getInstance()->registerModule(
    new Module(FarahUrlAuthority::createFromVendorAndModule('slothsoft', 'comics'),
        dirname(__DIR__) . DIRECTORY_SEPARATOR . 'assets'));