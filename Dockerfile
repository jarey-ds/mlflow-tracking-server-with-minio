FROM python:3.7

RUN pip install mlflow==1.30.0 && \
    pip install boto3==1.26.7

ENV PORT 5500

COPY run.sh /

ENTRYPOINT ["/run.sh"]
