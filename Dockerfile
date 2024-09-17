FROM python:3.9-slim

WORKDIR /application

COPY requirements.txt /application/

RUN pip install --upgrade pip \
    && pip install -r requirements.txt

COPY . /application

CMD ["uvicorn", "app:app", "--host", "0.0.0.0", "--port", "8080"]
