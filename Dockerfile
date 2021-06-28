FROM mcr.microsoft.com/powershell
RUN apt-get update
RUN apt-get install git -y
RUN git clone https://github.com/MrTechGadget/aw-bulkdevices-script.git
ENV groupid=1234
ENV awtenantcode="apikey"
ENV host="host.domain.tld"

COPY start.sh /
COPY buildConfig.sh /
RUN chmod +x /start.sh /buildConfig.sh
RUN chmod -R ugo+rw /aw-bulkdevices-script
RUN ls -la
RUN /start.sh
RUN chmod -R ugo+rw /aw-bulkdevices-script
RUN ls -la aw-bulkdevices-script

ENTRYPOINT /start.sh
