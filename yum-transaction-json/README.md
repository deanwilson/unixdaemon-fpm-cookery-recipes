
Once you've installed `fpm-cookery` as shown in the
[main README](https://github.com/deanwilson/unixdaemon-fpm-cookery-recipes/blob/main/README.md)
you can build the RPM with:

    cd yum-transaction-json

    bundle exec fpm-cook --target rpm package
