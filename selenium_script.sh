#!/bin/bash
#maven cmd to run the automated script
echo "Going to run the automated script"
        cd ~/webdriver-tests
        mvn clean test
#command to aws configure sync
echo "Have run the script and now going to sync the report"
        cd ~/webdriver-tests/
        ls -la
        sleep 3
        echo "present directory is" $(pwd)
        aws s3 sync reports/ s3://reports-for-selenium