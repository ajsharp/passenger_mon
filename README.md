## tl;dr ##

Simple rails process monitoring for passenger 3.

## Usage ##

**IMPORTANT:** passenger_mon needs to be run as root to properly get access to Passenger's
`passenger-memory-stats` output.

    # Check for out of control processes every 10 seconds
    sudo passenger_mon --interval=10

    # Check every 30 seconds for processes exceeding 500mb of memory
    sudo passenger_mon --interval=30 --memory=500

    # Specify a pidfile
    sudo passenger_mon --pid=tmp/passenger_mon.pid

    # Specify a logfile
    sudo passenger_mon --log=log/passenger_mon.log

## Description ##

A primary aim of this script is to have a very tiny memory footprint itself.
It is a very lightweight script that is intended to be run by root as a daemon.

It works by running in a continuous loop, sleeping for the specified interval,
and parsing the output of `passenger-memory-stats` to find processes that have
crossed the specified memory threshold (the default is 400 MB).

## Problem ##

Currently, Passenger 3 (and previous versions) don't generate pidfiles or the
application processes it spawns. This makes it very difficult to monitor these
processes with tools like monit and [god](http://github.com/mojombo/god). Further
compounding this problem is the lack of any sort of per process memory threshold
for passenger.

## Contributors

* Rick Bradley
* Alex Sharp
