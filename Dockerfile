FROM python:3.11-slim
WORKDIR /app
COPY sabahat.py .
CMD ["python", "sabahat.py"]
