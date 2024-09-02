FROM python:3.12.5-bookworm
WORKDIR /app
COPY . /app/
EXPOSE 5000
RUN pip install -r requirements.txt
CMD ["python", "app.py"]
