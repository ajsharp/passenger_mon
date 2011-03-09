## tl;dr ##

Simple rails process monitoring for passenger 3.

## Usage ##

passenger_mon needs to be run as root to properly get access to Passenger's
`passenger-memory-stats` output.

    # Check for out of control processes every 10 seconds
    sudo passenger_mon --interval=10


## Problem

Currently, Passenger 3 (and previous versions) don't generate pidfiles or the
application processes it spawns. This makes it very difficult to monitor these
processes with tools like monit and [god](http://github.com/mojombo/god). Further
compounding this problem is the lack of any sort of per process memory threshold
for passenger.


## Contributors

* Rick Bradley
* Alex Sharp
