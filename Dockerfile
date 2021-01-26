FROM python:3.6.10-slim-stretch

LABEL maintainer="Mujahid Khaleel <mujahidkhaleel@gmail.com>"

ENV PATH="${PATH}:/root/.local/bin"

RUN apt update && \
   apt install -y wget git groff jq neovim dos2unix fish tree tmux neofetch less && \
   pip install ansible awscli boto botocore boto3 --user && \
   chsh -s $(which fish)

RUN mkdir -p /root/.ssh/ && \
   mkdir -p /root/.aws

COPY .vimrc /root/
COPY .tmux.conf /root/

WORKDIR /root/

ENTRYPOINT ["fish"]
