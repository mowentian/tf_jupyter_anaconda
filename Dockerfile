from continuumio/anaconda

RUN conda config --add channels 'https://mirrors.tuna.tsinghua.edu.cn/anaconda/pkgs/free/'
RUN conda config --set show_channel_urls yes

RUN /opt/conda/bin/conda install jupyter -y --quiet
RUN /opt/conda/bin/conda install tensorflow -y --quiet

