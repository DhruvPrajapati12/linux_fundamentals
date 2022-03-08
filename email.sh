#!/bin/nash

LOGGER=/usr/bin/logger
FILE=/home/dhruv/hwlogfile

AMESSAGE="Warning hardware errors found on $(hostname) @ $(date). see log file for the details /var/log/mcelog."

OK_MESS="OK: No hardware error found."
WARN_MESS="ERROR: Hardware error found."

error_lof
