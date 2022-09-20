FROM python:3.7-alpine3.15
WORKDIR /app
COPY . ./weather/apps.py /app/
RUN pip install --no-cache-dir --upgrade  --trusted-host pypi.python.org -r requirements.txt


EXPOSE 80

CMD ["python", "app.py"]