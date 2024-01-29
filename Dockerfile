# Use the official Python image as a base image
FROM python:3.9.1

RUN apt-get install wget
RUN pip install pyarrow sqlalchemy psycopg2 pandas

WORKDIR /app
COPY ingest_data.py ingest_data.py

ENTRYPOINT ["python", "ingest_data.py"]
# FROM python:3.9.1

# RUN apt-get install wget
# RUN pip install pyarrow sqlalchemy psycopg2 pandas

# WORKDIR /app


# ENTRYPOINT ["bash"]
