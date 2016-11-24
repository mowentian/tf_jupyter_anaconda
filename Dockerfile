from continuumio/anaconda

RUN conda config --add channels 'https://mirrors.tuna.tsinghua.edu.cn/anaconda/pkgs/free/'
RUN conda config --set show_channel_urls yes

RUN /opt/conda/bin/conda install jupyter -y --quiet
RUN /opt/conda/bin/conda install tensorflow -y --quiet

RUN echo 'deb http://mirrors.aliyun.com/debian/ jessie main non-free contrib' > /etc/apt/sources.list
RUN echo 'deb http://mirrors.aliyun.com/debian/ jessie-proposed-updates main non-free contrib' >> /etc/apt/sources.list
RUN echo 'deb-src http://mirrors.aliyun.com/debian/ jessie main non-free contrib' >> /etc/apt/sources.list
RUN echo 'deb-src http://mirrors.aliyun.com/debian/ jessie-proposed-updates main non-free contrib' >> /etc/apt/sources.list

RUN apt-get update && apt-get install -y --no-install-recommends apt-utils
RUN apt-get install -y vim zsh curl git
RUN echo 'export TERM=xterm' >> ~/.zshrc
RUN echo 'syntax on' >> ~/.vimrc