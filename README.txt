by Wyatt LeMaster

To run please make sure you change the permissions for the script. 
make sure you are logged into quay.io and open shift. 

to execute just type ./build

if the curl command fails it might be worth checking to make sure the mysql pod is running.
The script gives it a full minute to get set up, in my testing that is plenty of time.

You will need to execute the curl command on your own the script will go ahead and run the oc get route
but the user will need to execute the curl on their own.
