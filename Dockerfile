FROM ubuntu

WORKDIR /root

RUN apt update
RUN apt --assume-yes install \
        git \
        curl \
        sudo \
        zsh \
        lua5.4 \
        unzip

RUN curl -LJO https://github.com/neovim/neovim/releases/download/stable/nvim-linux64.tar.gz

RUN tar xzf nvim-linux64.tar.gz -C /opt
RUN ln -s /opt/nvim-linux64/bin/nvim /usr/local/bin/nvim

RUN mkdir -p .config/nvim

#RUN curl -LJO https://go.dev/dl/go1.21.1.linux-amd64.tar.gz
#RUN rm -rf /usr/local/go && tar -C /usr/local -xzf go1.21.1.linux-amd64.tar.gz
#RUN echo "PATH=$PATH:/usr/local/go/bin:/root/go/bin" >> .bashrc

#RUN mkdir -p .config/nvim
#COPY config/nvim/init.vim .config/nvim/

#COPY install.sh .
#RUN sudo chmod 777 install.sh

#CMD ./install.sh

