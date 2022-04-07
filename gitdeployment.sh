#!/bin/sh

case ${CI_COMMIT_REF_NAME} in 
   "colombia-test-release") 
        export BUCKETNAME=covide19checker-fe-colombia-test
        export DISTRIBUTIONID=E3J6TJPMZ8CC0F
        aws s3 sync ./www/ s3://covide19checker-fe-colombia-test/ --acl=public-read --delete
        aws cloudfront create-invalidation --distribution-id E3J6TJPMZ8CC0F --paths "/*"
      ;; 
   "colombia-production-release") 
        export BUCKETNAME=covide19checker-fe-colombia-production
        export DISTRIBUTIONID=E3PJFDMSJCMJ5
        aws s3 sync ./www/ s3://covide19checker-fe-colombia-production/ --acl=public-read --delete
        aws cloudfront create-invalidation --distribution-id E3PJFDMSJCMJ5 --paths "/*"
      ;; 
   *)  
      exit 1 # Command to come out of the program with status 1
      ;; 
esac 