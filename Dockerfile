FROM continuumio/anaconda

RUN mkdir /code
WORKDIR /code

RUN apt-get update && apt-get install -yy \
  libgomp1

RUN conda config --add channels synthicity
RUN conda install -y \
  brewer2mpl \
  matplotlib \
  numpy \
  pandana \
  pandas \
  pytables
