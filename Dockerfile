FROM ubuntu:latest
ENV VERSION=1.2.0
RUN apt-get update && apt-get install -y python3 vim zip unzip
RUN mkdir -p /root/jenkins/tools/io.jenkins.plugins.jfrog.JfrogInstallation/jfrog-cli-latest/
COPY ./zip_job.py /tmp/zip_job.py
copy ./jf /root/jenkins/tools/io.jenkins.plugins.jfrog.JfrogInstallation/jfrog-cli-latest/jf
RUN chmod 744 /root/jenkins/tools/io.jenkins.plugins.jfrog.JfrogInstallation/jfrog-cli-latest/jf
CMD ["/bin/bash", "-c", "echo $(uname -a) && ls /tmp/zip_job.py"]
