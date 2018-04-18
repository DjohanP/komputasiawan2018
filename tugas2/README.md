## Soal Sesilab Nginx

Buatlah sistem load balancing dengan 1 load balancer(nginx dan 2 worker(apache2), terapkan algoritma load balancing round-robin, least-connected, dan ip-hash.

Soal :

1. Buatlah Vagrantfile sekaligus provisioning-nya untuk menyelesaikan kasus.<br>
Jawaban : ->
## Directory
- Load Balancer
  - Box: ubuntu/xenial64
  - IP: 192.168.0.2
  - Vagrantfile
  - Provision (nginx.sh)
  - Algorithm
    - ip_hash
    - least_conn
    - round_robin   
- Workers
  - Box: ubuntu/xenial64
  - IP:
    - 192.168.0.3
    - 192.168.0.4
  - Vagrantfile
    - Worker 1
    - Worker 2
  - Provision (apache.sh)
2. Analisa apa perbedaan antara ketiga algoritma tersebut.<br>
Jawaban :<br>
    ### Round Robin
    Membagi beban kerja secara berurutan dari satu server ke server lainnya. Konsep dasar dari algoritma ini adalah time sharing, yaitu membagikan beban kerja sesuai dengan antrian..

    ### Least Connection
    Membagi beban kerja berdasarkan banyaknya koneksi yang sedang dilayani oleh sebuah server yang aktif. Algoritma penjadwalan ini termasuk dalam penjadwalan dinamik, dimana memerlukan perhitungan koneksi yang aktif untuk masing-masing real server. Algoritma ini baik digunakan untuk jaringan internet yang memerlukan throughput maksimal. Metode penjadwalan ini juga baik digunakan untuk melancarkan pendistribusian ketika request yang datang banyak.

    ### IP Hash
    Menggunakan IP source dan destination dari klien dan server untuk men-generate hash key menjadi kode unik. Kode ini digunakan untuk mengalokasikan klien ke server tertentu. Metode ini dapat memastikan bahwa klien akan terhubung dengan server yang sama yang sebelumnya sudah terhubung. Metode ini sangat berguna untuk klien yang harus terhubung ke session yang masih aktif setelah terjadi diskoneksi atau rekoneksi.


3. Biasanya pada saat membuat website, data user yang sedang login disimpan pada session. Sesision secara default tersimpan pada memory pada sebuah host. Bagaimana cara mengatasi masalah session ketika kita melakukan load balancing?<br>
Jawaban : <br>
    ->
    Ada konfigurasi yang namanya sticky session. Jika menggunakan konfigurasi ini, pada hit pertama si user akan diberikan penanda, biasanya berbentuk cookie. 



### Petunjuk

1. Lakukan soal nomor 1 dan dokumentasikan bagaimana cara setupnya pada laporan markdown.
2. Untuk nomor 2 dan 3 merupakan analisa terhadap suatu masalah, jawablah pertanyaan diatas dan tulis pada laporan.