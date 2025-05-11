FROM python:3.10-slim

WORKDIR /app

COPY . .

RUN pip install --upgrade pip

CMD ["python", "calculadora.py", "3", "4"]
