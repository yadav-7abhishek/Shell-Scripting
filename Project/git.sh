#!/bin/bash

# function to initialize new git repository
function init_repository {
        git init
        echo "initializing the repository"
}

# function to add files in staging area
function add_file {
        git add .
        echo "Files added to staging area"
}

function commit_message {
        read -p "Enter your message of commit: " message
        git commit -m "$message"
        echo "Files committed successfully"
}

# function to push changes to github repository
function push_change {
        git push origin main
        echo "Changes pushed to the Github repository"
}

# Main function
function main {
        # initialize the new git repository
        init_repository

        # adding file in staging are
        add_file

        # committing changes with specific message
        commit_message

        # pushing changes in git repository
        push_change
}

main
