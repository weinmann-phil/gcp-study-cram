#!/bin/bash
#
# Helper functions

###########################################################
# Function to standardize log outputs
#
# Arguments:
#   LEVEL:   A string representing the log level of a message
#   MESSAGE: Any logging message
# Returns:
#   Formatted string with the log message.
###########################################################
function log {
    LEVEL=$1
    MESSAGE=$@
    echo -e "[$(date +'%Y-%m-%dT%H:%M:%S%z')][$LEVEL]: $@" >&2
}

###########################################################
# Function to check for empty string as input
#
# Arguments:
#   INPUT: A string representing any kind of input.
# Returns:
#   None
###########################################################
function check_empty_string {
    INPUT=$1
    if [ -z "$INPUT" ]; then
        log "ERROR" "The input cannot be empty"
        exit 1
    fi
}
