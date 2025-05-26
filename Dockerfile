FROM python:3.12.10-slim-bookworm

WORKDIR /app

COPY requirements.txt .
RUN pip install -r requirements.txt

COPY server.py .

EXPOSE 8080

CMD ["python3", "./server.py"]
