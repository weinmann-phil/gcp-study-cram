#!/bin/bash
#
# This script enables a list of basic service APIs within the GCP catalogue

# Import
source "$(dirname "$0")/_helpers.sh"

SERVICE_APIS=(\
  "compute.googleapis.com" \
  "storage.googleapis.com" \
  "storage-api.googleapis.com" \
  "storage-component.googleapis.com" \
  "servicenetworking.googleapis.com" \
  "networkmanagement.googleapis.com" \
  "networksecurity.googleapis.com" \
  "networkservices.googleapis.com" \
  "networksubscriptions.googleapis.com" \
  "iam.googleapis.com"
)


##########################################################
# Function to check login status for GCP
#
# Arguments:
#   None
# Returns:
#   None
###########################################################
function check_google_login {
    log "INFO" "Check auth login status"
}

###########################################################
# Function to enable the listed service APIs
#
# Arguments
#   None
# Returns:
#   None
###########################################################
function enable_service_api {
    log "INFO" "Preparing to enable APIs"
    check_empty_string "${SERVICE_APIS[@]}"
    gcloud services enable "${SERVICE_APIS[@]}"
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
    # TESTS:
    #log "INFO" "${SERVICE_APIS[@]}"
    # Log in to GCP
    #check_google_login
    # Select the desired project
    #set_project
    # Enable the listed service APIs
    enable_service_api
    log "INFO" "Done"
}

time main

exit 0
