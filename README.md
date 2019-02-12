# AirWatch-Docker
Docker Image to run aw-bulkdevices-script in PowerShell Core container

Example to run with your config information

docker run \
-e "groupid=1234" \
-e "host=host.domain.tld" \
-e "awtenantcode=apikey" \
-it --name airwatch-docker
