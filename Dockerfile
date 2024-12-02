FROM python:3.12-slim

WORKDIR /app

COPY . .

RUN sed -i 's/localhost/0.0.0.0/' simulator/main.py

EXPOSE 8000

ENTRYPOINT ["sh", "-c", "python -u simulator/main.py"]
