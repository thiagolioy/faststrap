# faststrap
============

[![Twitter: @tplioy](https://img.shields.io/badge/contact-@tplioy-blue.svg?style=flat)](https://twitter.com/tplioy)
[![License](http://img.shields.io/badge/license-MIT-green.svg?style=flat)](https://github.com/thiagolioy/faststrap/blob/master/LICENSE)
[![Gem](https://img.shields.io/gem/v/faststrap.svg?style=flat)](https://rubygems.org/gems/faststrap)
[![Build Status](https://img.shields.io/travis/thiagolioy/faststrap/master.svg?style=flat)](https://travis-ci.org/thiagolioy/faststrap)
[![Coverage Status](https://coveralls.io/repos/thiagolioy/faststrap/badge.svg?branch=master)](https://coveralls.io/r/thiagolioy/faststrap?branch=master)

######*faststrap* lets you setup and bootstrap your mac OS environment for development.

Contact the developer on Twitter: [@tplioy](https://twitter.com/tplioy)

-------
<p align="center">
    <a href="#features">Features</a> &bull;
    <a href="#installation">Installation</a>
</p>

-------

## Features

Tired of having to install several different programs everytime you format or buy a new machine ? New hires on your company are wasting time to get there machines ready to code ?
With faststrap you install the ios environment really easy using just one command.

```shell
faststrap ios
```

<h3 align="center">
  <img src="assets/faststrapios.png" alt="fastlane ios cmd" />
</h3>

Remove installed ios tools with only one cmd

```shell
faststrap clean
```
<h3 align="center">
  <img src="assets/faststrapclean.png" alt="fastlane clean cmd" />
</h3>


## Installation

If you are familiar with the command line and Ruby, install `faststrap` yourself:

    sudo gem install faststrap

## Contribute
My goal here is to be the bootstrap platform for several development environments. Install your
dev environment into a machine should be somthing very easy to do.Contributors are more than welcome,please help me to achive this goal. This project is new and still misses lots of things such as:

- Other environments besides ios (Android, Rails, Web, Node)
- Tests
- Better test coverage

## License
This project is licensed under the terms of the MIT license. See the LICENSE file.
