FROM python:2.7.16

LABEL maintainer="Mujahid Khaleel <mujahidkhaleel@gmail.com>"

ENV PATH="${PATH}:/root/.local/bin"

RUN apt update && \
   apt install -y groff jq vim dos2unix zsh tree tmux neofetch less && \
   pip install 'ansible==2.7.10' awscli boto botocore boto3 --user && \
   echo "Y" | sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" && \
   chsh -s $(which zsh)

RUN mkdir -p /root/.ssh/ && \
   mkdir -p /root/.aws

COPY .vimrc /root/
COPY .zshrc /root/
COPY .tmux.conf /root/

WORKDIR /root/

ENTRYPOINT ["zsh"]
