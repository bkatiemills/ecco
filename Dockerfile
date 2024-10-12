FROM python:3.11

RUN apt-get update
RUN apt-get install -y nano libproj-dev libgeos-dev 
RUN pip install jupyter
RUN pip install ecco_v4_py==1.6.0 tqdm==4.66.2

WORKDIR /books
CMD jupyter notebook --allow-root --ip=0.0.0.0
