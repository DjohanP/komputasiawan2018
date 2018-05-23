# Docker

![](https://upload.wikimedia.org/wikipedia/commons/thumb/4/4e/Docker_%28container_engine%29_logo.svg/500px-Docker_%28container_engine%29_logo.svg.png)

## Tugas

	[Soal 1] Configure Dockerfile

1. Buat Dockerfile

	SOLUSI

```bash
nano Dockerfile
FROM ubuntu:16.04
RUN apt-get update && apt-get -y install python-pip libmysqlclient-dev
RUN pip install --upgrade pip
ENV DB_HOST=192.168.0.24 \
    DB_NAME=reservasi \
    DB_USERNAME=userawan \
    DB_PASSWORD=buayakecil
COPY reservasi /reservasi
WORKDIR /reservasi
RUN pip install -r requirements.txt
ENTRYPOINT ["python"]
CMD ["server.py"]
```
2. Lakukan build docker reservasi

SOLUSI
```bash
docker build -t reservasi .
```
![Docker Build](assets/images.jpg "Docker-Build")

	[Soal 2] Buat 3 buah worker dengan menggunakan image yang dibuat pada soal 1.
![Docker Worker](assets/worker.png "Docker-Worker")

	[Soal 3] Load Balancer buat Worker.
![Docker Load Balancer](assets/load_balancer.png "Docker-Load-Balancer")

	[Soal 4] Configure database MySQL.

![Docker Database](assets/db.png "Docker-Datbase")

	[HASIL] Jalankan "docker-compose up"
![Docker Up](assets/compose-up.png "Docker-Up")

	Hasilnya

![Docker Hasil](assets/final.png "Docker-Hasil")