FROM mariadb:focal

RUN apt-get update && apt-get install -y \
    python3.9-dev \
    python3.9-venv \
    git \
    python3-pip

WORKDIR /app

COPY requirements.txt ./
RUN pip3 install --no-cache-dir -r requirements.txt

COPY initialize.sh ./
RUN chmod 755 ./initialize.sh
ENTRYPOINT ["/app/initialize.sh"]
