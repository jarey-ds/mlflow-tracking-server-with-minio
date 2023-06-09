FROM python:3.8

RUN pip install mlflow==2.4.0 && \
    pip install boto3==1.26.7

ENV PORT 5500

COPY run.sh /

ENTRYPOINT ["/run.sh"]
