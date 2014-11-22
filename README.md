# petrified

Copyright (c) 2014 Troy Engel  
GPLv3 - see LICENSE for details

## Introduction

**Petrified** is a bash client to update dynamic DNS at freedns.afraid.org;
the goals are for simplicity, flexibility and configurability which using
the minimal system tools installed with most distributions.

* Code: https://github.com/troyengel/petrified
* AUR: https://aur.archlinux.org/packages/petrified/

## Features

Several configuration methods:

* /etc/petrified.conf
* ~/.petrifiedrc
* -c (config) on the commandline

High level items of interest:

* IPv4 and IPv6 support
* PID usage to prevent race conditions or stacked crons
* Logging via journald, syslog, stdout and a logfile simultaneously
* Local IP reporting for use with internal DNS entries
* Caching of the last IP to reduce upstream impact
* Usable via cron, NetworkManager dispatcher, commandline, systemd, etc.

## Dependencies

| Utilities                          | Package    |
| -----------------------------------|------------|
| logger, kill                       | util-linux |
| printf, touch, date, stat, cat, rm | coreutils  |
| bash                               | bash       |
| ip                                 | iproute2   |
| curl                               | curl       |


## Configuration

Copy the default configuration file to */etc/petrified.conf* for global
use, *~/.petrifiedrc* for user-level use, or another location as desired.
At a minimum the `DDNS_KEY` variable must be configured for basic usage;
all other variables are preconfigured for system level (root) usage.

If implementing at the user level, be sure and set the various file location
options to a directory that is writable by the user; the default config is
fully documented and should make sense.

## Usage

Usage is simple - just run `petrified` and check your log(s).

To use a custom configuration file, the `-c` (*config*) parameter is 
supported; note that using this option will **not** read the global/local
configuration files and only use the variables from this custom file.

## Acknowledgements

Prior to writing this software, several contributions were made to:

* afraid-dyndns
* fdnsc

The original version of petrified was influenced by these two software
package's concepts, however actual code was not used.

## Support

If like this software, please consider upgrading to a Premium account to
help support the [Free DNS](http://freedns.afraid.org) project.

