FROM nvidia/cuda:9.0-devel

RUN apt-get update -y && \
  apt-get install -y \
  python python-dev python-pip git wget apt-transport-https && \
  rm -rf /var/lib/apt/lists/*

## Install mkl
RUN wget https://apt.repos.intel.com/setup/intelproducts.list -O /etc/apt/sources.list.d/intelproducts.list && \
  apt-get update -y || echo "warning" && \
  apt-get install intel-mkl -y --allow-unauthenticated && \
  rm -rf /var/lib/apt/lists/*

## Compile neon
RUN pip install virtualenv ipython==5.0 jupyter matplotlib s3contents
RUN git clone https://github.com/NervanaSystems/neon.git
RUN cd neon && make sysinstall
RUN mkdir -p /root/.jupyter/
RUN mkdir -p /notebooks
COPY jupyter_notebook_config.py /root/.jupyter/jupyter_notebook_config.py
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT /entrypoint.sh
