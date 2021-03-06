# Test Nginx Client Certificate Verification

This script will generate a number of certs in order to simply test that nginx client certificate verification works as expected. Also serves as a bit of a pesonal reference for each of these steps.

* A Client Root CA
* A Client Intermediate CA Signbed by the root Client CA
* A Server Root CA
* A Server Cert signed by the Server Root CA
* A Client1 Cert signed by the Root Client CA
* A Client2 Cert signed by the Intermediate Client CA


### How To Run The Script

First, install all required gems by running ``bundle install`` -- these tests use the ruby colorize gem and Erb. If you already have them
installed then don't bother.

Almost all of the operations of the script is consolidated into one file, the *generate* file.

Run ``./generate`` - This will create a file called *test_client_verification_server.nginx* from the test_client_verification_server.nginx.erb. 

Expect all tests to fail on this first-run because nginx configuration is not built and symlinked.

Then create a symlink in /etc/nginx/sites-enabled to the newly generated conf file. If you do not have an /etc/nginx/sites-enabled, you may create one and add the following line to your /etc/nginx/nginx.conf:
```
include /etc/nginx/sites-enabled/*;
```

Lastly, run ``./generate`` *again* to run the tests, you will be prompted for your root password to restart nginx. 

The restart portion of this script, attempts to detect whether you're on systemd or upstart. 
I am on systemd, therefore this has only been tested on systemd. Apologies to those who are an another init.