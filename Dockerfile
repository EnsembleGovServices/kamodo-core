# docker build . -t dezeeuw/kamodo 

FROM continuumio/miniconda3:latest
LABEL maintainer "Darren De Zeeuw <darrens@umich.edu>"

RUN conda install jupyter
RUN pip install antlr4-python3-runtime
RUN pip install kamodo

RUN git clone https://github.com/nasa/Kamodo.git


# Add Tini. Tini operates as a process subreaper for jupyter. This prevents kernel crashes.
ENV TINI_VERSION v0.6.0
ADD https://github.com/krallin/tini/releases/download/${TINI_VERSION}/tini /usr/bin/tini
RUN chmod +x /usr/bin/tini
ENTRYPOINT ["/usr/bin/tini", "--"]

WORKDIR Kamodo/docs/notebooks

CMD ["jupyter", "notebook", "--port=8888", "--no-browser", "--ip=0.0.0.0", "--allow-root"]

#####
# For Jupyter notebook interaction, use:
#	docker run -p 8888:8888 dezeeuw/kamodo
# For command line interaction, use:
#	docker run -it dezeeuw/kamodo /bin/bash

