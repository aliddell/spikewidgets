FROM magland/jp_proxy_widget:20180831

### Install conda packages
RUN conda install python=3.6

### Add this repo
ADD . /working/spikewidgets
WORKDIR /working/spikewidgets
RUN pip install .

### spikeinterface (jeremy branch)
RUN mkdir -p /working
WORKDIR /working
RUN git clone https://github.com/colehurwitz31/spikeinterface
WORKDIR /working/spikeinterface
RUN git checkout jeremy
RUN pip install .

WORKDIR /working/spikewidgets


