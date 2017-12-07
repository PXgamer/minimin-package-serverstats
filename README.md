# minimin-package-serverstats

[![Latest Version on Packagist][ico-version]][link-packagist]
[![Software License][ico-license]](LICENSE.md)
[![Build Status][ico-travis]][link-travis]
[![Style CI][ico-styleci]][link-styleci]
[![Code Coverage][ico-code-quality]][link-code-quality]
[![Total Downloads][ico-downloads]][link-downloads]

A server statistics package based around system information.
Designed for the [Minimin](https://github.com/pxgamer/minimin) server management tool.

## Structure

```
src/
tests/
vendor/
```

## Install

Via Composer

``` bash
$ composer require pxgamer/minimin-package-serverstats
```

## Usage

Current information this provides:
- OS Information
  - Name
  - Kernel
  - Architecture
- CPU Information
  - Model
  - Vendor
  - Speed (Mhz)
- RAM Information
  - Type
  - Total
  - Free
- HDD Information
  - Name
  - Vendor
  - Size
  - Device Path

## Change log

Please see [CHANGELOG](CHANGELOG.md) for more information on what has changed recently.

## Testing

``` bash
$ composer test
```

## Contributing

Please see [CONTRIBUTING](CONTRIBUTING.md) and [CODE_OF_CONDUCT](CODE_OF_CONDUCT.md) for details.

## Security

If you discover any security related issues, please email owzie123@gmail.com instead of using the issue tracker.

## Credits

- [pxgamer][link-author]
- [All Contributors][link-contributors]

## License

The MIT License (MIT). Please see [License File](LICENSE.md) for more information.

[ico-version]: https://img.shields.io/packagist/v/pxgamer/minimin-package-serverstats.svg?style=flat-square
[ico-license]: https://img.shields.io/badge/license-MIT-brightgreen.svg?style=flat-square
[ico-travis]: https://img.shields.io/travis/pxgamer/minimin-package-serverstats/master.svg?style=flat-square
[ico-styleci]: https://styleci.io/repos/85838153/shield
[ico-code-quality]: https://img.shields.io/codecov/c/github/pxgamer/minimin-package-serverstats.svg?style=flat-square
[ico-downloads]: https://img.shields.io/packagist/dt/pxgamer/minimin-package-serverstats.svg?style=flat-square

[link-packagist]: https://packagist.org/packages/pxgamer/minimin-package-serverstats
[link-travis]: https://travis-ci.org/pxgamer/minimin-package-serverstats
[link-styleci]: https://styleci.io/repos/85838153
[link-code-quality]: https://codecov.io/gh/pxgamer/minimin-package-serverstats
[link-downloads]: https://packagist.org/packages/pxgamer/minimin-package-serverstats
[link-author]: https://github.com/pxgamer
[link-contributors]: ../../contributors
