FROM python:3

WORKDIR /usr/src/app

RUN pip install --no-cache-dir pyuwsgi

COPY main.py requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

EXPOSE 8000

CMD ["uwsgi" , "--http", "127.0.0.1:8000", "--master", "-p", "4", "-w", "main:app"]
