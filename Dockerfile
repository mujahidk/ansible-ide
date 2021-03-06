FROM python:3.7.10-stretch

LABEL maintainer="Mujahid Khaleel <mujahidkhaleel@gmail.com>"

ENV PATH="${PATH}:/root/.local/bin"

RUN apt update && \
   apt install -y wget git groff jq vim dos2unix tree tmux neofetch less && \
   pip install ansible awscli boto botocore boto3 --user && \
   git clone https://github.com/VundleVim/Vundle.vim.git /root/.vim/bundle/Vundle.vim

RUN mkdir -p /root/.ssh/ && \
   mkdir -p /root/.aws

COPY .vimrc /root/
COPY .tmux.conf /root/

WORKDIR /root/

ENTRYPOINT ["bash"]
