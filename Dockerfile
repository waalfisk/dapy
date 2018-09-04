FROM python:3-slim-stretch

LABEL maintainter="tinkercode@gmail.com"

#Python - cvxopt requirements
RUN apt-get update \
 && apt-get install -y --no-install-recommends libopenblas-dev libatlas-dev libblas-dev liblapack-dev \
 && update-alternatives --config libblas.so.3 \
 && update-alternatives --config liblapack.so.3 \
 && apt-get install -y --no-install-recommends libsuitesparse-dev libdsdp-dev libfftw3-dev libglpk-dev libgsl-dev \
 && apt-get clean && rm -rf /var/lib/apt/lists/*

#Python - install pypi packages
RUN pip install --upgrade pip \
 && pip install --no-cache-dir numpy scipy pandas \
 && pip install --no-cache-dir matplotlib ggplot \
 && pip install --no-cache-dir cvxopt \
 && pip install --no-cache-dir statsmodels \
 && pip install --no-cache-dir scikit-learn \
 && pip install --no-cache-dir beautifulsoup4 \
 && pip install --no-cache-dir unqlite \
 && pip install --no-cache-dir nose \
 && pip install --no-cache-dir oxyba \
 && pip install --no-cache-dir bpython \
 && rm -rf ~/.cache/pip
#EXPOSE 8888 #Is informational only!

#Python - Jupyter and its Extensions
RUN pip install --no-cache-dir jupyter \
 && pip install --no-cache-dir jupyter_nbextensions_configurator jupyter_contrib_nbextensions \
 && jupyter contrib nbextension install --user \
 && jupyter nbextensions_configurator enable --user \
 && rm -rf ~/.cache/pip

#create mount point
RUN mkdir -p /data

#Add Entrypoint
COPY script.sh /root/script.sh
ENTRYPOINT ["/bin/bash", "-c",  "/root/script.sh"]
