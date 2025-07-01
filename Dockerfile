FROM python:3.10-slim-buster
WORKDIR /app
ADD . /app
RUN apt-get update && apt-get install -y git && rm -rf /var/lib/apt/lists/*
RUN git clone https://github.com/qwertuiop8899/Catalog-Translator.git /app
RUN pip install --no-cache-dir -r requirements.txt
EXPOSE 8080
CMD ["python", "main.py"]
