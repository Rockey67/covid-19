#!/bin/sh

case ${CI_COMMIT_REF_NAME} in 
"colombia-test-release") 
       echo 'CI for branch...'. ${CI_COMMIT_REF_NAME}
      ;; 
   "colombia-production-release") 
        echo 'CI for branch...'. ${CI_COMMIT_REF_NAME}
      ;; 
   *)  
      exit 1 # Command to come out of the program with status 1
      ;; 
esac 