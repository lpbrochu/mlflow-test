FROM mlflow-base:1.0

ADD . /src
WORKDIR /src

RUN mlflow run . -e prepare

CMD mlflow run . -P alpha=0.4
