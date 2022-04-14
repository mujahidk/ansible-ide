FROM python:3.9.2-buster

LABEL maintainer="Mujahid Khaleel <mujahidkhaleel@gmail.com>"

RUN apt update && \
   apt install -y wget git groff jq vim dos2unix tree tmux neofetch less zip

RUN groupadd -g 1003 ansible && \
   useradd -g ansible -u 1002 ansible && \
   mkdir -p /home/ansible && \
   chown ansible.ansible /home/ansible

RUN pip install ansible==3.0.0 boto botocore boto3

ENTRYPOINT ["bash"]
