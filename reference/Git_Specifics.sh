#!/bin/bash
# Git_Specifics.sh

# Remember Github login details
function remember_me() {
    git config --global credential.helper store
}
