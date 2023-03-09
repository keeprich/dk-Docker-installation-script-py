FROM centos


RUN sudo yum remove docker docker-client docker-client-latest docker-common docker-latest docker-latest-logrotate docker-logrotate docker-engine   
RUN sudo yum install -y yum-utils
RUN sudo yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo -y
RUN sudo yum install docker-ce docker-ce-cli containerd.io -y
RUN sudo systemctl status docker
RUN sudo systemctl start docker
RUN sudo systemctl enable docker
