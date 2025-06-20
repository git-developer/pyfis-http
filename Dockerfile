# syntax=docker/dockerfile:1
FROM python:3-alpine
RUN apk add py3-pip tk
RUN pip install pyfis
COPY src/ /opt/pyfis-http/
ENTRYPOINT [ "python3" ]
CMD [ "/opt/pyfis-http/pyfis-http" ]
