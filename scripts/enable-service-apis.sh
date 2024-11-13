#!/bin/bash
#
# This script enables a list of basic service APIs within the GCP catalogue

# Import
source "$(dirname "$0")/_helpers.sh"

##########################################################
# Function to check login status for GCP
#
# Arguments:
#   None
# Returns:
#   None
###########################################################
function check_google_login {
    # Test 
}

###########################################################
# Main function
#
# Arguments:
#   None.
# Returns:
#   None
###########################################################
function main {
    # Log in to GCP
    check_google_login
    # Select the desired project
    #set_project
    # Enable the listed service APIs
    #enable_service_api
    log "INFO" "Done"
}

time main

exit 0
