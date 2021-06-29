FROM python:3.6-alpine
RUN apk -U upgrade
RUN apk add --no-cache git libffi-dev build-base openssl-dev musl-dev python3-dev cargo
WORKDIR /usr/src/app
RUN pip install --upgrade pip
COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

COPY initialize.sh /usr/src/app/
RUN chmod 755 /usr/src/app/initialize.sh
ENTRYPOINT ["sh","/usr/src/app/initialize.sh"]
