# AirWatch-Docker
Docker Image to run [aw-bulkdevices-script](https://github.com/MrTechGadget/aw-bulkdevices-script) in PowerShell Core container

Example to run with your config information

    docker run \
    -e "groupid=1234" \
    -e "host=host.domain.tld" \
    -e "awtenantcode=apikey" \
    -it --name airwatch-docker

When done simply type exit to stop the container.
Anytime you want to run scripts again simply type:
    docker start -i airwatch-docker
It will run with the same environment variables set above.

The latest changes to the [aw-bulkdevices-script](https://github.com/MrTechGadget/aw-bulkdevices-script) on GitHub will apply every time the container is started.
