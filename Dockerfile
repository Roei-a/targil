FROM ubuntu:latest
ENV VERSION=1.2.0
RUN apt-get update && apt-get install -y python3 vim zip unzip
COPY ./zip_job.py /tmp/zip_job.py
CMD ["/bin/bash", "-c", "echo $(uname -a) && ls /tmp/zip_job.py"]
