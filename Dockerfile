FROM python:3.11-slim

WORKDIR /app


COPY requirements.txt .


RUN pip install --no-cache-dir -r requirements.txt


COPY . .


EXPOSE 3002


CMD ["gunicorn", "setup.wsgi:application", "--bind", "0.0.0.0:3002"]
