
Once you've installed `fpm-cookery` as shown in the
[main README](https://github.com/deanwilson/unixdaemon-fpm-cookery-recipes/blob/main/README.md)
you can build the package with:

    cd puppet-ls

    bundle exec fpm-cook --target rpm package

or

    bundle exec fpm-cook --target deb package
