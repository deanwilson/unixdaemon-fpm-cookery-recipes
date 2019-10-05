# Unixdaemon: FPM-Cookery Recipes

`fpm-cookery` is a very helpful wrapper around the excellent `fpm`
rubygem, a gem that makes building packages amazingly easy. Cookery
extends `fpms` powers by handling additional infrastructure requirements
such as downloading files needed for the package build.

This repo contains some of the fpm-cookery recipes I've written for my
personal use.

## Using the recipes

    # get the code and install the prerequisites
    git clone https://github.com/deanwilson/unixdaemon-fpm-cookery-recipes.git

    cd unixdaemon-fpm-cookery-recipes

    bundle install   # this installs fpm-cookery

Now we'll build one of the packages from our recipes. In this case we'll
create a `goss` `Debian` package.

    cd goss

    bundle exec fpm-cook --target deb package
    ... snip ...
    ===> Created package: /home/dwilson/.../recipes/goss/pkg/goss_0.1.3_amd64.deb

You can now list the contents of the package -

    dpkg -c pkg/goss_*.deb

    drwxrwxr-x 0/0               0 2016-04-05 23:36 ./usr/local/
    drwxrwxr-x 0/0               0 2016-04-05 23:36 ./usr/local/bin/
    -rwxrwxr-x 0/0         2323228 2016-04-05 23:36 ./usr/local/bin/goss

On Redhat you can build and confirm the package contents with

    bundle exec fpm-cook --target rpm package

    rpm -qvilp  pkg/goss*.rpm

This requires the `rpm-build` to be present.

#### Author
[Dean Wilson](http://www.unixdaemon.net)
