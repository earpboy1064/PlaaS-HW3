#!/bin/bash
 
 oc new-project wwl0004-paas-hw3
 oc create -f hw3Template.json
 oc process php-employees-persistent | oc create -f -
 
echo "sleeping for 1 minute to give pods time to get ready..."
sleep 10
echo " 50 remaining "
sleep 10
echo " 40 remaining "
sleep 10
echo " 30 remaining "
sleep 10
echo " 20 remaining "
sleep 10
echo " 10 remaining "
sleep 10
echo " done sleeping "
sleep 1


 oc expose svc php-employees

 oc get route
 
echo "please enter the above route into this curl command: "
echo "curl http://"
