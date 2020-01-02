FROM python:3.6.9

COPY app/requirements.txt /
RUN pip3 install -r /requirements.txt

RUN mkdir -p /build
WORKDIR /build

COPY app/ /build

EXPOSE 8001

ENV C_FORCE_ROOT="true"

CMD ["python", "api.py"]

# the below line for debug docker
# CMD ["bash", "-c", "while true; do echo; sleep 2; done"]
