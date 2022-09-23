FROM python:3.9.2-buster

LABEL maintainer="Mujahid Khaleel <mujahidkhaleel@gmail.com>"

RUN apt update && \
   apt install -y wget git groff jq vim dos2unix tree tmux neofetch less zip && \
   curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip" && \
   unzip awscliv2.zip && ./aws/install

RUN pip install ansible==5.6.0 boto botocore boto3

ENTRYPOINT ["bash"]
