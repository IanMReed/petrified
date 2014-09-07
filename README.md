# petrified

Copyright (c) 2014 Troy Engel  
GPLv3 - see LICENSE for details

## Introduction

Petrified is a bash client to update dynamic DNS at freedns.afraid.org; the goals
are for simplicity, flexibility and configurability which using the minimal
system tools installed with most distributions.

## Dependencies

| Utility | Package     |
| --------|-------------|
| logger  | util-linux  |
| kill    | util-linux  |
| printf  | coreutils   |
| touch   | coreutils   |
| date    | coreutils   |
| cat     | coreutils   |
| rm      | coreutils   |
| bash    | bash        |
| ip      | iproute2    |
| curl    | curl        |


## Features

- Several configuration methods:
 * /etc/petrified.conf
 * ~/.petrifiedrc
 * -c (config) on the commandline

- IPv4 and IPv6 support
- PID usage to prevent race conditions
- Logging via journald, syslog, stdout and a logfile
- Local IP reporting for use on internal machines
- Caching of the last IP to reduce upstream impact
- Usable via cron, NetworkManager dispatcher, commandline, etc.

## Configuration

Copy the default configuration file to */etc/petrified.conf*, *~/.petrifiedrc* or
another location as desired. At a minimum the **DDNS_KEY** variable must be
configured for basic usage as root, all other variables are preconfigured for
system level (root) usage.

If implementing at the user level, be sure and set the various file location
options to a directory that is writable by the user; the default config is
fully documented and should make sense.

## Usage

Usage is simple - just run **petrified** and check your log(s).

To use a custom configuration file, the **-c (config)** parameter is supported;
note that using this option will *not* read the global/local configuration files
and only use the variables from this custom file.


