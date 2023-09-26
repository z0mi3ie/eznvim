FROM ubuntu

WORKDIR /root

RUN apt update
RUN apt --assume-yes install git
RUN apt --assume-yes install curl
RUN apt --assume-yes install sudo
RUN apt --assume-yes install zsh
RUN apt --assume-yes install lua5.4

RUN curl -LJO https://go.dev/dl/go1.21.1.linux-amd64.tar.gz
RUN rm -rf /usr/local/go && tar -C /usr/local -xzf go1.21.1.linux-amd64.tar.gz
RUN echo "PATH=$PATH:/usr/local/go/bin:/root/go/bin" >> .bashrc

RUN mkdir -p .config/nvim
COPY config/nvim/init.vim .config/nvim/

COPY install.sh .
RUN sudo chmod 777 install.sh

CMD ./install.sh

