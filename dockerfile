
FROM continuumio/anaconda3

ADD . $HOME/

RUN conda env create -n python3_nc --file environ.yml

SHELL ["conda", "run", "-n", "python3_nc", "/bin/bash", "-c"]


ENTRYPOINT ["conda", "run", "--no-capture-output", "-n", "python3_nc", "python", "makePickle.py"]


