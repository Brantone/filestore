# filestore

This is a really simple nginx wrapper cookbook that installs and configures
nginx from source. It also include openssl from source to make patching easy.

# NOTE
 - We are using a custom nginx cookbook from here https://github.com/Sauraus/nginx.git (at 2.7.x)
 because the current 2.7.6 cookbook on https://supermarket.chef.io has very old dependencies
 which conflict with our base dependencies like:
  - ohai ~> 4
  - build-essential ~> 7
