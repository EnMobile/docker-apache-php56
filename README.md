# Debian Apache PHP 5.6
[![](https://badge.imagelayers.io/enmobile/apache:php56.svg)](https://imagelayers.io/?images=enmobile/apache:php56 'Get your own badge on imagelayers.io')

This repository contains the Dockerfile and support files to create an [Apache Http Server](http://httpd.apache.org/) / [PHP 5.6](http://php.net/releases/5_6_0.php) instance 

## Base Docker Image
debian:wheezy

## Installation

Install Docker.

Download automated build from public Docker Hub Registry: 
>docker pull enmobile/apache:php53

Alternatively, you can build an image directly from this repository: 
>docker build -t="enmobile/apache:php53" github.com/EnMobile/docker-apache-php56

##U sage

>docker run -d -p 80:80 enmobile/apache-php56

## Customization

>docker run -d -p 80:80 -v \<path-to/local-web-root\>:/var/www enmobile/apache-php56

where \<path-to/local-web-root\> is an absolute path of a directory containing php and static sources.

Mac users will want to place the path to local web root under the automacially shared Users folder and should consider using something like:

>-v $(pwd)/webroot:/var/www

After few seconds, open http://\<host\> to see your web content.  If started with the -v option, web pages will be automatically updated as they are edited.
